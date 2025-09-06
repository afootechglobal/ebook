
// function _selectOption(selectBoxId) {
// 	$('#txtSearchValue_' + selectBoxId).val('');
// 	filter(selectBoxId);

// 	if ($('#searchPanel_' + selectBoxId).is(":visible")) {
// 		$('#searchPanel_' + selectBoxId).css('display', 'none');
// 	} else {
// 		$('#searchPanel_' + selectBoxId).css('display', 'flex');
// 		$('#txtSearchValue_' + selectBoxId).focus();
// 	}
// }

// document.addEventListener('click', (e) => {
// 	const selectContainer = document.querySelector('#selectContainer');
// 	const searchPanel = document.querySelector('.searchPanel');
// 	if (!selectContainer.contains(e.target)) {
// 		searchPanel.style.display = 'none';
// 	}
// });

// function filter(selectBoxId) {
// 	var valThis = $('#txtSearchValue_' + selectBoxId).val();
// 	$('#searchList_' + selectBoxId + ' > li').each(function () {
// 		var text = $(this).text();
// 		(text.toLowerCase().indexOf(valThis.toLowerCase()) > -1) ? $(this).show() : $(this).hide();
// 	});
// };

// function _clickOption(selectedOption, id, value) {
// 	selectBoxId = selectedOption.replace("searchList_", "");
// 	// Clear previous options and set the selected one
// 	$('#' + selectBoxId).html(`<option selected="selected" value="${id}">${value}</option>`);
// 	_selectOption(selectBoxId);
// };
























function _getSearchItem(divClass, displayId) {
	const keyword = $('input, select').map(function () {
		return $(this).val().toLowerCase().trim();
	}).get().join(' ');

	let matchCount = 0;

	$('.' + divClass).each(function () {
		const text = $(this).text().toLowerCase();
		const match = keyword.split(' ').every(k => text.includes(k));

		$(this).toggle(match);
		if (match) matchCount++;
	});

	$('#no-record').remove();
	if (matchCount === 0) {
		$('#' + displayId).append('<div id="no-record" class="false-notification-div"><p>No record found</p> <button class="btn" onclick="_get_form(' + "'past_quesion_reg'" + ')"><i class="bi-person-plus"></i> ADD A NEW PAST QUESTION</button></div>');
	}
}






function _getSearchItem(divClass, displayId) {
    const examSession = $('#exam_session').val().toLowerCase();
    const searchKeyword = $('#search_keywords').val().toLowerCase();

    let matchCount = 0;

    $('.'+divClass).each(function () {
        const text = $(this).text().toLowerCase();
        const match = text.includes(searchKeyword) && text.includes(examSession);

        $(this).toggle(match);
        if (match) matchCount++;
    });

   $('#no-record').remove();
	if (matchCount === 0) {
		$('#' + displayId).append('<div id="no-record" class="false-notification-div"><p>No record found</p> <button class="btn" onclick="_get_form(' + "'past_quesion_reg'" + ')"><i class="bi-person-plus"></i> ADD A NEW PAST QUESTION</button></div>');
	}
}


function _showPagination(pageNumber, divClass, itemsPerPage = 6) {
  const items = $('.' + divClass);
  const totalItems = items.length;
  const totalPages = Math.ceil(totalItems / itemsPerPage);

  if (pageNumber < 1) pageNumber = 1;
  if (pageNumber > totalPages) pageNumber = totalPages;

  items.hide();
  const start = (pageNumber - 1) * itemsPerPage;
  const end = start + itemsPerPage;
  items.slice(start, end).show();

  let pagination = '';
  pagination += `<button class="btn" onclick="_showPagination(${pageNumber - 1}, '${divClass}', ${itemsPerPage})" ${pageNumber === 1 ? 'disabled' : ''}>Prev</button>`;

  for (let i = 1; i <= totalPages; i++) {
    pagination += `<button onclick="_showPagination(${i}, '${divClass}', ${itemsPerPage})" class="page-btn${i === pageNumber ? ' active' : ''}">${i}</button>`;
  }

  pagination += `<button class="btn" onclick="_showPagination(${pageNumber + 1}, '${divClass}', ${itemsPerPage})" ${pageNumber === totalPages ? 'disabled' : ''}>Next</button>`;

  $('#paginationControls').html(pagination);
}
































//////////////////////////////////////////////////////////////////////

function _showPagination(pageNumber, divClass, itemsPerPage = 6) {
  const items = $('.' + divClass);
  const totalItems = items.length;
  const totalPages = Math.ceil(totalItems / itemsPerPage);

  if (pageNumber < 1) pageNumber = 1;
  if (pageNumber > totalPages) pageNumber = totalPages;

  items.hide();
  const start = (pageNumber - 1) * itemsPerPage;
  const end = start + itemsPerPage;
  items.slice(start, end).show();

  let pagination = '';
  pagination += `<button class="btn" onclick="_showPagination(${pageNumber - 1}, '${divClass}', ${itemsPerPage})" ${pageNumber === 1 ? 'disabled' : ''}>Prev</button>`;

  // Current page / Total pages
  pagination += `<span class="pagination-info">${pageNumber} - ${totalPages} of ${totalItems}</span>`;


  pagination += `<button class="btn" onclick="_showPagination(${pageNumber + 1}, '${divClass}', ${itemsPerPage})" ${pageNumber === totalPages ? 'disabled' : ''}>Next</button>`;

  $('#paginationControls').html(pagination);
}


function _getSearchItem(divClass, displayId) {
  const examSession = $('#exam_session').val().toLowerCase();
  const searchKeyword = $('#search_keywords').val().toLowerCase();

  let matchCount = 0;

  $('.' + divClass).removeClass('matched-item').hide(); // Reset
  $('#' + displayId + ' #no-record').remove();

  $('.' + divClass).each(function () {
    const text = $(this).text().toLowerCase();
    const match = text.includes(searchKeyword) && text.includes(examSession);

    if (match) {
      $(this).addClass('matched-item').show(); // Mark as matched
      matchCount++;
    }
  });

  if (matchCount === 0) {
    $('#' + displayId).append('<div id="no-record" class="false-notification-div"><p>No record found</p> <button class="btn" onclick="_get_form(\'past_quesion_reg\')">Request for Past Question <i class="bi-send"></i></button></div>');
    $('#paginationControls').empty();
  } else {
    _showPagination(1, 'matched-item');
  }
}

////////////////////////////////////////////////////////////////////////////////