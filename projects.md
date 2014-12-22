---
layout: page
title: Iain's Projects
order: 2
permalink: /projects/
---

<div class="home">

  Here is a list of all my projects, ordered in the time they were created.
  <ul class="post-list">

    {% for post in site.projects %}


      {% assign path = post.url | replace: '/',' ' %}

      {% if path | split: ' ' | last contains 'index' %}
        {% unless path contains '_posts' %}
          {% unless path contains '_docs' %}
            {% unless path contains '_about' %}

              <li>
                

                <h2>
                  <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
                  <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
                </h2>
              </li>
            {% endunless %}
          {% endunless %}
        {% endunless %}
      {% endif %}

    {% endfor %}
  </ul>
</div>
