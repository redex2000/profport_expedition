$(function() {
    $('a').on('click', function (event) {
        event.preventDefault();
        console.log('click')
    });
    console.log('start')
});