# credo:disable-for-this-file
defmodule PgQuery.RowCompareType do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :ROW_COMPARE_TYPE_UNDEFINED
      def default() do
        :ROW_COMPARE_TYPE_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:ROW_COMPARE_TYPE_UNDEFINED) do
          0
        end

        def encode("ROW_COMPARE_TYPE_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:ROWCOMPARE_LT) do
          1
        end

        def encode("ROWCOMPARE_LT") do
          1
        end
      ),
      (
        def encode(:ROWCOMPARE_LE) do
          2
        end

        def encode("ROWCOMPARE_LE") do
          2
        end
      ),
      (
        def encode(:ROWCOMPARE_EQ) do
          3
        end

        def encode("ROWCOMPARE_EQ") do
          3
        end
      ),
      (
        def encode(:ROWCOMPARE_GE) do
          4
        end

        def encode("ROWCOMPARE_GE") do
          4
        end
      ),
      (
        def encode(:ROWCOMPARE_GT) do
          5
        end

        def encode("ROWCOMPARE_GT") do
          5
        end
      ),
      (
        def encode(:ROWCOMPARE_NE) do
          6
        end

        def encode("ROWCOMPARE_NE") do
          6
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :ROW_COMPARE_TYPE_UNDEFINED
      end,
      def decode(1) do
        :ROWCOMPARE_LT
      end,
      def decode(2) do
        :ROWCOMPARE_LE
      end,
      def decode(3) do
        :ROWCOMPARE_EQ
      end,
      def decode(4) do
        :ROWCOMPARE_GE
      end,
      def decode(5) do
        :ROWCOMPARE_GT
      end,
      def decode(6) do
        :ROWCOMPARE_NE
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :ROW_COMPARE_TYPE_UNDEFINED},
        {1, :ROWCOMPARE_LT},
        {2, :ROWCOMPARE_LE},
        {3, :ROWCOMPARE_EQ},
        {4, :ROWCOMPARE_GE},
        {5, :ROWCOMPARE_GT},
        {6, :ROWCOMPARE_NE}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:ROW_COMPARE_TYPE_UNDEFINED) do
          true
        end,
        def has_constant?(:ROWCOMPARE_LT) do
          true
        end,
        def has_constant?(:ROWCOMPARE_LE) do
          true
        end,
        def has_constant?(:ROWCOMPARE_EQ) do
          true
        end,
        def has_constant?(:ROWCOMPARE_GE) do
          true
        end,
        def has_constant?(:ROWCOMPARE_GT) do
          true
        end,
        def has_constant?(:ROWCOMPARE_NE) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
