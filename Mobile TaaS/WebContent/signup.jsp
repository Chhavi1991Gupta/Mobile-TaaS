<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Login - CodePen</title>

    <link rel="stylesheet" href="C:/Users/Administrator/Desktop/login (1)/css/style.css" media="screen" type="text/css" />

</head>

<body>

  <html lang="en-US">
  <head>

    <meta charset="utf-8">

    <title>Login</title>

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">

    <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
 <![endif]-->

  </head>

  <body>

    <div class="container">

      <div id="login">


        <form action="UserDao" method ="Post">

			
          <fieldset class="clearfix">

            <p><span class="fontawesome-user"></span><input type="text" value="Username" name="Username" onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Username" -->
            <p><span class="fontawesome-lock"></span><input type="password"  value="Password" name="Password" onBlur="if(this.value == '') this.value = 'Password'" onFocus="if(this.value == 'Password') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Password" -->
            <p><span class="fontawesome-user"></span><input type="text" value="Email" name="Email" onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Username" -->
          	<p><span class="fontawesome-user"></span><input type="text" value="Phone No. " name="phone" onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Username" -->
            <p><span class="fontawesome-user"></span><input type="text" value="Address" name="Address" onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Username" -->
             <p><span class="fontawesome-user"></span><input type="text" value="Zipcode" name="Zipcode" onBlur="if(this.value == '') this.value = 'Username'" onFocus="if(this.value == 'Username') this.value = ''" required></p> <!-- JS because of IE support; better: placeholder="Username" -->
             
            <p><input type="submit" value="Submit"></p>

          </fieldset>

        </form>

     
      </div> <!-- end login -->

    </div>

  </body>
</html>
