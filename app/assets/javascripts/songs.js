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
      var rowId = data.id;

      var $delBtn = $('<a href="#" class="btn btn-default" id="del-button">Delete</a>');

      var tableRow = $('<tr class="song"></tr>')
        .attr('data-id', rowId)
        .append($('<td>').append($('<p>')).html(name))
        .append($('<td>').append($('<p>')).html(album))
        .append($('<td>').append($('<p>')).html(year))
        .append($('<td>').append($delBtn.bind('click', deleteSong )));

      $('#table').find($('tr')).first().after(tableRow);
    })
    .fail(function(error) {

      for (var key in error.responseJSON.errors ){
        showError(error.responseJSON.errors[key]);
      };

    });
}

function deleteSong(event) {
  event.preventDefault();
  var tableRow = $(this).parent().parent();
  songId = $(tableRow).data('id');
  removeSong(songId);
}

function deleteAllSongs(event) {
  event.preventDefault();
  if (confirm("Are you sure you want to delete all the songs?")) {
    $.each($(".song"), function(index, tableRow) {
      songId = $(tableRow).data('id');
      removeSong(songId);
    });
  }
}

function removeSong(songId) {
    $.ajax({
    type: "DELETE",
    url: window.location.pathname + "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+songId+'"]').remove();
  });
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
  $('#del-button').bind('click', deleteSong );
  $('#del-all-button').bind('click', deleteAllSongs );
})
