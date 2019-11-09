# Full-stack test


## Installation

Please copy all files into apache root directory.

Install mysql service and restore the sql dump file `test_db.sql`.
Edit the mysql connection info in `/api/database.php`. 

e.g.
```
    static $dbhost = 'localhost';
    static $dbuser = 'root';
    static $dbpassword = '';
    static $dbname = 'test_db';
```

Now you can test the web pages by using this URL: `http://localhost/login.html`.

### Demo credentials

username: `kc_test001`

password: `pwd123`
