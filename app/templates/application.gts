import pageTitle from 'ember-page-title/helpers/page-title';
import Footer from '../components/footer';
import Player from '../components/player';

<template>
  {{pageTitle "New Rituals"}}

  <main>
    <h1 class="sr-only">New Rituals</h1>

    <img
      src="/images/new-rituals.jpg"
      alt=""
      class="w-screen h-auto object-contain [@media(min-width:858px)]:h-screen [@media(min-width:858px)]:w-auto [@media(min-width:858px)]:mx-auto"
    />

    <div class="flex flex-col items-center px-8 pt-8 gap-2">
      <h2 class="text-white text-lg sm:text-2xl font-bold">Listen to our new EP!</h2>
      <Player class="w-full sm:w-[450px] h-[335px] md:h-[310px]" />
    </div>
  </main>

  <Footer />
</template>
