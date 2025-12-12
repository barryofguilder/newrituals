import Component from '@glimmer/component';
import SocialLink from './social-link';

export default class FooterComponent extends Component {
  get year() {
    return new Date().getFullYear();
  }

  <template>
    <footer class="p-8 flex flex-col gap-8">
      <ul class="text-center text-sm text-white">
        <li>Jason Barry - Bass</li>
        <li>Keller Harbin - Vocals</li>
        <li>Drew Miller - Drums</li>
        <li>Nathan Puckett - Guitar</li>
        <li>Zak Towe - Guitar</li>
      </ul>

      <div class="flex items-center justify-center space-x-4">
        <SocialLink @icon="instagram" />
        <SocialLink @icon="facebook" />
        <SocialLink @icon="youtube" />
        <SocialLink @icon="apple" />
        <SocialLink @icon="spotify" />
      </div>

      <div
        class="flex flex-col items-center justify-center text-sm text-gray-300 sm:flex-row"
      >
        <span>
          Copyright ©
          {{this.year}}
          New Rituals
        </span>
      </div>
    </footer>
  </template>
}
