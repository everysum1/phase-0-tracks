**What are some common HTTP status codes?**

Some common HTTP status codes are 200 OK, 201 Created, 204 No Content, 304 Not Modified, 400 Bad Request, 401 Unauthorized, 403 Forbidden, 404 Not Found and 500 Internal Server Error.  Any HTTP status code that is in a 2xx format is communicating a 'Success' message.  Furthermore, those with 3xx formats are communicating 'Redirection', those with 4xx are communicating a 'Client Error' and those with 5xx are conveying a 'Server Error'.

**What is the difference between a GET request and a POST request? When might each be used?**

A GET request is one that REQUESTS data to be sent from a specified source for later rendering on the browser, while a POST request is one that SUBMITS data to be processed.  GET requests are commonly used to view web pages in your browser.  

Every time you type in an url to your browser and press enter, you are submitting a GET request to get that web page from a server.  Whenever you submit a form online, you are making a POST request and providing the information you just filled out on the form.  This information will usually be stored on a browser later so it can be retrieved when it is needed, like the next time you try to sgn in if the form was to sign up as a user of a certain website, for example. 


**Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?**

An HTTP cookie (OR web cookie, browser cookie, Internet cookie) is a small piece of data that is stored in the user's browser while the user is accessing a site and it was designed to be a useful way for browsers to remember stateful information since each page of a website is independent and the website itself cannot remember the user from page to page.  The cookie therefore provides the application information about the user so that it can remember things like what items you have in your shopping cart while you're shopping, who the user is (probably remembered by your email or username that you use to log in) so that the app can display related or targeted content, or especially to access their own profile or user-specific pages.  