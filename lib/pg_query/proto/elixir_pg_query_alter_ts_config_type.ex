# credo:disable-for-this-file
defmodule PgQuery.AlterTSConfigType do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :ALTER_TSCONFIG_TYPE_UNDEFINED
      def default() do
        :ALTER_TSCONFIG_TYPE_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:ALTER_TSCONFIG_TYPE_UNDEFINED) do
          0
        end

        def encode("ALTER_TSCONFIG_TYPE_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:ALTER_TSCONFIG_ADD_MAPPING) do
          1
        end

        def encode("ALTER_TSCONFIG_ADD_MAPPING") do
          1
        end
      ),
      (
        def encode(:ALTER_TSCONFIG_ALTER_MAPPING_FOR_TOKEN) do
          2
        end

        def encode("ALTER_TSCONFIG_ALTER_MAPPING_FOR_TOKEN") do
          2
        end
      ),
      (
        def encode(:ALTER_TSCONFIG_REPLACE_DICT) do
          3
        end

        def encode("ALTER_TSCONFIG_REPLACE_DICT") do
          3
        end
      ),
      (
        def encode(:ALTER_TSCONFIG_REPLACE_DICT_FOR_TOKEN) do
          4
        end

        def encode("ALTER_TSCONFIG_REPLACE_DICT_FOR_TOKEN") do
          4
        end
      ),
      (
        def encode(:ALTER_TSCONFIG_DROP_MAPPING) do
          5
        end

        def encode("ALTER_TSCONFIG_DROP_MAPPING") do
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
        :ALTER_TSCONFIG_TYPE_UNDEFINED
      end,
      def decode(1) do
        :ALTER_TSCONFIG_ADD_MAPPING
      end,
      def decode(2) do
        :ALTER_TSCONFIG_ALTER_MAPPING_FOR_TOKEN
      end,
      def decode(3) do
        :ALTER_TSCONFIG_REPLACE_DICT
      end,
      def decode(4) do
        :ALTER_TSCONFIG_REPLACE_DICT_FOR_TOKEN
      end,
      def decode(5) do
        :ALTER_TSCONFIG_DROP_MAPPING
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :ALTER_TSCONFIG_TYPE_UNDEFINED},
        {1, :ALTER_TSCONFIG_ADD_MAPPING},
        {2, :ALTER_TSCONFIG_ALTER_MAPPING_FOR_TOKEN},
        {3, :ALTER_TSCONFIG_REPLACE_DICT},
        {4, :ALTER_TSCONFIG_REPLACE_DICT_FOR_TOKEN},
        {5, :ALTER_TSCONFIG_DROP_MAPPING}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:ALTER_TSCONFIG_TYPE_UNDEFINED) do
          true
        end,
        def has_constant?(:ALTER_TSCONFIG_ADD_MAPPING) do
          true
        end,
        def has_constant?(:ALTER_TSCONFIG_ALTER_MAPPING_FOR_TOKEN) do
          true
        end,
        def has_constant?(:ALTER_TSCONFIG_REPLACE_DICT) do
          true
        end,
        def has_constant?(:ALTER_TSCONFIG_REPLACE_DICT_FOR_TOKEN) do
          true
        end,
        def has_constant?(:ALTER_TSCONFIG_DROP_MAPPING) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
