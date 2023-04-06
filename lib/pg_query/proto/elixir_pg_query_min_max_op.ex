# credo:disable-for-this-file
defmodule PgQuery.MinMaxOp do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :MIN_MAX_OP_UNDEFINED
      def default() do
        :MIN_MAX_OP_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:MIN_MAX_OP_UNDEFINED) do
          0
        end

        def encode("MIN_MAX_OP_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:IS_GREATEST) do
          1
        end

        def encode("IS_GREATEST") do
          1
        end
      ),
      (
        def encode(:IS_LEAST) do
          2
        end

        def encode("IS_LEAST") do
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
        :MIN_MAX_OP_UNDEFINED
      end,
      def decode(1) do
        :IS_GREATEST
      end,
      def decode(2) do
        :IS_LEAST
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [{0, :MIN_MAX_OP_UNDEFINED}, {1, :IS_GREATEST}, {2, :IS_LEAST}]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:MIN_MAX_OP_UNDEFINED) do
          true
        end,
        def has_constant?(:IS_GREATEST) do
          true
        end,
        def has_constant?(:IS_LEAST) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
