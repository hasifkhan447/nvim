local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep


return {

  s({ trig = ";a", snippetType = "autosnippet" },
    {
      t("\\alpha"),
    }
  ),
  s({ trig = ";b", snippetType = "autosnippet" },
    {
      t("\\beta"),
    }
  ),
  s({ trig = ";g", snippetType = "autosnippet" },
    {
      t("\\gamma"),
    }
  ),

  s({ trig = ";in", snippetType = "autosnippet" },
    {
      t("\\infty"),
    }
  ),




  s({ trig = "tt", dscr = "Expands 'tt' into '\texttt{}'" },
    fmta(
      "\\texttt{<>}",
      { i(1) }
    )
  ),
  -- \frac
  s({ trig = "ff", dscr = "Expands 'ff' into '\frac{}{}'" },
    fmt(
      "\\frac{<>}{<>}",
      {
        i(1),
        i(2)
      },
      { delimiters = "<>" } -- manually specifying angle bracket delimiters
    )
  ),
  -- Equation
  s({ trig = "eq", dscr = "Expands 'eq' into an equation environment" },
    fmta(
      [[
       \begin{equation*}
           <>
       \end{equation*}
     ]],
      { i(1) }
    )
  )


}
