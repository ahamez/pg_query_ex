# credo:disable-for-this-file
defmodule PgQuery.OnConflictAction do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :ON_CONFLICT_ACTION_UNDEFINED
      def default() do
        :ON_CONFLICT_ACTION_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:ON_CONFLICT_ACTION_UNDEFINED) do
          0
        end

        def encode("ON_CONFLICT_ACTION_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:ONCONFLICT_NONE) do
          1
        end

        def encode("ONCONFLICT_NONE") do
          1
        end
      ),
      (
        def encode(:ONCONFLICT_NOTHING) do
          2
        end

        def encode("ONCONFLICT_NOTHING") do
          2
        end
      ),
      (
        def encode(:ONCONFLICT_UPDATE) do
          3
        end

        def encode("ONCONFLICT_UPDATE") do
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
        :ON_CONFLICT_ACTION_UNDEFINED
      end,
      def decode(1) do
        :ONCONFLICT_NONE
      end,
      def decode(2) do
        :ONCONFLICT_NOTHING
      end,
      def decode(3) do
        :ONCONFLICT_UPDATE
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :ON_CONFLICT_ACTION_UNDEFINED},
        {1, :ONCONFLICT_NONE},
        {2, :ONCONFLICT_NOTHING},
        {3, :ONCONFLICT_UPDATE}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:ON_CONFLICT_ACTION_UNDEFINED) do
          true
        end,
        def has_constant?(:ONCONFLICT_NONE) do
          true
        end,
        def has_constant?(:ONCONFLICT_NOTHING) do
          true
        end,
        def has_constant?(:ONCONFLICT_UPDATE) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
