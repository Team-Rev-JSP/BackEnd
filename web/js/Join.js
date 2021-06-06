const form = document.getElementById('form');
const id = document.getElementById('id');
const password = document.getElementById('password');
const nickname = document.getElementById('nickname');
<<<<<<< HEAD
<<<<<<< HEAD
const join_btn = document.getElementById('join');
=======
const submit_btn = document.getElementById('submit');
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
const submit_btn = document.getElementById('submit');
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8

// Show input error message
function showError(input, message) {
    const formControl = input.parentElement;
    formControl.className = 'form-control error';
    const small = formControl.querySelector('small');
    small.innerText = message;
}

// Show success outline
function showSuccess(input) {
    const formControl = input.parentElement;
    formControl.className = 'form-control success';
}

// Check required fields
function checkRequired(inputArr) {
    let isOk = true;
    inputArr.forEach(function(input) {
        if (input.value.trim() === '') {
            showError(input, `${getFieldName(input)} 을 입력하세요`);
            isOk = false;
        } else {
            isOk = isOk && true;
<<<<<<< HEAD
<<<<<<< HEAD
=======
            showSuccess(input);
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
            showSuccess(input);
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
        }
    });

    return isOk;
}

// Check input length
function checkLength(input, min, max) {
    if (input.value.length < min) {
<<<<<<< HEAD
<<<<<<< HEAD
        showError(input, `최소 ${min} 글자를 입력하세요`);
    } else if (input.value.length > max) {
        showError(input, `최대 ${max} 글자를 입력할 수 있습니다`);
    } else {
        showSuccess(input);
        return 1;
=======
=======
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
        showError(
            input,
            `최소 ${min} 글자를 입력하세요`
        );
    } else if (input.value.length > max) {
        showError(
            input,
            `최대 ${max} 글자를 입력할 수 있습니다`
        );
    } else {
        showSuccess(input);
<<<<<<< HEAD
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
    }
}

// Get fieldname
function getFieldName(input) {
    return input.id.charAt(0).toUpperCase() + input.id.slice(1);
}

// Event listeners
function join(e) {
    e.preventDefault();
<<<<<<< HEAD
<<<<<<< HEAD

    let successCnt = 0;

    if(checkRequired([id, password, nickname])){
        successCnt += checkLength(id, 6, 15);
        successCnt += checkLength(password, 8, 15);
        successCnt += checkLength(nickname, 2, 15);

        if(successCnt === 3) {
            form.submit();
        }
    }
};

join_btn.addEventListener('click', (e) => join(e))
=======
=======
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
    if(checkRequired([id, password, nickname])){
        checkLength(id, 6, 15);
        checkLength(password, 8, 15);
        checkLength(nickname, 2, 15);
    }
};

<<<<<<< HEAD
submit_btn.addEventListener('click', (e) => join(e))
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
submit_btn.addEventListener('click', (e) => join(e))
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
