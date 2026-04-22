import pageTitle from 'ember-page-title/helpers/page-title';
import Footer from '../components/footer';
import Player from '../components/player';
import SectionHeader from '../components/section-header';
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

      <div class="pt-24 mx-auto max-w-3xl px-8">
        <SectionHeader>Music</SectionHeader>

        <Player
          class="mx-auto mt-10 w-full h-[400px] sm:w-[500px] sm:h-[375px]"
        />
      </div>

      <div class="mt-24 bg-black/40">
        <div class="py-24 mx-auto max-w-3xl">
          <SectionHeader>Shows</SectionHeader>

          <Shows class="mt-10 px-4 max-w-lg mx-auto" @shows={{@model}} />
        </div>
      </div>

      <div class="py-24 mx-auto max-w-3xl text-center">
        <SectionHeader>Merch</SectionHeader>

        <a
          href="https://newrituals.square.site"
          class="block mt-10 rounded focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-offset-4 focus-visible:ring-offset-[#0e1c29]"
        >
          {{#let
            "w-4/5 flex-shrink-0 sm:w-auto rounded hover:scale-105 transition-transform duration-200"
            as |shirtClass|
          }}
            <div
              class="flex overflow-x-auto gap-3 sm:grid sm:grid-cols-3 sm:overflow-visible"
            >
              <img
                src="/images/shirt-ernest.webp"
                alt="Ernest Saves Hardcore"
                class={{shirtClass}}
              />
              <img
                src="/images/shirt-logo.webp"
                alt="New Rituals Welcome To The End"
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

    <Footer
      class="px-8 pt-24 pb-12 bg-gradient-to-b from-transparent to-black/60"
    />
  </div>
</template>
