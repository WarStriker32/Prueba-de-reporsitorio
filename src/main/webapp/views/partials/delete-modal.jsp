<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="deleteModalLabel">¿Seguro de eliminar?</h5>
				<button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<form id="deleteForm" action="${ pageContext.request.contextPath }" method="POST">
					<div class="mb-3">
						<label for="codeId" class="col-form-label">Código:</label>
						<input type="number" class="form-control" id="codeId" name="code" disabled>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">Sí</button>
						<button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">No</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>