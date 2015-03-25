!(function() {
  "use strict";
  var course = '',
    $rows = '#filtered>tbody>tr',
    $tab = '#tab a';

  function validateCourse(self) {
    return !!course && self.data('year') !== course
  }

  function filterTable() {
    var val = $.trim($(this).val()).toLowerCase();
    $($rows).show().filter(function() {
      var self = $(this);
      return !~self.text().toLowerCase().indexOf(val) || validateCourse(self);
    }).hide();
  }

  function setProp(target, map) {
    for (var i in map) {
      target.find(i).val(map[i]);
    }
  }

  $($tab).click(function(e) {
    e.preventDefault();
    $(this).tab('show');
    course = +$(this).data('id');
    $('#search').keyup();
  });

  $('#search').keyup(filterTable);


  $('#mGroupEdit').on('show.bs.modal', function(event) {
    var id = +$(event.relatedTarget).data('id'),
      modal = $(this);
    $.get('/api/groups/' + id, function(data) {
      setProp(modal, {
        '#group-id': data.id,
        '#group-name': data.name,
        '#spesial-id': data.id_specialty,
        '#changes-id': data.id_educational_changes,
        '#yearof': data.year_of_beginning,
        '#studentnum': data.students_count
      });
    });
  });

})();