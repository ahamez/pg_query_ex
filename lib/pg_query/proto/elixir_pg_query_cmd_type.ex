# credo:disable-for-this-file
defmodule PgQuery.CmdType do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :CMD_TYPE_UNDEFINED
      def default() do
        :CMD_TYPE_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:CMD_TYPE_UNDEFINED) do
          0
        end

        def encode("CMD_TYPE_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:CMD_UNKNOWN) do
          1
        end

        def encode("CMD_UNKNOWN") do
          1
        end
      ),
      (
        def encode(:CMD_SELECT) do
          2
        end

        def encode("CMD_SELECT") do
          2
        end
      ),
      (
        def encode(:CMD_UPDATE) do
          3
        end

        def encode("CMD_UPDATE") do
          3
        end
      ),
      (
        def encode(:CMD_INSERT) do
          4
        end

        def encode("CMD_INSERT") do
          4
        end
      ),
      (
        def encode(:CMD_DELETE) do
          5
        end

        def encode("CMD_DELETE") do
          5
        end
      ),
      (
        def encode(:CMD_MERGE) do
          6
        end

        def encode("CMD_MERGE") do
          6
        end
      ),
      (
        def encode(:CMD_UTILITY) do
          7
        end

        def encode("CMD_UTILITY") do
          7
        end
      ),
      (
        def encode(:CMD_NOTHING) do
          8
        end

        def encode("CMD_NOTHING") do
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
        :CMD_TYPE_UNDEFINED
      end,
      def decode(1) do
        :CMD_UNKNOWN
      end,
      def decode(2) do
        :CMD_SELECT
      end,
      def decode(3) do
        :CMD_UPDATE
      end,
      def decode(4) do
        :CMD_INSERT
      end,
      def decode(5) do
        :CMD_DELETE
      end,
      def decode(6) do
        :CMD_MERGE
      end,
      def decode(7) do
        :CMD_UTILITY
      end,
      def decode(8) do
        :CMD_NOTHING
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :CMD_TYPE_UNDEFINED},
        {1, :CMD_UNKNOWN},
        {2, :CMD_SELECT},
        {3, :CMD_UPDATE},
        {4, :CMD_INSERT},
        {5, :CMD_DELETE},
        {6, :CMD_MERGE},
        {7, :CMD_UTILITY},
        {8, :CMD_NOTHING}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:CMD_TYPE_UNDEFINED) do
          true
        end,
        def has_constant?(:CMD_UNKNOWN) do
          true
        end,
        def has_constant?(:CMD_SELECT) do
          true
        end,
        def has_constant?(:CMD_UPDATE) do
          true
        end,
        def has_constant?(:CMD_INSERT) do
          true
        end,
        def has_constant?(:CMD_DELETE) do
          true
        end,
        def has_constant?(:CMD_MERGE) do
          true
        end,
        def has_constant?(:CMD_UTILITY) do
          true
        end,
        def has_constant?(:CMD_NOTHING) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
