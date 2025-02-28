import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookmark"
export default class extends Controller {
  static targets = ['listId', 'form'];

  connect() {
    console.log("connected bookmarks controller");
    //console.log(this.formTarget);
  }

  prepareForm(event) {
    console.log(event);
    this.listIdTarget.value = event.target.dataset.listId
    this.formTarget.classList.remove("display-off");
    this.formTarget.querySelector('.form-title').innerText = 'add movie to: '+event.target.dataset.listName
  }

  generateFormHTML(listId) {

  }

}
