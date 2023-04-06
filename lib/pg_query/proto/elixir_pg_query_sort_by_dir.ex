# credo:disable-for-this-file
defmodule PgQuery.SortByDir do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :SORT_BY_DIR_UNDEFINED
      def default() do
        :SORT_BY_DIR_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:SORT_BY_DIR_UNDEFINED) do
          0
        end

        def encode("SORT_BY_DIR_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:SORTBY_DEFAULT) do
          1
        end

        def encode("SORTBY_DEFAULT") do
          1
        end
      ),
      (
        def encode(:SORTBY_ASC) do
          2
        end

        def encode("SORTBY_ASC") do
          2
        end
      ),
      (
        def encode(:SORTBY_DESC) do
          3
        end

        def encode("SORTBY_DESC") do
          3
        end
      ),
      (
        def encode(:SORTBY_USING) do
          4
        end

        def encode("SORTBY_USING") do
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
        :SORT_BY_DIR_UNDEFINED
      end,
      def decode(1) do
        :SORTBY_DEFAULT
      end,
      def decode(2) do
        :SORTBY_ASC
      end,
      def decode(3) do
        :SORTBY_DESC
      end,
      def decode(4) do
        :SORTBY_USING
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :SORT_BY_DIR_UNDEFINED},
        {1, :SORTBY_DEFAULT},
        {2, :SORTBY_ASC},
        {3, :SORTBY_DESC},
        {4, :SORTBY_USING}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:SORT_BY_DIR_UNDEFINED) do
          true
        end,
        def has_constant?(:SORTBY_DEFAULT) do
          true
        end,
        def has_constant?(:SORTBY_ASC) do
          true
        end,
        def has_constant?(:SORTBY_DESC) do
          true
        end,
        def has_constant?(:SORTBY_USING) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
