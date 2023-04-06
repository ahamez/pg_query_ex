# credo:disable-for-this-file
defmodule PgQuery.AlterSubscriptionType do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :ALTER_SUBSCRIPTION_TYPE_UNDEFINED
      def default() do
        :ALTER_SUBSCRIPTION_TYPE_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:ALTER_SUBSCRIPTION_TYPE_UNDEFINED) do
          0
        end

        def encode("ALTER_SUBSCRIPTION_TYPE_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:ALTER_SUBSCRIPTION_OPTIONS) do
          1
        end

        def encode("ALTER_SUBSCRIPTION_OPTIONS") do
          1
        end
      ),
      (
        def encode(:ALTER_SUBSCRIPTION_CONNECTION) do
          2
        end

        def encode("ALTER_SUBSCRIPTION_CONNECTION") do
          2
        end
      ),
      (
        def encode(:ALTER_SUBSCRIPTION_SET_PUBLICATION) do
          3
        end

        def encode("ALTER_SUBSCRIPTION_SET_PUBLICATION") do
          3
        end
      ),
      (
        def encode(:ALTER_SUBSCRIPTION_ADD_PUBLICATION) do
          4
        end

        def encode("ALTER_SUBSCRIPTION_ADD_PUBLICATION") do
          4
        end
      ),
      (
        def encode(:ALTER_SUBSCRIPTION_DROP_PUBLICATION) do
          5
        end

        def encode("ALTER_SUBSCRIPTION_DROP_PUBLICATION") do
          5
        end
      ),
      (
        def encode(:ALTER_SUBSCRIPTION_REFRESH) do
          6
        end

        def encode("ALTER_SUBSCRIPTION_REFRESH") do
          6
        end
      ),
      (
        def encode(:ALTER_SUBSCRIPTION_ENABLED) do
          7
        end

        def encode("ALTER_SUBSCRIPTION_ENABLED") do
          7
        end
      ),
      (
        def encode(:ALTER_SUBSCRIPTION_SKIP) do
          8
        end

        def encode("ALTER_SUBSCRIPTION_SKIP") do
          8
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :ALTER_SUBSCRIPTION_TYPE_UNDEFINED
      end,
      def decode(1) do
        :ALTER_SUBSCRIPTION_OPTIONS
      end,
      def decode(2) do
        :ALTER_SUBSCRIPTION_CONNECTION
      end,
      def decode(3) do
        :ALTER_SUBSCRIPTION_SET_PUBLICATION
      end,
      def decode(4) do
        :ALTER_SUBSCRIPTION_ADD_PUBLICATION
      end,
      def decode(5) do
        :ALTER_SUBSCRIPTION_DROP_PUBLICATION
      end,
      def decode(6) do
        :ALTER_SUBSCRIPTION_REFRESH
      end,
      def decode(7) do
        :ALTER_SUBSCRIPTION_ENABLED
      end,
      def decode(8) do
        :ALTER_SUBSCRIPTION_SKIP
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :ALTER_SUBSCRIPTION_TYPE_UNDEFINED},
        {1, :ALTER_SUBSCRIPTION_OPTIONS},
        {2, :ALTER_SUBSCRIPTION_CONNECTION},
        {3, :ALTER_SUBSCRIPTION_SET_PUBLICATION},
        {4, :ALTER_SUBSCRIPTION_ADD_PUBLICATION},
        {5, :ALTER_SUBSCRIPTION_DROP_PUBLICATION},
        {6, :ALTER_SUBSCRIPTION_REFRESH},
        {7, :ALTER_SUBSCRIPTION_ENABLED},
        {8, :ALTER_SUBSCRIPTION_SKIP}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:ALTER_SUBSCRIPTION_TYPE_UNDEFINED) do
          true
        end,
        def has_constant?(:ALTER_SUBSCRIPTION_OPTIONS) do
          true
        end,
        def has_constant?(:ALTER_SUBSCRIPTION_CONNECTION) do
          true
        end,
        def has_constant?(:ALTER_SUBSCRIPTION_SET_PUBLICATION) do
          true
        end,
        def has_constant?(:ALTER_SUBSCRIPTION_ADD_PUBLICATION) do
          true
        end,
        def has_constant?(:ALTER_SUBSCRIPTION_DROP_PUBLICATION) do
          true
        end,
        def has_constant?(:ALTER_SUBSCRIPTION_REFRESH) do
          true
        end,
        def has_constant?(:ALTER_SUBSCRIPTION_ENABLED) do
          true
        end,
        def has_constant?(:ALTER_SUBSCRIPTION_SKIP) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
