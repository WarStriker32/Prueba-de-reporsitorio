$(() => {
    $('form').bootstrapValidator({
        message: 'Valor inválido',
        fields: {
            username: {
                validators: {
                    notEmpty: {
                        message: 'Campo Nombre de Usuario es obligatorio.'
                    },
                    stringLength: {
                        min: 3,
                        max: 30,
                        message: 'Nombre de Usuario debe tener como máximo 30 caracteres y 3 como mínimo'
                    },
                    different: {
                        field: 'password',
                        message: 'El nombre de usuario y la contraseña deben ser diferentes.'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: 'El nombre de usuario solo puede consistir de letras, números, puntos y barras bajas'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'Campo Contraseña es obligatorio.'
                    },
                    stringLength: {
                        min: 3,
                        max: 18,
                        message: 'Contraseña debe ser más de 3 y menos de 18 caracteres de longitud.'
                    },
                    different: {
                        field: 'username',
                        message: 'La contraseña y el nombre de usuario deben ser diferentes.'
                    }
                }
            }
        }
    });
});