import pageTitle from 'ember-page-title/helpers/page-title';
import Footer from '../components/footer';

<template>
  {{pageTitle "New Rituals"}}

  <main>
    <h1 class="sr-only">New Rituals</h1>
    <img
      src="/images/new-rituals.jpg"
      alt=""
      class="w-screen h-auto object-contain [@media(min-width:858px)]:h-screen [@media(min-width:858px)]:w-auto [@media(min-width:858px)]:mx-auto"
    />
  </main>

  <Footer />
</template>
