const completedTasks = () => {

document.querySelectorAll('.tasks-content').forEach((task) => {
  task.addEventListener('click', () => {
      task.classList.toggle('completed')
    })
  });
}


export { completedTasks };
