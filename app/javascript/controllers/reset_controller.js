// app/javascript/controllers/reset_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content", "messages"]

  connect() {
  }

  clear() {
    this.contentTarget.value = ""
  }
}
