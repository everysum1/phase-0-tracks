**What are some of the key design philosophies of the Linux operating system?**

Linux was developed from the UNIX operating system, whose entire philosophy revolved around the idea that the user knows what they are doing, in juxtaposition to Windows and Mac, who think the user should be shielded from the computer's lower level functions in order to keep them "out of trouble". 

Linux therefore allows you to do anything because it assumes you know what you are doing and allows you to do anything you tell it to.  It makes its terminal readily available and easy to access, gives its users complete control to do with it what they like without checking if they really meant to do that before executing its commands

**In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?**

A VPS is essentially a virtual machine that has a copy of an OS installed into it and lets you run any software on that machine that can run on that particular OS.  People then use software they install on that virtual machine in order to serve up web pages to the network they are on. 

One of the great things about a VPN is that it is cheaper than using a full dedicated hosting plan to host your website or application.  Because it is only a partition of a real physical server that has its own OS and virtual environment, it not only costs less than dedicated hosting, it also give you more control than shared hosting by allowing you to control what happens in your virtual environment, irrespective of the other virtual private servers running in the same physical server.  
VPS is also very easy to scale because you can very easily add resources in order to accomodate your growing traffic and as such has become a very popular solution to internet builders.  You can also have more control over the hosting environment and its allocated resources that can sometimes be an issue on shared hosting plans when the web host oversells its space.  


**Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?**

This is a security issue and a permission issue primarily.  The root user has access to the whole machine and so it is simply best practice to use your own username and account to log in so you are restricted from writing to the rest of the system as well as modifying system files without gaining root permissions.  If your machine's security were to be compromised in some way, an attack on it could potentially write to the files in your user's folder, BUT running on root this same attack can have access to write to all the files in your system, read files in other user accounts, and replace system commands with compromised ones.  

Logging in as a limited user, this attack would only have access to your home folder as opposed to your entire system.  Similarly, a buggy or malicious application running on your system would only have access to the user's home directory, not the root directory (and therefore the entire system) and would thereby limit the damage caused by this software.  