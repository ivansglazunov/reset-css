doctype 5
html ->
    head ->
        link rel: "stylesheet", href: "reset.min.css"
        link rel: "stylesheet", href: "style.min.css"
        text "<!-- Google Tag Manager --><noscript><iframe src='//www.googletagmanager.com/ns.html?id=GTM-NWJHB2' height='0' width='0' style='display:none;visibility:hidden'></iframe></noscript><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-NWJHB2');</script><!-- End Google Tag Manager -->"
    body ->
        div ".reset.header", ->
            a
                href: "https://github.com/vancivelik"
                title: "author"
                this.lodash.escape this.pkg.author
            h1 ->
                text "ResetCSS"
                text " / "
                text "reset-css"
                text " / "
                abbr title: "Van Civelik", "vc"
                text "-reset-css"
            a
                href: "https://raw.githubusercontent.com/vancivelik/reset-css/master/index.styl"
                ".styl"
            text " "
            a
                href: "https://raw.githubusercontent.com/vancivelik/reset-css/master/reset.css"
                ".css"
            text " "
            a
                href: "https://raw.githubusercontent.com/vancivelik/reset-css/master/reset.min.css"
                ".min.css"
            text " "
            a
                href: "https://github.com/vancivelik/reset-css/archive/master.zip"
                "zip"
            text " "
            a
                href: "https://github.com/vancivelik/reset-css"
                "github"
            text " "
            a
                href: "https://www.npmjs.org/package/vc-reset-css"
                "npm"
            text " "
            a
                href: "http://github.com/vancivelik/reset-css/issues"
                "issues"
            text " "
            text this.lodash.escape this.pkg.version
            p this.lodash.escape this.pkg.description
            h2 "Browser support"
            ul ->
                li "Chrome"
                li "Firefox"
                li "Opera"
                li "Safari 6+"
                li "Explorer 8+"
            h2 "Thanks"
            ul ->
                li a href: "https://github.com/necolas/normalize.css", "Normalize.css"
                li a href: "https://github.com/LearnBoost/stylus", "Stylus"
                li a href: "https://github.com/visionmedia/nib", "nib"

        fieldset ".reset", ->
            legend ->
                text "headers small -indents -borders -background -sizes "
                abbr title: "I think bold is a logical component of the headers.", "!bold"
                text " "
                abbr title: "By default, the design should not be!", "!block"
            h1 "h1"
            h2 "h2"
            h3 "h3"
            h4 "h4"
            h5 "h5"
            h6 "h6"
            small "small"

        fieldset ".reset", ->
            legend "paragraphs -indents -borders -background -sizes !block"
            p "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris viverra ipsum nec lectus iaculis, eget elementum ligula bibendum. In luctus condimentum porttitor. Integer lobortis, ligula non convallis semper, nisi dui lacinia massa, sit amet vestibulum leo lectus vitae quam. Integer faucibus imperdiet libero eu bibendum. Nam venenatis dictum erat a tincidunt. Aenean dolor velit, bibendum sed fringilla ut, sagittis ac neque. Nam at posuere nisi. Nulla vitae leo dui. Donec id aliquet dui. Aenean ut pulvinar orci, a aliquet arcu. Phasellus lobortis commodo nibh quis aliquam. Fusce tristique sapien urna, non lobortis justo scelerisque non."

        fieldset ".reset", ->
            legend "links -indents -borders -background -color"
            a href: "https://github.com/vancivelik/reset-css", "https://github.com/vancivelik/reset-css"

        fieldset ".reset", ->
            legend "emphasis del s strike +bold +italic +strike"
            b "bold"
            text " "
            b "strong"
            text " "
            i "italic"
            text " "
            del "del"
            text " "
            s "s"
            text " "
            strike "strike"

        fieldset ".reset", ->
            legend "blockquote -indents -borders -background -color -sizes !block"
            blockquote "blockquote"

        fieldset ".reset", ->
            legend "ul -style !indents 2em"
            ul ->
                li "li"
                li ->
                    text "li"
                    ul ->
                        li "li"
                        li ->
                            text "li"
                            ul ->
                                li "li"
                                li ->
                                    text "li"
                                    ul ->
                                        li "li"
                                        li ->
                                            text "li"
                                            ul ->
                                                li "li"
                                                li "li"

        fieldset ".reset", ->
            legend "ol !indents 4em"
            ol ->
                li "li"
                li ->
                    text "li"
                    ol ->
                        li "li"
                        li ->
                            text "li"
                            ol ->
                                li "li"
                                li ->
                                    text "li"
                                    ol ->
                                        li "li"
                                        li ->
                                            text "li"
                                            ol ->
                                                li "li"
                                                li "li"

        fieldset ".reset", ->
            legend ->
                text "html5 "
                abbr title: "By default, the design should not be!", "!block"
            article "article"
            aside "aside"
            details ->
                summary "details summary closed"
                text "details"
            details "open", ->
                summary "details summary opened"
                text "details"
            figcaption "figcaption"
            figure "figure"
            footer "footer"
            header "header"
            hgroup "hgroup"
            main "main"
            nav "nav"
            section "section"

        fieldset ".reset", ->
            legend ->
                text "html5 details summary -indents -borders -background -color "
                abbr title: "By default, the design should not be!", "-arrow"
            details ->
                summary "details summary closed"
                text "details"
            details "open", ->
                summary "details summary opened"
                text "details"
        
        fieldset ".reset", ->
            legend "buttons input[type=button] input[type=reset] input[type=button] -indents -borders -background -color"
            button "button"
            text " "
            button disabled: "disabled", "button disabled"
            text " "
            input type: "button", value: "input button"
            text " "
            input disabled: "disabled", type: "button", value: "input button disabled"
            text " "
            input type: "reset", value: "input reset"
            text " "
            input disabled: "disabled", type: "reset", value: "input reset disabled"
            text " "
            input type: "submit", value: "input submit"
            text " "
            input disabled: "disabled", type: "submit", value: "input submit disabled"

        fieldset ".reset", ->
            legend ->
                text "input[type=text] input[type=password] -indents -borders -background -color "
                abbr title: "I think the default size should be either automatic or 100%. Exact size of - designer case.", "!width"
            input type: "text", value: "input text value"
            input "disabled", type: "text", value: "input text value disabled"
            input type: "text", placeholder: "input text placeholder"
            input "disabled", type: "text", placeholder: "input text placeholder disabled"
            input type: "password", value: "input password value"
            input "disabled", type: "password", value: "input password value disabled"
            input type: "password", placeholder: "input password placeholder"
            input "disabled", type: "password", placeholder: "input password placeholder disabled"

        fieldset ".reset", ->
            legend ->
                text "textarea -indents -borders -background -color "
                abbr title: "I think the default size should be either automatic or 100%. Exact size of - designer case.", "!width"
            textarea -> text "textarea"
            textarea "disabled", -> text "textarea disabled"
            textarea placeholder: "textarea placeholder"
            textarea "disabled", placeholder: "textarea placeholder disabled"

        fieldset ".reset", ->
            legend ->
                text "input[type=checkbox] without label "
                a ".wtf", href: "https://github.com/vancivelik/reset-css/issues/5", "issue"
            input type: "checkbox"
            input checked: "checked", type: "checkbox"
            input disabled: "disabled", type: "checkbox"
            input disabled: "disabled", checked: "checked", type: "checkbox"

        fieldset ".reset", ->
            legend -> 
                text "input[type=radio] with label -indents -borders -background -color "
                abbr title: "chenge selector input[type=checkbox] + label::before", "!content"
            input type: "checkbox", id: "input-checkbox-1"
            label for: "input-checkbox-1"
            input checked: "checked", type: "checkbox", id: "input-checkbox-2"
            label for: "input-checkbox-2"
            input disabled: "disabled", type: "checkbox", id: "input-checkbox-3"
            label for: "input-checkbox-3"
            input disabled: "disabled", checked: "checked", type: "checkbox", id: "input-checkbox-4"
            label for: "input-checkbox-4"

        fieldset ".reset", ->
            legend ->
                text "input[type=radio] without label "
                a ".wtf", href: "https://github.com/vancivelik/reset-css/issues/5", "issue"
            input type: "radio"
            input checked: "checked", type: "radio"
            input disabled: "disabled", type: "radio"
            input disabled: "disabled", checked: "checked", type: "radio"

        fieldset ".reset", ->
            legend -> 
                text "input[type=radio] with label -indents -borders -background -color "
                abbr title: "chenge selector input[type=radio] + label::before", "!content"
            input type: "radio", id: "input-radio-1", name: "input-radio-1"
            label for: "input-radio-1"
            input checked: "checked", type: "radio", id: "input-radio-2", name: "input-radio-1"
            label for: "input-radio-2"
            input disabled: "disabled", type: "radio", id: "input-radio-3", name: "input-radio-2"
            label for: "input-radio-3"
            input disabled: "disabled", checked: "checked", type: "radio", id: "input-radio-4", name: "input-radio-2"
            label for: "input-radio-4"
        
        fieldset ".reset", ->
            legend ->
                text "input[type=file] "
                abbr ".wtf", title: "How to lead to uniform style? Without scripts and modules...", "WTF?"
            input type: "file"
        
        fieldset ".reset", ->
            legend "input[type=image] -indents -borders -background -color"
            input type: "image", src: "image.jpg", alt: "image"
        
        fieldset ".reset", ->
            legend "comment template !hidden"
            tag "comment", -> text "comment"
            tag "template", -> text "template"
        
        fieldset ".reset", ->
            legend "abbr acronym -indents -borders -background -color"
            abbr title: "description", "abbr"
            text " "
            acronym title: "description", "acronym"

        fieldset ".reset", ->
            legend "dfn !!first"
            text "text "
            dfn "dfn"
            text " text "
            dfn "dfn"
            text " text"

        fieldset ".reset", ->
            legend "samp kbd code pre -indents -borders -background -color ~!block"
            samp "samp"
            kbd "kbd"
            code "code"
            pre "pre\r\npre"

        fieldset ".reset", ->
            legend "mark -indents -borders -background -color"
            mark "mark"

        fieldset ".reset", ->
            legend "sub sup !!fix"
            text "text"
            sub "sub"
            sup "sup"

        fieldset ".reset", ->
            legend "img -borders -indents"
            img src: "image.jpg"

        fieldset ".reset", ->
            legend "hr -borders -indents"
            do hr

        fieldset ".reset", ->
            legend "table tr td th -indents -borders -background -color"
            table ->
                tr ->
                    th "th"
                    th "th"
                    th "th"
                tr ->
                    th "th"
                    td "td"
                    td "td"
                tr ->
                    th "th"
                    td "td"
                    td "td"

        fieldset ".reset", ->
            legend "fieldset legend -indents -borders -background -color"
            fieldset ->
                legend "legend"
                text "fieldset content"

        fieldset ".reset", ->
            legend "marquee -indents -borders -background -color"
            marquee "marquee"

        fieldset ".reset", ->
            legend ->
                text "input[color, date, datetime, datetime-local, email, number, range, search, tel, time, url, month, week] -indents -borders -background -color "
                abbr title: "I think the default size should be either automatic or 100%. Exact size of - designer case.", "!width"
                text " "
                abbr ".wtf", title: "No universal solution!", "!not recommended"
            input type: "color"
            input type: "date"
            input type: "datetime"
            input type: "datetime-local"
            input type: "email"
            input type: "number"
            input type: "range"
            input type: "search"
            input type: "tel"
            input type: "time"
            input type: "url"
            input type: "month"
            input type: "week"