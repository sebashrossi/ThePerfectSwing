const displayPreview = () => {
  const videoInput = document.querySelector('#section_video_url');
  const prev = document.querySelector('#preview');
  const length = document.querySelector('#section_length');
  if (videoInput) {
    videoInput.addEventListener('change', (event) => {
      prev.src = event.target.value.replace("watch?v=", "embed/");
      prev.classList.remove('hidden');
    });
  };
};



export { displayPreview };

