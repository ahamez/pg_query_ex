# credo:disable-for-this-file
defmodule PgQuery.CoercionForm do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :COERCION_FORM_UNDEFINED
      def default() do
        :COERCION_FORM_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:COERCION_FORM_UNDEFINED) do
          0
        end

        def encode("COERCION_FORM_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:COERCE_EXPLICIT_CALL) do
          1
        end

        def encode("COERCE_EXPLICIT_CALL") do
          1
        end
      ),
      (
        def encode(:COERCE_EXPLICIT_CAST) do
          2
        end

        def encode("COERCE_EXPLICIT_CAST") do
          2
        end
      ),
      (
        def encode(:COERCE_IMPLICIT_CAST) do
          3
        end

        def encode("COERCE_IMPLICIT_CAST") do
          3
        end
      ),
      (
        def encode(:COERCE_SQL_SYNTAX) do
          4
        end

        def encode("COERCE_SQL_SYNTAX") do
          4
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :COERCION_FORM_UNDEFINED
      end,
      def decode(1) do
        :COERCE_EXPLICIT_CALL
      end,
      def decode(2) do
        :COERCE_EXPLICIT_CAST
      end,
      def decode(3) do
        :COERCE_IMPLICIT_CAST
      end,
      def decode(4) do
        :COERCE_SQL_SYNTAX
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :COERCION_FORM_UNDEFINED},
        {1, :COERCE_EXPLICIT_CALL},
        {2, :COERCE_EXPLICIT_CAST},
        {3, :COERCE_IMPLICIT_CAST},
        {4, :COERCE_SQL_SYNTAX}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:COERCION_FORM_UNDEFINED) do
          true
        end,
        def has_constant?(:COERCE_EXPLICIT_CALL) do
          true
        end,
        def has_constant?(:COERCE_EXPLICIT_CAST) do
          true
        end,
        def has_constant?(:COERCE_IMPLICIT_CAST) do
          true
        end,
        def has_constant?(:COERCE_SQL_SYNTAX) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
