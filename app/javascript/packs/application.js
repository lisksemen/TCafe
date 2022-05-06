import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "stylesheets/application"
require("../stylesheets/application.scss")
require("@popperjs/core")
import "bootstrap"
import { Tooltip, Popover } from "bootstrap"


    document.addEventListener("turbolinks:load", () => {

    // Both of these are from the Bootstrap 5 docs

    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))

    var tooltipList = tooltipTriggerList.map(function(tooltipTriggerEl) {

        return new Tooltip(tooltipTriggerEl)

    })

    var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))

    var popoverList = popoverTriggerList.map(function(popoverTriggerEl) {

        return new Popover(popoverTriggerEl)

    })

})

Rails.start()
Turbolinks.start()
ActiveStorage.start()
