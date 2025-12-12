import pageTitle from 'ember-page-title/helpers/page-title';
import Footer from '../components/footer';
import Player from '../components/player';

<template>
  {{pageTitle "New Rituals"}}

  <main>
    <h1 class="sr-only">New Rituals</h1>

    <img
      src="/images/ep-banner.png"
      alt="New EP out now!"
      class="max-h-screen mx-auto"
    />

    <Player
      class="mx-auto px-8 pt-16 w-full h-[370px] sm:w-[500px] sm:h-[340px]"
    />
  </main>

  <Footer class="p-8 pt-16" />
</template>
