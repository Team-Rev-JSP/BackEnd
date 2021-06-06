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

// Get fieldname
function getFieldName(input) {
    return input.id.charAt(0).toUpperCase() + input.id.slice(1);
}

// Event listeners
function login(e) {
    console.log("call");
    e.preventDefault()
    if(checkRequired([id, password])){
        form.submit();
    }
};

login_btn.addEventListener('click', (e) => login(e))