const form = document.getElementById('form');
const id = document.getElementById('id');
const password = document.getElementById('password');
const login_btn = document.getElementById('login');

// Show input error message
function showError(input) {
    const formControl = input.parentElement;
    formControl.className = 'form-control error';
}

// Check required fields
function checkRequired(inputArr) {
    let isOk = true;
    inputArr.forEach(function(input) {
        if (input.value.trim() === '') {
            showError(input);
            isOk = false;
        } else {
            isOk = isOk && true;
        }
    });

    return isOk;
}

<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
// Check input length
function checkLength(input, min, max) {
    if (input.value.length < min) {
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
    }
}

<<<<<<< HEAD
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
// Get fieldname
function getFieldName(input) {
    return input.id.charAt(0).toUpperCase() + input.id.slice(1);
}

// Event listeners
function login(e) {
<<<<<<< HEAD
<<<<<<< HEAD
    e.preventDefault();

=======
    console.log("call");
    e.preventDefault()
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
=======
    console.log("call");
    e.preventDefault()
>>>>>>> cd4b908910cabdfd6f10e9fc9930cd67e45e91b8
    if(checkRequired([id, password])){
        form.submit();
    }
};

login_btn.addEventListener('click', (e) => login(e))