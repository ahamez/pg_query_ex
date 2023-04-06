# credo:disable-for-this-file
defmodule PgQuery.LimitOption do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :LIMIT_OPTION_UNDEFINED
      def default() do
        :LIMIT_OPTION_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:LIMIT_OPTION_UNDEFINED) do
          0
        end

        def encode("LIMIT_OPTION_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:LIMIT_OPTION_DEFAULT) do
          1
        end

        def encode("LIMIT_OPTION_DEFAULT") do
          1
        end
      ),
      (
        def encode(:LIMIT_OPTION_COUNT) do
          2
        end

        def encode("LIMIT_OPTION_COUNT") do
          2
        end
      ),
      (
        def encode(:LIMIT_OPTION_WITH_TIES) do
          3
        end

        def encode("LIMIT_OPTION_WITH_TIES") do
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
        :LIMIT_OPTION_UNDEFINED
      end,
      def decode(1) do
        :LIMIT_OPTION_DEFAULT
      end,
      def decode(2) do
        :LIMIT_OPTION_COUNT
      end,
      def decode(3) do
        :LIMIT_OPTION_WITH_TIES
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :LIMIT_OPTION_UNDEFINED},
        {1, :LIMIT_OPTION_DEFAULT},
        {2, :LIMIT_OPTION_COUNT},
        {3, :LIMIT_OPTION_WITH_TIES}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:LIMIT_OPTION_UNDEFINED) do
          true
        end,
        def has_constant?(:LIMIT_OPTION_DEFAULT) do
          true
        end,
        def has_constant?(:LIMIT_OPTION_COUNT) do
          true
        end,
        def has_constant?(:LIMIT_OPTION_WITH_TIES) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
