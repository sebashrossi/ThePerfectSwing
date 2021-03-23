const fakeLoader = () => {
const modal = document.getElementById("loadingModal");
const btns = document.querySelectorAll('[data-loader]');
  if (btns) {
    btns.forEach((btn) => {
      btn.addEventListener('click', () => {
        modal.classList.remove('d-none');
        setTimeout(() => {
          modal.classList.add('d-none');
          btn.closest('form').submit();
        }, 2500);
      });
    });

  };
};

export { fakeLoader };
