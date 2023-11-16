package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PostDAO;
import domain.Post;

@WebServlet("/LoginBB/item/post")
public class PostServlet extends HttpServlet {
	
	
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String message = request.getParameter("message");

        Post post = new Post();
        post.setUsername(username);
        post.setMessage(message);

        PostDAO postDao = new PostDAO();
        System.out.println(postDao);
        postDao.addPost(post);

        request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);
    }
}
