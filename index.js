const episodeHeader = document.querySelector('#episode-header')
const leftContainer = document.querySelector('#left-container')
const middleContainer = document.querySelector('#middle-container')
const episodeInfoContainer = document.querySelector("#episode-info-container")
const podcastInfoContainer = document.querySelector("#podcast-info-container")

const state = {
  notes: [],
  selectedNote: null,
  newNoteStatus: false
}

const renderEpisodeInfo = (episode) => {
  episodeHeader.innerText = `Episode: ${episode.title}`

  const episodeDiv = document.createElement('div')
  episodeDiv.innerHTML = `
  <hr>
  <p>${EPISODE["description"]}</p>
  `
  episodeInfoContainer.append(episodeDiv)

  const podcastDiv = document.createElement('div')
  podcastDiv.innerHTML = `
  <hr>
  <img src=${EPISODE["podcast"]["thumbnail"]}>
  <br>From: ${EPISODE["podcast"]["title"]}
  <br><a href=${EPISODE["podcast"]["website"]} target="_blank">Link to Podcast Website</a>
  <hr>
  `

  podcastInfoContainer.append(podcastDiv)
}

const showAllNotesLi = () => {
  const optionEl = document.createElement('div')
  optionEl.id = `show-all-option`
  optionEl.innerHTML = `
  <div class="uk-card-header uk-padding" uk-tooltip="Show all your notes as one page">
    Show All Notes
  </div>
  `
  const selectedNote = optionEl.querySelector(`div`)
  selectedNote.addEventListener('click', () => {
    state.newNoteStatus = false
    state.selectedNote = "all"
    renderAllNotes(state.notes)
  })

  leftContainer.append(optionEl)
}

const renderNoteLi = (note) => {
  const noteEl = document.createElement('div')
  noteEl.id = `li-note${note.id}`
  noteEl.innerHTML = `
  <div class="uk-card-header uk-padding" uk-tooltip="${note.content.length} characters">
    ${note.title}
  </div>
  `
  const selectedNote = noteEl.querySelector(`div`)
  selectedNote.addEventListener('click', () => {
    state.newNoteStatus = false
    state.selectedNote = note
    clearMiddleContainer()
    renderNote(note)
  })

  leftContainer.append(noteEl)
}

const renderNotesList = (notes) => {
  state.notes = notes
  notes.forEach(renderNoteLi)
}

const addListeners = () => {
  listenClickForNewForm()
  listenClickForRenderNote()
}

const listenClickForNewForm = () => {
  const clickForNewForm = document.querySelector('#click-for-new-form')
  clickForNewForm.addEventListener('click', () => {
    state.newNoteStatus = true
    state.selectedNote = null
    renderNewNoteForm()
  })
}

const listenClickForRenderNote = (note) => {
}

const renderNewNoteForm = () => {
  clearMiddleContainer()
  const newFormEl = document.createElement('div')
  newFormEl.innerHTML = `
  <form id="new-note-form">
    <h3>Make a new note:</h3>
    <div>
      <div class="uk-margin-small">
        <input type="text" id= "start" class="uk-input" placeholder="Start time (hh:mm:ss)">
      </div>
      <div class="uk-margin-small">
        <input type="text" id= "end" class="uk-input" placeholder="End time (hh:mm:ss)">
      </div>
      <div class="uk-margin-small">
        <textarea type="text" id="content" class="uk-textarea" placeholder="Write some notes here" style="resize:none"></textarea>
      </div>
      <button class="uk-button uk-button-default">Save</button>
    </div>
  </form>
  `
  middleContainer.append(newFormEl)
}

const renderNote = (note) => {
  const renderNoteEl = document.createElement('div')
  renderNoteEl.id = `show-note${note.id}`
  renderNoteEl.innerHTML = `
  <h3>${note.title}</h3>
  <div>
    <div class="uk-margin-small">
      <p>${note.content}</p>
      <p>${note.start} - ${note.end}</p>
    </div>
    <button class="uk-button uk-button-default">Edit</button>
    <button class="uk-button uk-button-default">Delete</button>
  </div>
  `

  middleContainer.append(renderNoteEl)
}

const renderAllNotes = (notes) => {
  clearMiddleContainer()
  notes.forEach(renderNote)
}

const clearMiddleContainer = () => {
  middleContainer.innerHTML = ''
}

const init = () => {
  renderEpisodeInfo(EPISODE) // top and right container
  showAllNotesLi()
  renderNotesList(NOTES) // left container
  addListeners() // for rendering middle container content
}

init();
