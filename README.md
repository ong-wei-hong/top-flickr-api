# Flickr API
<p><a href="https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-on-rails/lessons/flickr-api">Project: Flickr API</a></p>
<p>A simple website which uses <a href="https://github.com/hanklords/flickraw/">Flickraw</a>, a Flickr api. Enter a username to see their public Flickr photos.</p>
<p>To run:</p>
<p><code>bundle install</code></p>
<p><code>rails s</code></p>
<p>then, go <br /><a href="http://localhost:3000/">localhost:3000</a></p>
<p>Note that this api require <a href="https://www.flickr.com/services/api/">Flickr api keys</a> in the <a href="https://github.com/laserlemon/figaro">Figaro</a> gem.<br />To ensure that the website runs as expected, please name the public api key "FLICKRAW_API_KEY" and the secret key "FLICKRAW_SHARED_SECRET" in application.yml after running <code>bundle exec figaro install</code></p>
