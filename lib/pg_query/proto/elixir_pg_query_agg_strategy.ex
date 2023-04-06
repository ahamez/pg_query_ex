# credo:disable-for-this-file
defmodule PgQuery.AggStrategy do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :AGG_STRATEGY_UNDEFINED
      def default() do
        :AGG_STRATEGY_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:AGG_STRATEGY_UNDEFINED) do
          0
        end

        def encode("AGG_STRATEGY_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:AGG_PLAIN) do
          1
        end

        def encode("AGG_PLAIN") do
          1
        end
      ),
      (
        def encode(:AGG_SORTED) do
          2
        end

        def encode("AGG_SORTED") do
          2
        end
      ),
      (
        def encode(:AGG_HASHED) do
          3
        end

        def encode("AGG_HASHED") do
          3
        end
      ),
      (
        def encode(:AGG_MIXED) do
          4
        end

        def encode("AGG_MIXED") do
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
        :AGG_STRATEGY_UNDEFINED
      end,
      def decode(1) do
        :AGG_PLAIN
      end,
      def decode(2) do
        :AGG_SORTED
      end,
      def decode(3) do
        :AGG_HASHED
      end,
      def decode(4) do
        :AGG_MIXED
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :AGG_STRATEGY_UNDEFINED},
        {1, :AGG_PLAIN},
        {2, :AGG_SORTED},
        {3, :AGG_HASHED},
        {4, :AGG_MIXED}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:AGG_STRATEGY_UNDEFINED) do
          true
        end,
        def has_constant?(:AGG_PLAIN) do
          true
        end,
        def has_constant?(:AGG_SORTED) do
          true
        end,
        def has_constant?(:AGG_HASHED) do
          true
        end,
        def has_constant?(:AGG_MIXED) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
