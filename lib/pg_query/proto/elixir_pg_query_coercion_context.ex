# credo:disable-for-this-file
defmodule PgQuery.CoercionContext do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :COERCION_CONTEXT_UNDEFINED
      def default() do
        :COERCION_CONTEXT_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:COERCION_CONTEXT_UNDEFINED) do
          0
        end

        def encode("COERCION_CONTEXT_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:COERCION_IMPLICIT) do
          1
        end

        def encode("COERCION_IMPLICIT") do
          1
        end
      ),
      (
        def encode(:COERCION_ASSIGNMENT) do
          2
        end

        def encode("COERCION_ASSIGNMENT") do
          2
        end
      ),
      (
        def encode(:COERCION_PLPGSQL) do
          3
        end

        def encode("COERCION_PLPGSQL") do
          3
        end
      ),
      (
        def encode(:COERCION_EXPLICIT) do
          4
        end

        def encode("COERCION_EXPLICIT") do
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
        :COERCION_CONTEXT_UNDEFINED
      end,
      def decode(1) do
        :COERCION_IMPLICIT
      end,
      def decode(2) do
        :COERCION_ASSIGNMENT
      end,
      def decode(3) do
        :COERCION_PLPGSQL
      end,
      def decode(4) do
        :COERCION_EXPLICIT
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :COERCION_CONTEXT_UNDEFINED},
        {1, :COERCION_IMPLICIT},
        {2, :COERCION_ASSIGNMENT},
        {3, :COERCION_PLPGSQL},
        {4, :COERCION_EXPLICIT}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:COERCION_CONTEXT_UNDEFINED) do
          true
        end,
        def has_constant?(:COERCION_IMPLICIT) do
          true
        end,
        def has_constant?(:COERCION_ASSIGNMENT) do
          true
        end,
        def has_constant?(:COERCION_PLPGSQL) do
          true
        end,
        def has_constant?(:COERCION_EXPLICIT) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
