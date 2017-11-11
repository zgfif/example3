
function newAuthor() 
          {
            var acc = document.getElementsByName('book[author_id]')[0].value;
            if (acc == "new")
              {
                $('#exampleModal').modal('show');
              //    var url = "/admin/authors/new";
              //  window.location.replace(url);
              }                
           };
function newGenre() 
          {
            var acc = document.getElementsByName('book[genre_id]')[0].value;
            if (acc == "new")
              {
                $('#exampleModal').modal('show');
                //var url = "/admin/genres/new";
                //window.location.replace(url);
              }                
          };
function newLocation() 
          {
            var acc = document.getElementsByName('book[location_id]')[0].value;
            if (acc == "new")
              {
                var url = "/admin/locations/new";
                window.location.replace(url);
              }                
          };          
 $('#specific2').each(function() {
   $(this).on('ajax:error', function(event, xhr, data, status) {
        alert("Please find out error duplicate values!");

    });
  });