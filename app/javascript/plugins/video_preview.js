const displayPreview = () => {
  const input = $('#section_video_url');
  const videoDiv = $('.video-div')
  const video = $('#preview');

  input.addEventListener('change', (event) => {
    video.src = event.currentTarget.value;
    videoDiv.classList.remove('hidden');
  });
}


export { displayPreview };
