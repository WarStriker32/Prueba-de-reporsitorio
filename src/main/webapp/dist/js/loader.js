"use strict";
window.addEventListener('load', () => { hideLoader(); removeLoader(); });
const loader = document.querySelector('.loader');
function hideLoader() { loader === null || loader === void 0 ? void 0 : loader.classList.add('loaderHidden'); }
function removeLoader() {
    setTimeout(() => loader === null || loader === void 0 ? void 0 : loader.remove(), 3500);
}
