import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content", "messages"]

  connect() {
    this.scrollToBottom()
  }

  clear() {
    this.contentTarget.value = ""
    this.scrollToBottom()
  }

  scrollToBottom() {
    this.messagesTarget.scrollTop = this.messagesTarget.scrollHeight
  }
}
