window.matchMedia('prfers-color-scheme: dark').addEventListener('change', e => {
    const colourScheme = e.matches ? 'dark' : 'light';
    if (colourScheme == 'dark') {
        document.querySelectorAll('.bg-light')?.forEach(item => {
            item.classList.remove('bg-light');
            item.classList.add('bg-dark');
        });
    }
    else {
        document.querySelectorAll('.bg-dark')?.forEach(item => {
            item.classList.remove('bg-dark');
            item.classList.add('bg-light');
        });
    }
});