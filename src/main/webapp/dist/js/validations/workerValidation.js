$(() => {
    $('form').bootstrapValidator({
        fields: {
            idNum: {
                validators: {
                    notEmpty: {
                        message: 'Campo Número de DNI es obligatorio.'
                    },
                    stringLength: {
                        min: 8,
                        max: 8,
                        message: 'Número de DNI debe tener 8 dígitos.'
                    }
                }
            },
            names: {
                validators: {
                    notEmpty: {
                        message: 'Campo Nombres es obligatorio.'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'Campo Nombres deben ser más de 3 y menos de 40 caracteres de longitud.'
                    }/* ,
                    regexp: {
                        regexp: /^[a-zA-Z\s\á\é\í\ó\ú\Á\È\Ì\Ò\Ù]{3, 40}$/,
                        message: 'Campo Nombres inválido.'
                    } */
                }
            },
            surname: {
                validators: {
                    notEmpty: {
                        message: 'Campo Apellidos es obligatorio.'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'Campo Apellidos deben ser más de 3 y menos de 40 caracteres de longitud.'
                    }, /*
                    regexp: {
                        regexp: /^[a-zA-Z\s\á\é\í\ó\ú\Á\È\Ì\Ò\Ù]{3, 40}$/,
                        message: 'Campo Apellidos inválido.'
                    } */
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'Campo Género es requerido.'
                    }
                }
            },
            bDay: {
                validators: {
                    notEmpty: {
                        message: 'Campo Fecha de nacimiento es requerido.'
                    }
                }
            },
            mobileNum: {
                validators: {
                    notEmpty: {
                        message: 'Campo Número de móvil es obligatorio.'
                    },
                    stringLength: {
                        min: 9,
                        max: 9,
                        message: 'Número de móvil debe tener 9 dígitos.'
                    }
                }
            },
            address: {
                validators: {
                    notEmpty: {
                        message: 'Campo Dirección es requerido'
                    },
                    stringLength: {
                        max: 40,
                        message: 'Campo Dirección debe tener como máximo 40 caracteres'
                    }
                }
            },
            entryDate: {
                validators: {
                    notEmpty: {
                        message: 'Campo Fecha de entrada es requerido.'
                    }
                }
            },
            terminationDate: {
                validators: {
                    notEmpty: {
                        message: 'Campo Fecha de cese es requerido.'
                    }
                }
            },
            positionCode: {
                validators: {
                    notEmpty: {
                        message: 'Campo Código de cargo es requerido.'
                    }
                }
            },
            salary: {
                validators: {
                    notEmpty: {
                        message: 'Campo Salario es requerido.'
                    },
                    regexp: {
                        regexp: /^\d{1,3}(?:,?\d{3})?$/
                    }
                }
            },
            pension: {
                validators: {
                    notEmpty: 'Campo Código de pensión es requerido.'
                }
            },
            minorChildren: {
                validators: {
                    notEmpty: 'Campo Cantidad de hijos menores es requerido.'
                },
                stringLength: {
                    min: 1,
                    max: 4,
                    message: 'Campo Cantidad de hijos menores debe tener como máximo 4 dígitos.'
                }
            },
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