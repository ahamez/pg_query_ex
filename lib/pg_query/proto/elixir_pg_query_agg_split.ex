# credo:disable-for-this-file
defmodule PgQuery.AggSplit do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :AGG_SPLIT_UNDEFINED
      def default() do
        :AGG_SPLIT_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:AGG_SPLIT_UNDEFINED) do
          0
        end

        def encode("AGG_SPLIT_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:AGGSPLIT_SIMPLE) do
          1
        end

        def encode("AGGSPLIT_SIMPLE") do
          1
        end
      ),
      (
        def encode(:AGGSPLIT_INITIAL_SERIAL) do
          2
        end

        def encode("AGGSPLIT_INITIAL_SERIAL") do
          2
        end
      ),
      (
        def encode(:AGGSPLIT_FINAL_DESERIAL) do
          3
        end

        def encode("AGGSPLIT_FINAL_DESERIAL") do
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
        :AGG_SPLIT_UNDEFINED
      end,
      def decode(1) do
        :AGGSPLIT_SIMPLE
      end,
      def decode(2) do
        :AGGSPLIT_INITIAL_SERIAL
      end,
      def decode(3) do
        :AGGSPLIT_FINAL_DESERIAL
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :AGG_SPLIT_UNDEFINED},
        {1, :AGGSPLIT_SIMPLE},
        {2, :AGGSPLIT_INITIAL_SERIAL},
        {3, :AGGSPLIT_FINAL_DESERIAL}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:AGG_SPLIT_UNDEFINED) do
          true
        end,
        def has_constant?(:AGGSPLIT_SIMPLE) do
          true
        end,
        def has_constant?(:AGGSPLIT_INITIAL_SERIAL) do
          true
        end,
        def has_constant?(:AGGSPLIT_FINAL_DESERIAL) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
