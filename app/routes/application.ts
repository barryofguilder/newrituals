import Route from '@ember/routing/route';

export interface Show {
  city: string;
  date: string;
  ticketLink: string | null;
  venue: string;
  with: string | null;
}

export default class ApplicationRoute extends Route {
  async model(): Promise<Show[] | null> {
    if (typeof fetch === 'undefined') {
      return null;
    }

    const timestamp = new Date().getTime();

    const response = await fetch(`/shows.json?${timestamp}`);
    const data = (await response.json()) as { shows: Show[] };

    return data.shows;
  }
}
