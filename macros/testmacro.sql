  {% macro some_macro(arg1, arg2) %}
    {{ print("Running some_macro: " + env_var("DBT_FIRST_ENV_VAR")) }}
  {% endmacro %}