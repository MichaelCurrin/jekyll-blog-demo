---
title: Tools
description: What you need to make a static site that runs locally and on GitHub Pages
---

This page showcases how to list items in a specific collection.

<ul>
    {% for tool in site.tools %}
        <li>
            <h2>
                <a href="{{ tool.url | relative_url }}">
                    {{ tool.title }}
                </a>
            </h2>

            <p>
                <i>{{ tool.description }}</i>
            </p>
            <p>{{ tool.excerpt }}</p>
        </li>
    {% endfor %}
</ul>
