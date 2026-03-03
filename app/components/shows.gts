import Component from '@glimmer/component';
import { addWeeks, format, isBefore, parse } from 'date-fns';
import { Show } from '../routes/application';

const convertDateStringToDate = (dateString: string) => {
  return parse(dateString, 'yyyy-MM-dd', new Date());
};

interface ShowItemSignature {
  Element: HTMLDivElement;
  Args: {
    show: Show;
  };
}

class ShowItem extends Component<ShowItemSignature> {
  get formattedDate() {
    const dateString = this.args.show.date;
    if (dateString) {
      const date = convertDateStringToDate(dateString);
      return format(date, 'EEE, MMMM d, yyyy');
    }
    return dateString;
  }

  <template>
    <div class="flex grow items-center">
      <div class="text-md flex grow flex-col items-center">
        <span class="font-semibold">
          {{this.formattedDate}}
        </span>
        <span class="flex flex-col text-gray-400 sm:flex-row">
          <span>{{@show.city}}</span>
          <span class="hidden sm:block sm:pl-2">@</span>
          <span class="sm:pl-2">{{@show.venue}}</span>
        </span>

        {{#if @show.with}}
          <span class="text-gray-400">
            w/
            {{@show.with}}
          </span>
        {{/if}}

        {{#if @show.ticketLink}}
          <a
            href={{@show.ticketLink}}
            class="inline-block rounded bg-gray-200 mt-2 px-2 py-1 text-xs font-semibold focus:outline-none focus-visible:outline focus-visible:outline-2 focus-visible:outline-white text-gray-900 shadow-sm hover:bg-gray-300"
          >
            Tickets
          </a>
        {{/if}}
      </div>
    </div>
  </template>
}

interface ShowsSignature {
  Element: HTMLDivElement;
  Args: {
    shows: Show[];
  };
}

export default class Shows extends Component<ShowsSignature> {
  get shows() {
    const allShows = this.args.shows || [];
    const now = new Date();

    return allShows.filter((show) => {
      const showDate = convertDateStringToDate(show.date);
      const twoWeeksAfter = addWeeks(showDate, 2);
      // Only return shows that are in the future or less than 2 weeks old.
      return isBefore(now, twoWeeksAfter);
    });
  }

  <template>
    <div class="flex flex-col gap-12" ...attributes>
      {{#each this.shows as |show|}}
        <ShowItem @show={{show}} />
      {{else}}
        <p class="text-center italic">
          There are currently no shows scheduled at this time. Check back soon!
        </p>
      {{/each}}
    </div>
  </template>
}
