 // $(document).ready(function(){
 //    $('#submit_author').mouseenter(function(){
 //        alert("MouseEnter!"); // This will create an alert box
 //        console.log("MouseEnter!"); // This will log to the JS console on your browser which is a bit nicer to read than alerts, you do not need both, just preference
 //        $(this).fadeIn('fast',1);
 //    })
 //    $('#submit_author').mouseleave(function(){
 //        alert("MouseLeave!"); // This will create an alert box
 //        console.log("MouseLeave!");
 //        $(this).fadeIn('fast',0.5);
 //    });
 //     // $('#current_customer').on('click', function(){
 //     //    alert('You pressed it!');
 //     // });          
                    
 // });

//  $(document).on('turbolinks:load', function() { 
// //             $('#specific').on('submit', function() {
// //                         alert( "author is successfuly added" );   
// //                         $('#exampleModal').modal('hide');    
// //                  });
                

//  });


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
                var url = "/admin/genres/new";
                window.location.replace(url);
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
// $('#submit_author').on('click' , function() { 
//   $('#exampleModal').modal('hide')
// });
// (function() {
//         document.getElementById("submit_author").onclick = function() { 
            
//             $('#exampleModal').modal('hide'); 
//         };
//     })();

