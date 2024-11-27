[
    (int_literal)
    (float_literal)
] @number

(bool_literal) @boolean

["bool" "u32" "i32" "f16" "f32" "vec2" "vec3" "vec4"] @type.builtin

(identifier) @variable

(type_declaration
    (identifier) @type)

(parameter
    (variable_identifier_declaration (identifier) @parameter))

(struct_declaration
    (identifier) @type
    (struct_member
        (variable_identifier_declaration
            (identifier) @field)))

(attribute
    (identifier) @attribute)

(type_constructor_or_function_call_expression
    (type_declaration) @function.call)

(function_declaration
    (identifier) @function)

(function_return_type_declaration
    (type_declaration
        (identifier) @type))

[
    "struct"
    "bitcast"
    "discard"
    "enable"
    "fallthrough"
    "let"
    "type"
    "var"
    "override"
    (texel_format)
] @keyword

[
    "private"
    "storage"
    "uniform"
    "workgroup"
] @storageclass

[
    "read"
    "read_write"
    "write"
] @type.qualifier

"fn" @keyword.function

"return" @keyword.return

[ "," "." ";"] @punctuation.delimiter

["(" ")" "[" "]" "{" "}"] @punctuation.bracket

[
    "loop"
    "for"
    "while"
    "break"
    "continue"
    "continuing"
] @keyword.repeat

[
    "if"
    "else"
    "switch"
    "case"
    "default"
] @keyword.conditional

[
    "&"
    "&&"
    "/"
    "!"
    "="
    "=="
    "!="
    ">"
    ">="
    ">>"
    "<"
    "<="
    "<<"
    "%"
    "-"
    "+"
    "|"
    "||"
    "*"
    "~"
    "^"
    "@"
    "++"
    "--"
    ":"
    "->"
] @operator

[
    (line_comment)
    (block_comment)
] @comment

(ERROR) @error
