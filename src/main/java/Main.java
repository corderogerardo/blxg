/**
 * Created by gerardo on 01/09/15.
 */
import static spark.Spark.*;

public class Main {
    public static void main(String[] args) {

        port(getHerokuAssignedPort());
        get("/", (req, res) -> "Hello World");

    }

    private static int getHerokuAssignedPort() {

        ProcessBuilder processBuilder = new ProcessBuilder();

        if(processBuilder.environment().get("PORT")!= null){
            return Integer.parseInt(processBuilder.environment().get("PORT"));
        }
        return 4567;

    }
}