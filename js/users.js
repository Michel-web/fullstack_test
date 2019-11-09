
$(document).ready(function() {
  var _page = 0;
  var _$table = $('.users-list');
  var _$pagePrev = $('.pagination-prev');
  var _$pageNext = $('.pagination-next');
  var _$pageNumList = $('.pagination-numbers');
  var _numPerPage = 5;
  var _data = [];

  $.ajax({
    url: './api/users.php',
    type: 'get',
    dataType: 'json',
    success: function(data) {
      if (data.result == 'error') {
        location.href="./login.html";
      } else if (data.result == 'ok') {
        _data = data['data'];
        updateTable();
      }
    },
    error: function(err) {
      console.log(err);
    }
  });

  _$pagePrev.click(function() {
    _page--;
    updateTable();
  });

  _$pageNext.click(function() {
    _page++;
    updateTable();
  });

  function addPageNumEvent() {
    $('.page-num:not(.active)').click(function() {
      _page = parseInt($(this).data('page'));
      updateTable();
    });
  }

  function updateTable() {
    $table = $('.users-list');
    var pages = Math.ceil(_data.length / _numPerPage);
  
    _page = Math.max(Math.min(_page, pages), 0);
  
    if (_page <= 0) _$pagePrev.hide();
    else _$pagePrev.show();
  
    if (_page >= pages - 1) _$pageNext.hide();
    else _$pageNext.show();
  
    var startItem = _page * _numPerPage;
    var endItem = Math.min(_data.length - 1, (_page + 1) * _numPerPage - 1);

    var startPageNum = Math.max(0, _page - 2);
    var endPageNum = Math.min(_page + 2, pages - 1);

    _$pageNumList.empty();
    for (var p = startPageNum; p <= endPageNum; p++) {
      _$pageNumList.append($('<span data-page="' + p + '" class="page-num ' + (_page == p? 'active' : '') + '" >' + (p + 1) + '</span>'));
    }

    addPageNumEvent();
  
    _$table.empty();
    for (var i = startItem; i <= endItem; i++ ) {
      _$table.append($('<div class="item" ><img src="./assets/images/check_circle.png" height="36px"></i><span class="name pl-3" >' + _data[i].name + '</span><span class="group pl-3" >' + _data[i]['group'] + '</span></div>'));
    }
  }

  $('.btn-logout').click(function() {
    $.ajax({
      url: './api/auth.php',
      type: 'delete',
      dataType: 'json',
      success: function(res) {
        if (res.result == 'ok') {
          location.href = './login.html';
        } else {
          alert(res.msg);
        }
      },
      error: function() {
        alert('Something went wrong!');
      }
    });
  });

});
