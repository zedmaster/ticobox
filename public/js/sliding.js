
// Calling the function
$(function() {
    $('.toggle-nav').click(function() {
        toggleNavigation();
    });
});


// The toggleNav function itself
function toggleNavigation() {
    if ($('#container').hasClass('display-nav')) {
        // Close Nav
        $('#container').removeClass('display-nav');
    } else {
        // Open Nav
        $('#container').addClass('display-nav');
    }
}


/**
 * Frame Geral
 */
$("#toggle > li > div").click(function () {
    if (false == $(this).next().is(':visible')) {
        $('#toggle ul').slideUp();
    }

    var $currIcon=$(this).find("span.the-btn");

    $("span.the-btn").not($currIcon).addClass('fa-plus').removeClass('fa-minus');

    $currIcon.toggleClass('fa-minus fa-plus');

    $(this).next().slideToggle();

    $("#toggle > li > div").removeClass("active");
    $(this).addClass('active');

});

/**
 * Modal Grupo
 */
$('#modal-grupo').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var nome = button.data('nome');
    var preco = button.data('preco');
    var modal = $(this);
    modal.find('.modal-title').text(nome + ' - R$ ' + preco);

});

/**
 * Modal Unidade
 */
$('#modal-unidade').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var nome = button.data('nome');
    var modal = $(this);
    modal.find('.modal-title').text(nome);

});


/**
 * Modal Pagamento Tipo
 */
$('#modal-pagamento-tipo').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget);
    var nome = button.data('nome');
    var modal = $(this);
    modal.find('.modal-title').text("Pagamento por  " + nome);
});


/** Possibiolita abrir modal em cima da outra **/
$(document).on('show.bs.modal', '.modal', function () {
    var zIndex = 1040 + (10 * $('.modal:visible').length);
    $(this).css('z-index', zIndex);
    setTimeout(function() {
        $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
    }, 0);
});
$(document).on('hidden.bs.modal', '.modal', function () {
    $('.modal:visible').length && $(document.body).addClass('modal-open');
});