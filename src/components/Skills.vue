<template>
    <div class="container mx-auto py-8">
      <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        <div
          v-for="(skill, index) in skills"
          :key="index"
          class="bg-card-soft-light dark:bg-card-soft-light p-4 border border-border-soft-light rounded-lg shadow-md"
        >
          <h3 class="text-lg font-semibold mb-2">{{ skill.name }}</h3>
          <p class="text-sm lg:text-base text-gray-600 dark:text-gray-300">{{ skill.description }}</p>
        </div>
      </div>
    </div>
  </template>
  
<script setup lang="ts">
const skills = [
    { name: 'Golang', description: 'Programming language for building scalable and reliable software' },
    { name: 'Kubernetes', description: 'Container orchestration platform' },
    { name: 'ArgoCD', description: 'Continuous Delivery tool for Kubernetes' },
    { name: 'Docker', description: 'Containerization platform' },
    { name: 'Rust', description: 'Systems programming language' },
    { name: 'Linux', description: 'Operating system kernel' },
    { name: 'Git', description: 'Version control system for tracking changes in source code' },
    { name: 'Java', description: 'Versatile and widely used programming language' },
    { name: 'Databases (SQL)', description: 'Database management using SQL' },
    { name: 'JavaScript/TypeScript', description: 'Front-end scripting language' },
    { name: 'Vue.js', description: 'JavaScript framework for building user interfaces' },
    { name: 'Node.js', description: 'JavaScript runtime for server-side development' },
];
</script>
  
