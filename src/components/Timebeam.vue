<template>
    <ol class="relative mt-4 ml-4 border-s border-gray-200 dark:border-gray-700">
        <li v-for="(event, index) in events" :key="index" class="mb-10 ms-4">
            <div
                class="absolute w-3 h-3 bg-gray-200 rounded-full mt-1.5 -start-1.5 border border-white dark:border-gray-900 dark:bg-gray-700">
            </div>
            <time class="mb-1 text-sm font-normal leading-none text-gray-400 dark:text-gray-500">{{ event.date }}</time>
            <h3 class="text-lg font-semibold text-gray-900 dark:text-white">{{ event.title }}</h3>
            <p class="mb-1 text-base font-normal text-gray-500 dark:text-gray-400">{{ event.description }}</p>
            <div class="flex space-x-2 mb-4">
                <span v-for="(label, labelIndex) in event.labels" :key="labelIndex"
                    class="label-badge px-2 py-1 text-sm font-medium bg-gray-200 text-gray-800 rounded-md hover:scale-105 transition-transform">
                    {{ label }}
                </span>
            </div>
        </li>
    </ol>
</template>
  
<script setup lang="ts">
const events = [
    {
        date: 'September 2020 - July 2023',
        title: 'Apprenticeship',
        description: 'Completed a software development apprenticeship at United Internet AG',
        labels: ['Java', 'Typescript/Javascript', 'Vue.js', 'SQL', 'Networking', 'Linux', 'Bash', 'Docker'],
    },
    {
        date: 'July 2023 - Now',
        title: 'Software Developer',
        description: 'Currently working as a full-time software developer in the area of Kubernetes and Cloud',
        labels: ['Kubernetes', 'Docker', 'Cloud', 'Golang', 'GitOps'],
    },
];
</script>