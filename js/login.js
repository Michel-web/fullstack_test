$(document).ready(function() {

    $('#login-form').on('submit', function(e) {
        e.preventDefault();
        var data = $(this).serializeArray();
        var fd = {};
        data.forEach(function(item) {
           fd[item.name] = item.value;
        });

        $.ajax({
            url: './api/auth.php',
            data: fd,
            type: 'POST',
            dataType: 'json',
            success: function(res) {
                if (res.result == 'ok') {
                        
                    location.href="./users.html";

                    if (fd['remember']) {
                        localStorage.setItem('kc_login', JSON.stringify(fd));
                    }
                } else {
                    alert(res.msg);
                }
            },
            error: function(err) {
                console.error(err);
            }
        });
    });

    var rmLogin = localStorage.getItem('kc_login');
    if (rmLogin) {
        rmLogin = JSON.parse(rmLogin);
        $('#username').val(rmLogin.username);
        $('#password').val(rmLogin.password);
    }
});
