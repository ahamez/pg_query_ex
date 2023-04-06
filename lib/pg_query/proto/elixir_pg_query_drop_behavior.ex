# credo:disable-for-this-file
defmodule PgQuery.DropBehavior do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :DROP_BEHAVIOR_UNDEFINED
      def default() do
        :DROP_BEHAVIOR_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:DROP_BEHAVIOR_UNDEFINED) do
          0
        end

        def encode("DROP_BEHAVIOR_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:DROP_RESTRICT) do
          1
        end

        def encode("DROP_RESTRICT") do
          1
        end
      ),
      (
        def encode(:DROP_CASCADE) do
          2
        end

        def encode("DROP_CASCADE") do
          2
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :DROP_BEHAVIOR_UNDEFINED
      end,
      def decode(1) do
        :DROP_RESTRICT
      end,
      def decode(2) do
        :DROP_CASCADE
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [{0, :DROP_BEHAVIOR_UNDEFINED}, {1, :DROP_RESTRICT}, {2, :DROP_CASCADE}]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:DROP_BEHAVIOR_UNDEFINED) do
          true
        end,
        def has_constant?(:DROP_RESTRICT) do
          true
        end,
        def has_constant?(:DROP_CASCADE) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
