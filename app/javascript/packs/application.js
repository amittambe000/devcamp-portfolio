// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("packs/html_sortable")
require("jquery")
require("jquery-ui")



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//= require popper
//= require bootstrap-sprockets

document.addEventListener('turbolinks:load', function() {
    // Event delegation
    document.addEventListener('click', function (evt) {
        if (evt.target.matches('.follow-btn')) {
            const userId = evt.target.dataset.userId;
            followUser(userId, evt.target);
        }

        if (evt.target.matches('.following-btn')) {
            const userId = evt.target.dataset.userId;
            unfollowUser(userId, evt.target);
        }

        evt.stopPropagation();
    });
});

$(document).on( 'turbolinks:load', function(){
    $('.sortable').sortable();
});
