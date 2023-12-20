<template>
    <div class="m-3">
        <a href="https://www.linkedin.com/in/riedeljonas/" target="_blank" rel="noopener noreferrer">
            <Button class="mr-2">
                <font-awesome-icon :icon="['fab', 'linkedin']" class="icon" /> LinkedIn
            </Button>
        </a>
        <a href="https://github.com/jonasrdl" target="_blank" rel="noopener noreferrer">
            <Button class="mr-2">
                <font-awesome-icon :icon="['fab', 'github']" class="icon" /> GitHub
            </Button>
        </a>
        <a href="mailto:jonasriedel@pm.me" target="_blank" rel="noopener noreferrer">
            <Button class="mr-2">
                <font-awesome-icon :icon="['fas', 'envelope']" class="icon" /> E-Mail
            </Button>
        </a>
    </div>
</template>

<script setup lang="ts">
import { Button } from '@/components/ui/button'
</script>

<style scoped>
.icon {
    margin-right: 5px;
}
</style>