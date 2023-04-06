# credo:disable-for-this-file
defmodule PgQuery.QuerySource do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :QUERY_SOURCE_UNDEFINED
      def default() do
        :QUERY_SOURCE_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:QUERY_SOURCE_UNDEFINED) do
          0
        end

        def encode("QUERY_SOURCE_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:QSRC_ORIGINAL) do
          1
        end

        def encode("QSRC_ORIGINAL") do
          1
        end
      ),
      (
        def encode(:QSRC_PARSER) do
          2
        end

        def encode("QSRC_PARSER") do
          2
        end
      ),
      (
        def encode(:QSRC_INSTEAD_RULE) do
          3
        end

        def encode("QSRC_INSTEAD_RULE") do
          3
        end
      ),
      (
        def encode(:QSRC_QUAL_INSTEAD_RULE) do
          4
        end

        def encode("QSRC_QUAL_INSTEAD_RULE") do
          4
        end
      ),
      (
        def encode(:QSRC_NON_INSTEAD_RULE) do
          5
        end

        def encode("QSRC_NON_INSTEAD_RULE") do
          5
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :QUERY_SOURCE_UNDEFINED
      end,
      def decode(1) do
        :QSRC_ORIGINAL
      end,
      def decode(2) do
        :QSRC_PARSER
      end,
      def decode(3) do
        :QSRC_INSTEAD_RULE
      end,
      def decode(4) do
        :QSRC_QUAL_INSTEAD_RULE
      end,
      def decode(5) do
        :QSRC_NON_INSTEAD_RULE
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :QUERY_SOURCE_UNDEFINED},
        {1, :QSRC_ORIGINAL},
        {2, :QSRC_PARSER},
        {3, :QSRC_INSTEAD_RULE},
        {4, :QSRC_QUAL_INSTEAD_RULE},
        {5, :QSRC_NON_INSTEAD_RULE}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:QUERY_SOURCE_UNDEFINED) do
          true
        end,
        def has_constant?(:QSRC_ORIGINAL) do
          true
        end,
        def has_constant?(:QSRC_PARSER) do
          true
        end,
        def has_constant?(:QSRC_INSTEAD_RULE) do
          true
        end,
        def has_constant?(:QSRC_QUAL_INSTEAD_RULE) do
          true
        end,
        def has_constant?(:QSRC_NON_INSTEAD_RULE) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
