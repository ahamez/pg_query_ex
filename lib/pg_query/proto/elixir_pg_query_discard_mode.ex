# credo:disable-for-this-file
defmodule PgQuery.DiscardMode do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :DISCARD_MODE_UNDEFINED
      def default() do
        :DISCARD_MODE_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:DISCARD_MODE_UNDEFINED) do
          0
        end

        def encode("DISCARD_MODE_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:DISCARD_ALL) do
          1
        end

        def encode("DISCARD_ALL") do
          1
        end
      ),
      (
        def encode(:DISCARD_PLANS) do
          2
        end

        def encode("DISCARD_PLANS") do
          2
        end
      ),
      (
        def encode(:DISCARD_SEQUENCES) do
          3
        end

        def encode("DISCARD_SEQUENCES") do
          3
        end
      ),
      (
        def encode(:DISCARD_TEMP) do
          4
        end

        def encode("DISCARD_TEMP") do
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
        :DISCARD_MODE_UNDEFINED
      end,
      def decode(1) do
        :DISCARD_ALL
      end,
      def decode(2) do
        :DISCARD_PLANS
      end,
      def decode(3) do
        :DISCARD_SEQUENCES
      end,
      def decode(4) do
        :DISCARD_TEMP
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :DISCARD_MODE_UNDEFINED},
        {1, :DISCARD_ALL},
        {2, :DISCARD_PLANS},
        {3, :DISCARD_SEQUENCES},
        {4, :DISCARD_TEMP}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:DISCARD_MODE_UNDEFINED) do
          true
        end,
        def has_constant?(:DISCARD_ALL) do
          true
        end,
        def has_constant?(:DISCARD_PLANS) do
          true
        end,
        def has_constant?(:DISCARD_SEQUENCES) do
          true
        end,
        def has_constant?(:DISCARD_TEMP) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
