<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    % setdefault('title', '')
    <title>{{title}} | {{subsection.name}}</title>

    <link href="/static/bootstrap.min.css" rel="stylesheet">
    <link href="/static/bootstrap-tokenfield.min.css" rel="stylesheet">
    <link href="/static/tokenfield-typeahead.min.css" rel="stylesheet">
    <link href="/static/style.css" rel="stylesheet">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
      
      % selected_id = -1
      % if defined('selected_dep'):
        % selected_id = selected_dep.id
      % end

      % include('_header.tpl', departments=departments, selected_id=selected_id, subsection=subsection)

      <h1>{{title}}</h1>

      {{!base}}
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/static/jquery-1.11.2.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/static/bootstrap.min.js"></script>
    <script src="/static/bootstrap-tokenfield.min.js"></script>
    <script src="/static/mustache.min.js"></script>
    <script src="/static/app.js"></script>

    
    <!-- Never do as me... It`s bad..-->
    <script>
      //Group
      $('#mGroupEdit').on('show.bs.modal', function (event) {
        var link = $(event.relatedTarget),
            groupName = link.text(),
            modal = $(this)
        modal.find('#group-name').val(groupName)
      })

      //Specialities
      $('#dsModal').on('show.bs.modal', function (event) {
        var link = $(event.relatedTarget),
            groupName = link.text(),
            modal = $(this)
        modal.find('#full-name').val(groupName)
      })

      //Discoplines
      $('#dscModal').on('show.bs.modal', function (event) {
        var link = $(event.relatedTarget),
            groupName = link.text(),
            modal = $(this)
        modal.find('#fullName').val(groupName)
      })

      $('#pupModal').on('show.bs.modal', function (event) {
        var link = $(event.relatedTarget),
            groupName = link.text(),
            modal = $(this)
        modal.find('#full-name').val(groupName)
      })

      //Tokenfield
      $('#tokenfield').tokenfield()
    </script>    
  </body>
</html>