import blog.BlogController;

import java.io.IOException;

/**
 * Created by gerardo on 03/09/15.
 */
public class Main {
    public static void main(String[] args) throws IOException {

        if(args.length==0){
            new BlogController("mongodb://gecordero:botHACK.13@ds055742.mongolab.com:55742/heroku_r763m401t");
        }else{
            new BlogController(args[0]);
        }
    }
}
