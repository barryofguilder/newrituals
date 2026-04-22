import pageTitle from 'ember-page-title/helpers/page-title';
import Footer from '../components/footer';
import Player from '../components/player';
import Shows from '../components/shows';

<template>
  {{pageTitle "New Rituals"}}

  <div class="relative isolate overflow-hidden">
    <img
      alt=""
      src="/images/bg.jpg"
      class="absolute inset-0 -z-10 size-full object-cover"
    />

    <main>
      <h1 class="sr-only">New Rituals</h1>

      <img
        src="/images/ep-banner.png"
        alt="New EP out now!"
        class="max-h-screen mx-auto"
      />

      <Player
        class="mx-auto px-8 pt-16 w-full h-[400px] sm:w-[500px] sm:h-[375px]"
      />

      <div class="pt-16 mx-auto max-w-lg">
        <h2
          class="text-center text-2xl uppercase font-semibold tracking-wider border-b"
        >
          Shows
        </h2>

        <Shows class="mt-4 px-4" @shows={{@model}} />
      </div>

      <div class="pt-16 mx-auto max-w-3xl text-center">
        <h2
          class="text-2xl uppercase font-semibold tracking-wider border-b"
        >
          Merch
        </h2>

        <a href="https://newrituals.square.site" class="block mt-6 rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-offset-4 focus-visible:ring-offset-[#0e1c29]">
          {{#let "w-4/5 flex-shrink-0 sm:w-auto rounded hover:scale-105 transition-transform duration-200" as |shirtClass|}}
            <div class="flex overflow-x-auto gap-3 sm:grid sm:grid-cols-3 sm:overflow-visible">
              <img
                src="/images/shirt-ernest.webp"
                alt="Ernest Saves Hardcore tee"
                class={{shirtClass}}
              />
              <img
                src="/images/shirt-logo.webp"
                alt="New Rituals Welcome To The End logo"
                class={{shirtClass}}
              />
              <img
                src="/images/shirt-planets.webp"
                alt="Planets long sleeve"
                class={{shirtClass}}
              />
            </div>
          {{/let}}
        </a>

        <a
          href="https://newrituals.square.site"
          class="inline-block mt-6 px-8 py-3 bg-[#f2f2f2] text-[#0e1c29] text-sm uppercase tracking-widest font-semibold hover:bg-white transition-colors focus:outline-none focus-visible:outline focus-visible:outline-2 focus-visible:outline-white"
        >
          Shop Now
        </a>
      </div>
    </main>

    <Footer class="p-8 pt-16" />
  </div>
</template>
