<script setup lang="ts">
import { Button } from '@/components/ui/button'
import Timebeam from '@/components/Timebeam.vue';
import Skills from '@/components/Skills.vue';
import Contact from '@/components/Contact.vue';

function toggleDarkMode() {
  const root = document.querySelector(':root')
  root?.classList.toggle('dark')
}
</script>

<template>
  <div class="container mx-auto py-8">
    <div class="my-8">
      <div>
        <h1 class="text-2xl lg:text-4xl font-extrabold tracking-tight">
          Jonas Riedel
        </h1>
      </div>
      
      <div>
        <h1 class="text-xl lg:text-2xl tracking-light my-1">
          Software Developer from Germany
        </h1>
      </div>
      
      <div>
        <h2 class="mt-6 lg:mt-10 border-b pb-2 text-xl lg:text-3xl font-semibold tracking-tight first:mt-0">
          Career
        </h2>
        <Timebeam />
      </div>
      
      <div>
        <h2 class="mt-6 lg:mt-10 border-b pb-2 text-xl lg:text-3xl font-semibold tracking-tight first:mt-0">
          Skills
        </h2>
        <Skills />
      </div>

      <div>
        <h2 class="mt-6 lg:mt-10 border-b pb-2 text-xl lg:text-3xl font-semibold tracking-tight first:mt-0">
          Contact
        </h2>
        <Contact />
      </div>
    </div>

    <Button class="fixed top-4 right-4 px-4 py-2 shadow-md" @click="toggleDarkMode">Switch theme</Button>
  </div>
</template>

