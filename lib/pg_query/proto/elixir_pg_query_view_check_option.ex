# credo:disable-for-this-file
defmodule PgQuery.ViewCheckOption do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :VIEW_CHECK_OPTION_UNDEFINED
      def default() do
        :VIEW_CHECK_OPTION_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:VIEW_CHECK_OPTION_UNDEFINED) do
          0
        end

        def encode("VIEW_CHECK_OPTION_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:NO_CHECK_OPTION) do
          1
        end

        def encode("NO_CHECK_OPTION") do
          1
        end
      ),
      (
        def encode(:LOCAL_CHECK_OPTION) do
          2
        end

        def encode("LOCAL_CHECK_OPTION") do
          2
        end
      ),
      (
        def encode(:CASCADED_CHECK_OPTION) do
          3
        end

        def encode("CASCADED_CHECK_OPTION") do
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
        :VIEW_CHECK_OPTION_UNDEFINED
      end,
      def decode(1) do
        :NO_CHECK_OPTION
      end,
      def decode(2) do
        :LOCAL_CHECK_OPTION
      end,
      def decode(3) do
        :CASCADED_CHECK_OPTION
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :VIEW_CHECK_OPTION_UNDEFINED},
        {1, :NO_CHECK_OPTION},
        {2, :LOCAL_CHECK_OPTION},
        {3, :CASCADED_CHECK_OPTION}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:VIEW_CHECK_OPTION_UNDEFINED) do
          true
        end,
        def has_constant?(:NO_CHECK_OPTION) do
          true
        end,
        def has_constant?(:LOCAL_CHECK_OPTION) do
          true
        end,
        def has_constant?(:CASCADED_CHECK_OPTION) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
