# JspAndServlets

HttpServlet requestObject will be generated for every browser request and will be deleted after the response has been returned
and will be accessable only withing the method being called

HttpSession sessionObject will be generated for every user and it will be shared accross the http requests and for every
servlets

ServletContext contextObject will be generated whenever server starts and will be share acress the application

Our Servlet Class extends HttpSrvlet and HttpServlet extends GenericServlet

1->init(ServletCongig config) is defind in GenericServlet class and this method runs will be called by container only
once when any method of the Servlet Class is being called first time after server starts

2->service(HttpServletRequest req, HttpServletResponse res) is defined in HttpServlet Class and will be called every time a request comes in, actually Container never calls doGet() or doPost(), instead it calls 
service(HttpServletRequest req, HttpServletResponse res) then service method method checks the method GET, POST etc
in request object and accordingly calls the method

Note: point 1 and 2 can be approved from HttpServlet source code


JSP::=>


jsp scriptlet tag <% %>
the code written inside scriptlet tag goes inside service method in servlet


jsp expression tag <%= %> 
the code written inside scriptlet tag ALSO goes inside service method in servlet and it can access
all the variables inside and outside the service method BUT inside jsp expression we can put only an expression 
or a method(should be returning some value)


jsp declaration tag <%! >
the code written inside scriptlet tag goes outside service method in servlet thats why we can declare variables 
or new methods inside this tag and code inside <% %> and <%= %> can access the code inside <%! %>

jsp implicit Objects=> are created during translation phase (jsp to servlet) and they can be accessed from the
scriptlet tags that goes inside service method

there are 9 implicit objects
out, request, response, config, application, session, pageContext, page, exception

config: In JSP, config is an implicit object of type ServletConfig. This object can be used to get initialization parameter for a particular JSP page. The config object is created by the web container for each jsp page.


pageContext: The pageContext object can be used to set,get or remove attribute from one of the following scopes:
page
request
session
application
In JSP, page scope is the default scope


