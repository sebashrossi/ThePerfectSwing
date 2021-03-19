
const initQuizSteps = () => {
  const nextBtns =  document.querySelectorAll("[data-next-step]")
  nextBtns.forEach((nextBtn) => {
    nextBtn.addEventListener('click', () => {
      const selector = `[data-step='${nextBtn.dataset.nextStep}']`
      console.log(selector);
      document.querySelector(selector).classList.remove("d-none")
      nextBtn.closest("[data-step]").classList.add("d-none")
    })
  })
}

export { initQuizSteps }