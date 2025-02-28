import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ['alert', 'notice']

  connect() {
    console.log("alert controller connected");
    if (this.alertTarget.innerText === "") {
      console.log("alert is empty");
      this.alertTarget.classList.add("display-off");
    }
    if (this.noticeTarget.innerText === "") {
      console.log("notice is empty");
      this.noticeTarget.classList.add("display-off");
    }
  }

  notice() {
    console.log("notice");
  }

  alert() {
    console.log("alert");
  }
}
