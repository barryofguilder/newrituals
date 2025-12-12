import type { TOC } from '@ember/component/template-only';

const PlayerComponent: TOC<{
  Element: HTMLIframeElement;
}> = <template>
  <iframe
    title="Welcome To The End by New Rituals"
    class="border-none"
    src="https://bandcamp.com/EmbeddedPlayer/album=1111269633/size=large/bgcol=333333/linkcol=0f91ff/artwork=small/transparent=true/"
    seamless
    ...attributes
  >
    {{! template-lint-disable no-nested-interactive }}
    <a href="https://newritualshc.bandcamp.com/album/welcome-to-the-end">
      Welcome To The End by New Rituals
    </a>
  </iframe>
</template>;

export default PlayerComponent;
