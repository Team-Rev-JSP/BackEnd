const form = document.getElementById('form');
const id = document.getElementById('id');
const password = document.getElementById('password');
const nickname = document.getElementById('nickname');

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
    let isRequired = false;
    inputArr.forEach(function(input) {
        if (input.value.trim() === '') {
            showError(input, `${getFieldName(input)} 을 입력하세요`);
        } else {
            showSuccess(input);
            isRequired = true;
        }
    });

    return isRequired;
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
form.addEventListener('submit', function(e) {
    e.preventDefault();

    if(checkRequired([id, password, nickname])){
        checkLength(id, 6, 15);
        checkLength(password, 8, 15);
        checkLength(nickname, 2, 15);
    }
});