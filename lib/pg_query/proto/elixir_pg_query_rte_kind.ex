# credo:disable-for-this-file
defmodule PgQuery.RTEKind do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :RTEKIND_UNDEFINED
      def default() do
        :RTEKIND_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:RTEKIND_UNDEFINED) do
          0
        end

        def encode("RTEKIND_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:RTE_RELATION) do
          1
        end

        def encode("RTE_RELATION") do
          1
        end
      ),
      (
        def encode(:RTE_SUBQUERY) do
          2
        end

        def encode("RTE_SUBQUERY") do
          2
        end
      ),
      (
        def encode(:RTE_JOIN) do
          3
        end

        def encode("RTE_JOIN") do
          3
        end
      ),
      (
        def encode(:RTE_FUNCTION) do
          4
        end

        def encode("RTE_FUNCTION") do
          4
        end
      ),
      (
        def encode(:RTE_TABLEFUNC) do
          5
        end

        def encode("RTE_TABLEFUNC") do
          5
        end
      ),
      (
        def encode(:RTE_VALUES) do
          6
        end

        def encode("RTE_VALUES") do
          6
        end
      ),
      (
        def encode(:RTE_CTE) do
          7
        end

        def encode("RTE_CTE") do
          7
        end
      ),
      (
        def encode(:RTE_NAMEDTUPLESTORE) do
          8
        end

        def encode("RTE_NAMEDTUPLESTORE") do
          8
        end
      ),
      (
        def encode(:RTE_RESULT) do
          9
        end

        def encode("RTE_RESULT") do
          9
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :RTEKIND_UNDEFINED
      end,
      def decode(1) do
        :RTE_RELATION
      end,
      def decode(2) do
        :RTE_SUBQUERY
      end,
      def decode(3) do
        :RTE_JOIN
      end,
      def decode(4) do
        :RTE_FUNCTION
      end,
      def decode(5) do
        :RTE_TABLEFUNC
      end,
      def decode(6) do
        :RTE_VALUES
      end,
      def decode(7) do
        :RTE_CTE
      end,
      def decode(8) do
        :RTE_NAMEDTUPLESTORE
      end,
      def decode(9) do
        :RTE_RESULT
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :RTEKIND_UNDEFINED},
        {1, :RTE_RELATION},
        {2, :RTE_SUBQUERY},
        {3, :RTE_JOIN},
        {4, :RTE_FUNCTION},
        {5, :RTE_TABLEFUNC},
        {6, :RTE_VALUES},
        {7, :RTE_CTE},
        {8, :RTE_NAMEDTUPLESTORE},
        {9, :RTE_RESULT}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:RTEKIND_UNDEFINED) do
          true
        end,
        def has_constant?(:RTE_RELATION) do
          true
        end,
        def has_constant?(:RTE_SUBQUERY) do
          true
        end,
        def has_constant?(:RTE_JOIN) do
          true
        end,
        def has_constant?(:RTE_FUNCTION) do
          true
        end,
        def has_constant?(:RTE_TABLEFUNC) do
          true
        end,
        def has_constant?(:RTE_VALUES) do
          true
        end,
        def has_constant?(:RTE_CTE) do
          true
        end,
        def has_constant?(:RTE_NAMEDTUPLESTORE) do
          true
        end,
        def has_constant?(:RTE_RESULT) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
