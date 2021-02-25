---
title: Languages
description: |
    This section covers languages will you need to be familar with to build a Jekyll static site
---

<ul>
    {% for language in site.languages %}
        <li>
            <h2>
                <a href="{{ language.url | relative_url }}">
                    {{ language.title }}
                </a>
            </h2>

            <p>
                <i>{{ language.description }}</i>
            </p>
            <p>{{ language.excerpt }}</p>
        </li>
    {% endfor %}
</ul>
