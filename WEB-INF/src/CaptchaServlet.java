import nl.captcha.*;
import nl.captcha.servlet.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.*;

@WebServlet("/captcha")
public class CaptchaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Captcha captcha = new Captcha.Builder(200, 50)
                .addText()
                .addBackground()
                .addNoise()
                .build();

        // Store the text in the session
        request.getSession().setAttribute("captcha", captcha.getAnswer());

        // Write the image to the response
        CaptchaServletUtil.writeImage(response, captcha.getImage());
    }
}
