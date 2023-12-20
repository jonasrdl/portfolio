import './assets/main.css'

import { createApp } from 'vue'
import App from './App.vue'
import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

import { faEnvelope, faUserSecret } from '@fortawesome/free-solid-svg-icons'
import { faGithub, faLinkedin } from '@fortawesome/free-brands-svg-icons'

library.add(faUserSecret)
library.add(faLinkedin)
library.add(faGithub)
library.add(faEnvelope)


createApp(App)
    .component('font-awesome-icon', FontAwesomeIcon)
    .mount('#app')