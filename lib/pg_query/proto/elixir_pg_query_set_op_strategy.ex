# credo:disable-for-this-file
defmodule PgQuery.SetOpStrategy do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :SET_OP_STRATEGY_UNDEFINED
      def default() do
        :SET_OP_STRATEGY_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:SET_OP_STRATEGY_UNDEFINED) do
          0
        end

        def encode("SET_OP_STRATEGY_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:SETOP_SORTED) do
          1
        end

        def encode("SETOP_SORTED") do
          1
        end
      ),
      (
        def encode(:SETOP_HASHED) do
          2
        end

        def encode("SETOP_HASHED") do
          2
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :SET_OP_STRATEGY_UNDEFINED
      end,
      def decode(1) do
        :SETOP_SORTED
      end,
      def decode(2) do
        :SETOP_HASHED
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [{0, :SET_OP_STRATEGY_UNDEFINED}, {1, :SETOP_SORTED}, {2, :SETOP_HASHED}]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:SET_OP_STRATEGY_UNDEFINED) do
          true
        end,
        def has_constant?(:SETOP_SORTED) do
          true
        end,
        def has_constant?(:SETOP_HASHED) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
