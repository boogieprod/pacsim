Added internationalization for matteodem:meteor-boilerplate. (Awesome boilerplate for meteor projects)

Added packages are the popular tap:i18n and tap:i18n-ui translation packages (see tap:i18n-db for collection translation)

Added coffeescript package because I'm lazy...

i18n folder to store json files. (contains translated text), project-tap.i18n added to the root directory of the project. (not mandatory unless you want to use tap:i18n-db, I've experienced issues without it)

client/config/i18n.coffee for package init configs

No more hard-coded text in header.html, home.html, footer.html and notFound.html

Added a couple lines of code in header.less to make the dropdown position fixed.

Feel free to decline this pull request.
