# credo:disable-for-this-file
defmodule PgQuery.SetQuantifier do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :SET_QUANTIFIER_UNDEFINED
      def default() do
        :SET_QUANTIFIER_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:SET_QUANTIFIER_UNDEFINED) do
          0
        end

        def encode("SET_QUANTIFIER_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:SET_QUANTIFIER_DEFAULT) do
          1
        end

        def encode("SET_QUANTIFIER_DEFAULT") do
          1
        end
      ),
      (
        def encode(:SET_QUANTIFIER_ALL) do
          2
        end

        def encode("SET_QUANTIFIER_ALL") do
          2
        end
      ),
      (
        def encode(:SET_QUANTIFIER_DISTINCT) do
          3
        end

        def encode("SET_QUANTIFIER_DISTINCT") do
          3
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :SET_QUANTIFIER_UNDEFINED
      end,
      def decode(1) do
        :SET_QUANTIFIER_DEFAULT
      end,
      def decode(2) do
        :SET_QUANTIFIER_ALL
      end,
      def decode(3) do
        :SET_QUANTIFIER_DISTINCT
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :SET_QUANTIFIER_UNDEFINED},
        {1, :SET_QUANTIFIER_DEFAULT},
        {2, :SET_QUANTIFIER_ALL},
        {3, :SET_QUANTIFIER_DISTINCT}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:SET_QUANTIFIER_UNDEFINED) do
          true
        end,
        def has_constant?(:SET_QUANTIFIER_DEFAULT) do
          true
        end,
        def has_constant?(:SET_QUANTIFIER_ALL) do
          true
        end,
        def has_constant?(:SET_QUANTIFIER_DISTINCT) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
