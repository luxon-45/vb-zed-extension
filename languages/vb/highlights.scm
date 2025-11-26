;; Comments
(comment) @comment

;; Modifiers (Public, Private, Protected, Friend, Shared, Static, etc.)
(modifier) @keyword

;; Keywords - Control flow
[
  "if_keyword"
  "then_keyword"
  "else_keyword"
  "elseif_keyword"
  "end_keyword"
  "for_keyword"
  "to_keyword"
  "step_keyword"
  "next_keyword"
  "each_keyword"
  "in_keyword"
  "while_keyword"
  "do_keyword"
  "loop_keyword"
  "until_keyword"
  "select_keyword"
  "case_keyword"
  "when_keyword"
  "exit_keyword"
  "continue_keyword"
  "goto_keyword"
  "return_keyword"
] @keyword.control

;; Keywords - Function/Sub/Property declarations
[
  "sub_keyword"
  "function_keyword"
  "property_keyword"
  "get_keyword"
  "set_keyword"
  "call_keyword"
  "delegate_keyword"
  "event_keyword"
  "addhandler_keyword"
  "removehandler_keyword"
  "raiseevent_keyword"
] @keyword.function

;; Keywords - Type declarations
[
  "class_keyword"
  "module_keyword"
  "structure_keyword"
  "interface_keyword"
  "enum_keyword"
  "namespace_keyword"
  "imports_keyword"
  "inherits_keyword"
  "implements_keyword"
] @keyword

;; Keywords - Variable declarations
[
  "dim_keyword"
  "const_keyword"
  "as_keyword"
  "new_keyword"
  "of_keyword"
  "redim_keyword"
  "preserve_keyword"
] @keyword

;; Keywords - Exception handling
[
  "try_keyword"
  "catch_keyword"
  "finally_keyword"
  "throw_keyword"
] @keyword.control

;; Keywords - Other
[
  "with_keyword"
  "using_keyword"
  "synclock_keyword"
  "option_keyword"
  "explicit_keyword"
  "strict_keyword"
  "infer_keyword"
  "compare_keyword"
  "binary_keyword"
  "text_keyword"
  "on_keyword"
  "off_keyword"
] @keyword

;; Keywords - Parameter modifiers
[
  "byval_keyword"
  "byref_keyword"
  "optional_keyword"
  "paramarray_keyword"
] @keyword

;; Keywords - Operators
[
  "and_keyword"
  "or_keyword"
  "not_keyword"
  "xor_keyword"
  "andalso_keyword"
  "orelse_keyword"
  "mod_keyword"
  "like_keyword"
  "is_keyword"
  "isnot_keyword"
  "typeof_keyword"
  "addressof_keyword"
  "&_keyword"
] @keyword.operator

;; Keywords - Special values
"nothing_keyword" @constant.builtin

;; Type definitions - names
(class_block name: (identifier) @type)
(module_block name: (identifier) @type)
(interface_block name: (identifier) @type)
(structure_block name: (identifier) @type)
(enum_block name: (identifier) @type)
(delegate_declaration name: (identifier) @type)

;; Enum members
(enum_member name: (identifier) @constant)

;; Types in type positions
(primitive_type) @type.builtin

;; Functions / Methods - names
(method_declaration name: (identifier) @function)
(invocation target: (identifier) @function.call)
(invocation target: (member_access member: (identifier) @function.call))

;; Properties - names
(property_declaration name: (identifier) @property)

;; Event declarations
(event_declaration name: (identifier) @function)

;; Variables / Fields - names
(field_declaration (variable_declarator name: (identifier) @variable))
(parameter name: (identifier) @variable.parameter)

;; Literals
(boolean_literal) @constant.builtin
(integer_literal) @number
(floating_point_literal) @number
(string_literal) @string
(interpolated_string_literal) @string
(character_literal) @string
(date_literal) @string.special

;; Namespace - names
(namespace_block name: (namespace_name) @namespace)
(imports_statement namespace: (namespace_name) @namespace)

;; Attributes - names
(attribute name: (identifier) @attribute)

;; Member access
(member_access member: (identifier) @property)

;; Punctuation
"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"," @punctuation.delimiter
"." @punctuation.delimiter

;; Operators
[
  "="
  "<>"
  "<"
  ">"
  "<="
  ">="
  "+"
  "-"
  "*"
  "/"
  "\\"
  "^"
  "+="
  "-="
  "*="
  "/="
  "\\="
  "^="
  "&="
] @operator


