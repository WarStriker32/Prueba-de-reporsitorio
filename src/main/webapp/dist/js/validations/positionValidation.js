$(() => {
    $('form').bootstrapValidator({
        fields: {
            code: {
                validators: {
                    notEmpty: {
                        message: 'Campo Código es requerido para actualizar'
                    }
                }
            },
            name: {
                validators: {
                    notEmpty: {
                        message: 'Campo Nombre es requerido'
                    },
                    stringLength: {
                        min: 3,
                        max: 3,
                        message: 'Nombre debe tener tres caracteres'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z]*$/,
                        message: 'El nombre debe contener solo texto'
                    }
                }
            }
        }
    });
});