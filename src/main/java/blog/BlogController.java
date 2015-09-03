package blog;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoDatabase;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import spark.*;
import spark.route.RouteMatch;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

import static javax.swing.UIManager.get;
import static spark.SparkBase.port;

/**
 * Created by gerardo on 02/09/15.
 */
public class BlogController {
    private final Configuration conf;
   // private final BlogPostDAO blogPostDAO;
   //private final UserDAO userDAO;
   // private final SessionDAO sessionDAO;
    public static void main(String[] args)throws IOException{

        if(args.length==0){
            new BlogController("mongodb://");
        }else{
            new BlogController(args[0]);
        }
    }
    private static int getHerokuAssignedPort() {

        ProcessBuilder processBuilder = new ProcessBuilder();

        if(processBuilder.environment().get("PORT")!= null){
            return Integer.parseInt(processBuilder.environment().get("PORT"));
        }
        return 4567;

    }

    public BlogController(String mongoURIString)throws IOException{
        final MongoClient mongoClient = new MongoClient(new MongoClientURI(mongoURIString));
        final MongoDatabase blogDataBase = mongoClient.getDatabase("blog");

        //DAOS

        conf = createFreemarkerConfiguration();
            port(getHerokuAssignedPort());
        initializeRoutes();

    }

    abstract class FreemarkerBasedRoute implements Route {
        final Template template;
        final String path;

        /**
         * Constructor
         *
         * @param path the route path which is used for matching. e.g /hello, /users/:name
         */
        protected FreemarkerBasedRoute(final String path, final String templateName)throws IOException{
            this.path=path;
            template = conf.getTemplate(templateName);
        }
        @Override
        public Object handle(Request request, Response response){
            StringWriter writer = new StringWriter();
            try{
                doHandle(request,response,writer);
            }catch (Exception e){
                e.printStackTrace();
                response.redirect("/internal_error");
            }
            return writer;
        }
        protected abstract void doHandle(final Request request, final Response response, final Writer writer)
            throws IOException, TemplateException;
    }

    private void initializeRoutes()throws IOException{
        //Este es la pagina inicial del blog
        get(new FreemarkerBasedRoute("/", "welcome.ftl"){
          @Override
        public void doHandle(Request request,Response response, Writer writer)throws IOException, TemplateException{

           }
        });
    }


    private Configuration createFreemarkerConfiguration(){
        Configuration retVal = new Configuration();
        retVal.setClassForTemplateLoading(BlogController.class,"/freemarker");
        return retVal;
    }

}
