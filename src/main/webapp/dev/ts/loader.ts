window.addEventListener('load', () => { hideLoader(); removeLoader(); });

const loader = document.querySelector('.loader');

function hideLoader() { loader?.classList.add('loaderHidden'); }
function removeLoader() {
    setTimeout(() => loader?.remove(), 3500);
}