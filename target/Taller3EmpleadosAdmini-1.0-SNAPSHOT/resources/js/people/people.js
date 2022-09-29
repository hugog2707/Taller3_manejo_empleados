$(document).ready(function(){
            $('#tablaDepartamentos').DataTable();
            
            $('.delete').on('click', function(e){
                e.preventDefault();
                for(i=0;i<document.getElementsByClassName('id'+i).length;i++){
                    var id = document.getElementsByClassName('id'+i).value;
                console.log("#########", id);
                }
            });
});


