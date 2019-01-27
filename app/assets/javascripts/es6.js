$(function() {
    fetch('https://api.hh.ru/vacancies?text=rails')
        .then((response) => response.json())
        .then((result) => console.log(result))
        .catch((err) => console.error(err))
    ;
});