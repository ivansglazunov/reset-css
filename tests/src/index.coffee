lodash = this.lodash
doctype 5
html ->
    head ->
        link rel: "stylesheet", href: "../../dist/reset.css"
        link rel: "stylesheet", href: "style.css"
    body ->
        div ".block", ->
            div ".about", lodash.escape "<a> widthout stylesheets?"
            div ".demo", ->
                a href: "#", "a"

        div ".block", ->
            div ".about", lodash.escape "<abbr> <acronym> widthout stylesheets?"
            div ".demo", ->
                abbr title: "ABBR", "abbreviation"
                text " "
                acronym title: "ACR", "acronym"

        div ".block", ->
            div ".about", lodash.escape "<address> <article> <aside> <menu> <nav> widthout stylesheets?"
            div ".demo", ->
                address "address"
                article "article" # html5
                aside "aside" # html5
                section "section" # html5
                menu "menu" # html5
                nav "nav" # html5

        div ".block", ->
            div ".about", lodash.escape "<audio> <video> <progress> <canvas> <object> <embed> display block and widthout stylesheets?"
            div ".demo", ->
                audio "controls", ->
                video "controls", ->
                progress ->
                canvas ->
                object ->
                embed ->

        div ".block", ->
            div ".about", lodash.escape "<b> intalic?"
            div ".demo", ->
                i "i"

        div ".block", ->
            div ".about", lodash.escape "<b> <strong> bold?"
            div ".demo", ->
                b "b"
                text " "
                strong "strong"

        div ".block", ->
            div ".about", lodash.escape "<blockquote> widthout stylesheets?"
            div ".demo", ->
                blockquote "blockquote"

        div ".block", ->
            div ".about", lodash.escape "<button> widthout stylesheets and if active then cursor pointer?"
            div ".demo", ->
                button "button"
                text " "
                button "disabled", "button disabled"

        div ".block", ->
            div ".about", lodash.escape "<cite> <em> widthout stylesheets?"
            div ".demo", ->
                cite "cite"
                text " "
                em "em"

        div ".block", ->
            div ".about", lodash.escape "<code> <samp> full inherit?"
            div ".demo", ->
                code "code"
                samp "samp"

        div ".block", ->
            div ".about", lodash.escape "<comment> cross-browser invisible?"
            div ".demo", ->
                text "<comment>hidden comment</comment>"

        div ".block", ->
            div ".about", lodash.escape "<dl> <dt> <dd> widthout stylesheets?"
            div ".demo", ->
                dl ->
                    dt "term"
                    dd "description"

        div ".block", ->
            div ".about", lodash.escape "<del> <s> <strike> only negates?"
            div ".demo", ->
                del "del"
                text " "
                s "s"
                text " "
                strike "strike"

        div ".block", ->
            div ".about", lodash.escape "<details> cross-browser animation and invisible arrow?"
            div ".demo", ->
                details ->
                    summary "details summary closed"
                    text "details"
                details "open", ->
                    summary "details summary opened"
                    text "details"

        div ".block", ->
            div ".about", lodash.escape "<dfn> only first styled?"
            div ".demo", ->
                text "text "
                dfn "dfn"
                text " text "
                dfn "dfn"
                text " text"

        div ".block", ->
            div ".about", lodash.escape "<div> <pre> widthout stylesheets?"
            div ".demo", ->
                p "p"
                div "div"
                pre "pre\r\npre"

        div ".block", ->
            div ".about", lodash.escape "<form> <fieldset> <legend> widthout stylesheets?"
            div ".demo", ->
                form ->
                    fieldset ->
                        legend -> "fieldset legend"
                        text "text"

        div ".block", ->
            div ".about", lodash.escape "<ul> <ol> <li> widthout stylesheets?"
            div ".demo", ->
                ul ->
                    li "li"
                    ul ->
                        li "li"
                ol ->
                    li "li"
                    ol ->
                        li "li"

        div ".block", ->
            div ".about", lodash.escape "<main> <mark> widthout stylesheets?"
            div ".demo", ->
                main "main"
                mark "mark"

        div ".block", ->
            div ".about", lodash.escape "<marquee> widthout stylesheets?"
            div ".demo", ->
                marquee "marquee"

        div ".block", ->
            div ".about", lodash.escape "<meter> <progress> widthout stylesheets?"
            div ".demo", ->
                meter value: 50, min: 0, max: 100, "meter"

        div ".block", ->
            div ".about", lodash.escape "<q> widthout stylesheets?"
            div ".demo", ->
                q "q"

        div ".block", ->
            div ".about", lodash.escape "<select> widthout stylesheets?"
            div ".demo", ->
                select ->
                    option "option"
                    option "option"
                    option "option"

        div ".block", ->
            div ".about", lodash.escape "<table> <td> <tr> <th> widthout stylesheets?"
            div ".demo", ->
                table ->
                    tr ->
                        th "th"
                        th "th"
                        th "th"
                    tr ->
                        td "td"
                        td "td"
                        td "td"
                    tr ->
                        td "td"
                        td "td"
                        td "td"

        div ".block", ->
            div ".about", lodash.escape "<u> widthout stylesheets?"
            div ".demo", ->
                u "u"

        div ".block", ->
            div ".about", lodash.escape "<tt> widthout stylesheets?"
            div ".demo", ->
                tt "tt"

        div ".block", ->
            div ".about", lodash.escape "<var> widthout stylesheets?"
            div ".demo", ->
                tag "var", "var"