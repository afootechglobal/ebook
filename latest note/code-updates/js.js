function alert_close(){
	$('#get-more-div').html('').fadeOut(200);
}

function _actionAlert(message,status ){
	let text = '';
	$('.all-alert-back-div').html(text).css('display', 'flex');
	if(status==true){
		text +=
		'<div class="success-alert-div animated fadeInDown">' +
			'<div class="icon"><i class="bi-check-all"></i></div>'+
			'<div class="text"><p>'+message+'</p></div>'+
		'</div>';
	}else{
		text +=
		'<div class="failed-alert-div animated fadeInDown">' +
			'<div class="icon"><i class="bi-exclamation-octagon-fill"></i></div>'+
			'<div class="text"><p>'+message+'</p></div>'+
		'</div>';
	}
	$('.all-alert-back-div').html(text).fadeIn(500).delay(3000).fadeOut(100);
}

function _alertClose(){
	let text = '';
	  text +=
	  '<div class="alert-loading-div">' +
		'<div class="icon"><img src="'+ website_url +'/all-images/images/loading.gif" width="20px" alt="Loading"/></div>' +
		'<div class="text"><p>LOADING...</p></div>'+
		'</div>';
	$('#get-more-div').html(text).fadeOut(200);
}

function _alert_secondary_close(){
  let text = '';
	text +=
	'<div class="alert-loading-div">' +
	  '<div class="icon"><img src='+ website_url +'/all-images/images/loading.gif" width="20px" alt="Loading"/></div>' +
	  '<div class="text"><p>LOADING...</p></div>'+
	  '</div>';
  $('#get-more-div-secondary').html(text).fadeOut(200);
}

function _next_page(next_id) {
    $("#view_login,#reset_password_info,#send_link_info").hide();
    $("#" + next_id).fadeIn(1000);
}

function _toggle_profile_pix_div() {
	$(".toggle-profile-div").toggle("slow");
}

function _tableToggle() {
	$('.switch input').on('change', function () {
		const label = $(this).next().next();
		label.text($(this).is(':checked') ? 'ON' : 'OFF');
	});
}

function select_search() {
	$(".srch-select").toggle("fast");
}
  
function srch_custom(text){
	$('#srch-text').html(text);
	$('.custom-srch-div').fadeIn(500);
};


function isNumber_Check(e) {
    var key = e.keyCode || e.which;

    if (!((key >= 48 && key <= 57))) {
        if (e.preventDefault) {
            e.preventDefault();
        } else {
            e.returnValue = false;
        }
    }
}


function _expandSideLink(ids) {
    if (!$('#' + ids + '-li').is(':visible')) {
        $('.dashboard-in').not('#' + ids + '-li').slideUp('slow');
        $('#' + ids + '-li').slideDown('slow');
    }
}

function _closeAllSideLinks() {
    $('.dashboard-in').hide('slow');
}

function _removeClass(page){
	if (page!=='dashboard'){
		$('#dashboard').removeClass('active-li');
	}else{
		$('#dashboard').addClass('active-li');
	}
}

function _getActivePage(page, menu_id){
	_removeClass(page);
	$('#shared_hosting, #new_domains, #transfer_domain, #domains, #user_profile_Page').removeClass('active');
	$('#' + menu_id).addClass('active');
}

function _getPage(page, menu_id) {	
	_getActivePage(page, menu_id);
	
	$("#page-content").html('<div class="ajax-loader"><img src="'+ website_url +'/all-images/images/spinner.gif"/></div>').fadeIn(500);
	const action = "get_page";
	const dataString = "action=" + action + "&page=" + page;
	$.ajax({
		type: "POST",
		url: account_local_url,
		data: dataString,
		cache: false,
		success: function (html) {
			$("#page-content").html(html);
		},
	});
	
}

function _getForm(page) {
	$("#get-more-div").css({'display': 'flex','justify-content': 'center','align-items': 'center'}) .fadeIn(500);
		const action = "get_form";
		const dataString = "action=" + action + "&page=" + page;
		$.ajax({
		type: "POST",
		url: account_local_url,
		data: dataString,
		cache: false,
		success: function (html) {
			$("#get-more-div").html(html);
		},
	});
}

function _getFormWithId(page, ids) {
	$("#get-more-div").css({'display': 'flex','justify-content': 'center','align-items': 'center'}) .fadeIn(500);
		const action = "get_form_with_id";
		const dataString = "action=" + action + "&page=" + page + "&ids=" + ids;
		$.ajax({
		type: "POST",
		url: account_local_url,
		data: dataString,
		cache: false,
		success: function (html) {
			$("#get-more-div").html(html);
		},
	});
}

function _editPage(page, publish_id){
	$("#get-more-div").css({'display': 'flex','justify-content': 'center','align-items': 'center'}) .fadeIn(500);
		const action='get_edit_page_form';
		const dataString ='action='+ action + '&page=' + page + '&publish_id=' + publish_id;
		$.ajax({
		type: "POST",
		url: account_local_url,
		data: dataString,
		cache: false,
		success: function(html){
			$('#get-more-div').html(html);
		}
	});
}
  

function _getActiveTableContent(menu_id){
	$('#domain_table, #hosting_table').removeClass('active-li');
	$('#' + menu_id).addClass('active-li');
}

function _getTableContent(menu_id, page, ids) {
	_getActiveTableContent(menu_id);
	const action = 'get_table_details';
	const dataString = 'action=' + action + '&page=' + page + '&ids=' + ids;
	$.ajax({
	  type: "POST",
	  url: account_local_url,
	  data: dataString,
	  cache: false,
	  success: function (html) {
		$('#get_table_details').html(html);
	  }
	});
}

