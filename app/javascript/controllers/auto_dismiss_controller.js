import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="auto-dismiss"
export default class extends Controller {
  connect() {
    // Self destruct after 5 seconds
    setTimeout(() => {
      this.element.remove();
    }, 5000);
  }
}
