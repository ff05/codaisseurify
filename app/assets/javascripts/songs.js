function addSong(name, album, year) {
  var newSong = {name: name, album: album, release_year: year}

  $.ajax({
    type: "POST",
    url: window.location.pathname + "/songs.json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"})
    .done(function(data) {
      var $delBtn = $('#del-button').clone();

      var tableRow = $('<tr></tr>')
       .append($('<td>').append($('<p>')).html(name))
       .append($('<td>').append($('<p>')).html(album))
       .append($('<td>').append($('<p>')).html(year))
       .append($('<td>').append($delBtn));

      $('#table').find($('tr')).first().after(tableRow);
    })
    .fail(function(error) {
      console.log(error);

      for (var key in error.responseJSON.errors ){
        showError(error.responseJSON.errors[key]);
      };

    });
}

function deleteSong() {

}

function showError(message) {
  var errorHelpBlock = $('<span class="help-block"></span>')
    .attr('id', 'error_message')
    .text(message);

  $("#table").append(errorHelpBlock);
}

function saveSong(event){
  event.preventDefault();
  resetErrors();
  var songName = $('#song-name');
  var songAlbum = $('#song-album');
  var songYear = $('#song-year');

  addSong(songName.val(), songAlbum.val(), songYear.val());
  clearVals(songName, songAlbum, songYear);
  // addSong($songName.val(), $songAlbum.val(), $songYear.val())
}

function clearVals(name, album, year) {
  name.val(null);
  album.val(null);
  year.val(null);
}

function resetErrors() {
  $("#error_message").remove();
  $("#formgroup-title").removeClass("has-error");
}

$(document).ready(function() {
  $('#add-button').bind('click', saveSong );
})
// 1. Create form in artists#show
// 2. get values and add to table
// 3. add as row in songs table