function _getActiveUserContent(menu_id){
	$('#user_profile_info, #user_password_info').removeClass('active-li');
	$('#' + menu_id).addClass('active-li');
}

function _getUserContent(menu_id, page, ids) {
	_getActiveUserContent(menu_id);
	const action = 'get_user_details';
	const dataString = 'action=' + action + '&page=' + page + '&ids=' + ids;
	$.ajax({
	  type: "POST",
	  url: account_local_url,
	  data: dataString,
	  cache: false,
	  success: function (html) {
		$('#get_user_details').html(html);
	  }
	});
}

function _passwordResetSuccesful(page) {
	$("#get-more-div").css({'display': 'flex','justify-content': 'center','align-items': 'center'}) .fadeIn(500);
	const action = "password_reset_successful";
	const dataString = "action=" + action + "&page=" + page;

	$.ajax({
		type: "POST",
		url: account_local_url,
		data: dataString,
		cache: false,
		success: function (html) { 
			$("#get-more-div").html(html);
		},
	});
}


function _getFormDetails(next_id) {
	$('#user-form-details').hide();
	$("#" + next_id).fadeIn(1000);
	$('#user-details, #edit_btn').fadeOut(500);
}

function filters(selectBoxId) {
	var valThis = $('#search'+selectBoxId).val();
	$('#fetchAll'+selectBoxId+' > tbody .tb-row').each(function() {
		var text = $(this).text();
		(text.toLowerCase().indexOf(valThis.toLowerCase()) > -1) ? $(this).show(): $(this).hide();
    });
 };


function _selectOption(selectBoxId) {
	$('#txtSearchValue_'+selectBoxId).val('');
	filter(selectBoxId);

    if ($('#searchPanel_'+selectBoxId).is(":visible")) {
        $('#searchPanel_'+selectBoxId).css('display', 'none');
    } else {
        $('#searchPanel_'+selectBoxId).css('display', 'flex');
        $('#txtSearchValue_'+selectBoxId).focus();
    }
}
document.addEventListener('click', (e) => {
	const selectContainer = document.querySelector('#selectContainer');
	const searchPanel = document.querySelector('.searchPanel');
	if (!selectContainer.contains(e.target)) {
	  searchPanel.style.display = 'none';
	}
});

function filter(selectBoxId) {
	var valThis = $('#txtSearchValue_'+selectBoxId).val();
	$('#searchList_'+selectBoxId+' > li').each(function() {
		var text = $(this).text();
		(text.toLowerCase().indexOf(valThis.toLowerCase()) > -1) ? $(this).show(): $(this).hide();
	});
};

function _clickOption(selectedOption, id, value) {
	selectBoxId = selectedOption.replace("searchList_", "");
	// Clear previous options and set the selected one
	$('#'+selectBoxId).html(`<option selected="selected" value="${id}">${value}</option>`);
	_selectOption(selectBoxId);
};



function _checkAll(){
	$(document).ready(function() {
	  $('#parent').on('change', function() {
		  $('.child').prop('checked', this.checked);
	  });
	  $('.child').on('change', function() {
		  $('#parent').prop('checked', $('.child:checked').length===$('.child').length);
	  });
  });
}

function _getPagination(entriesPerPage = 10) {
    const $tableRows = $(".tb-row"), totalEntries = $tableRows.length;
    let currentPage = 1, totalPages = Math.ceil(totalEntries / entriesPerPage);

    const $currentStartEl = $("#current-start"),
        $currentEndEl = $("#current-end"),
        $totalEntriesEl = $("#total-entries"),
        $prevBtn = $("#prev-btn"),
        $nextBtn = $("#next-btn"),
        $pageButtons = $(".pagination-page");

    function updatePagination() {
        const startIndex = (currentPage - 1) * entriesPerPage,
            endIndex = Math.min(currentPage * entriesPerPage, totalEntries);

        $currentStartEl.text(startIndex + 1);
        $currentEndEl.text(endIndex);
        $totalEntriesEl.text(totalEntries);
        $prevBtn.prop("disabled", currentPage === 1);
        $nextBtn.prop("disabled", currentPage === totalPages);

        $pageButtons.each(function () {
            const pageNumber = parseInt($(this).text(), 10);
            $(this).toggle(pageNumber <= totalPages).prop("disabled", pageNumber > totalPages)
                .toggleClass("active", pageNumber === currentPage);
        });

        $tableRows.each((index, row) => $(row).toggle(index >= startIndex && index < endIndex));
    }

    $prevBtn.add($nextBtn).add($pageButtons).off("click").on("click", function () {
        const selectedPage = $(this).is($prevBtn) ? currentPage - 1
            : $(this).is($nextBtn) ? currentPage + 1
            : parseInt($(this).text(), 10);

        if (!isNaN(selectedPage) && selectedPage > 0 && selectedPage <= totalPages) {
            currentPage = selectedPage;
            updatePagination();
        }
    });

    updatePagination();
}



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
function _searchDomainStatic(domain) {
    $("#notAvailableDomain, #availableDomain, #suggestedDomain").hide();

    if (domain === "afootech.com") {
        $("#availableDomain").fadeIn("slow").css({'display': 'flex','justify-content': 'space-between','align-items': 'center'});
		$("#availableDomain").find("h3").text(`${domain} is available`);
		$("#mainExtension").fadeOut("slow");
		$("#TableExtension").fadeOut("slow");
    } else {
        $("#notAvailableDomain").fadeIn("slow");
		$("#notAvailableDomain").find("h3").text(`${domain} is not available`);
		$("#mainExtension").fadeIn("slow");
		$("#TableExtension").fadeIn("slow");
    }
    $("#suggestedDomain").fadeIn("slow");
}



