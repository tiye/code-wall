
doctype

html
  head
    title "Code Wall"
    meta (:charset utf-8)
    link (:rel stylesheet) (:href css/style.css)
    script (:src bower_components/vue/dist/vue.js)
    script (:defer) (:src build/main.js)
  body $ #app
    .file (:v-repeat file:files)
      .name (:v-text file.name)
      pre.content (:v-text file.content)