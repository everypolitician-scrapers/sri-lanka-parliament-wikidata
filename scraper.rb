#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/15th_Parliament_of_Sri_Lanka',
  xpath: '//h2[span[@id="Members"]]//following-sibling::table[1]//tr[td]//td[1]//a[not(@class="new")]/@title',
) 
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names })
