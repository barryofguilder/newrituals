import type { TOC } from '@ember/component/template-only';

const SectionHeader: TOC<{ Blocks: { default: [] } }> = <template>
  <div class="flex items-center gap-6">
    <div class="flex-1 border-t"></div>
    <h2 class="text-2xl uppercase font-semibold tracking-wider">{{yield}}</h2>
    <div class="flex-1 border-t"></div>
  </div>
</template>;

export default SectionHeader;
