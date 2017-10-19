function createSong(name, album, year) {

  var newTodo = { title: title, completed: false };

  $.ajax({
    type: "POST",
    url: window.location.pathname + "/songs.json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  });
}

function submitSong(event){
  event.preventDefault();

  var name = $('#song-name').val();
  var album = $('#song-album').val();
  var year = $('#song-year').val();

  createSong(name, album, year);
}

// 1. Create form in artists#show
// 2. get values and add to table
// 3. add as row in songs table
