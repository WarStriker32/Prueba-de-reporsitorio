$('#deleteModal').on('show.mdb.modal', e => {
    const button = e.relatedTarget,
		id = button.getAttribute('data-mdb-id'),
		entity = button.getAttribute('data-mdb-entity');

    $('.modal-body input').val(id);
    $('#deleteForm').attr('action', $('#deleteForm').attr('action') + `/${ entity }/delete`);
});