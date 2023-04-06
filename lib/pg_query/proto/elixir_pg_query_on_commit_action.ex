# credo:disable-for-this-file
defmodule PgQuery.OnCommitAction do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :ON_COMMIT_ACTION_UNDEFINED
      def default() do
        :ON_COMMIT_ACTION_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:ON_COMMIT_ACTION_UNDEFINED) do
          0
        end

        def encode("ON_COMMIT_ACTION_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:ONCOMMIT_NOOP) do
          1
        end

        def encode("ONCOMMIT_NOOP") do
          1
        end
      ),
      (
        def encode(:ONCOMMIT_PRESERVE_ROWS) do
          2
        end

        def encode("ONCOMMIT_PRESERVE_ROWS") do
          2
        end
      ),
      (
        def encode(:ONCOMMIT_DELETE_ROWS) do
          3
        end

        def encode("ONCOMMIT_DELETE_ROWS") do
          3
        end
      ),
      (
        def encode(:ONCOMMIT_DROP) do
          4
        end

        def encode("ONCOMMIT_DROP") do
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
        :ON_COMMIT_ACTION_UNDEFINED
      end,
      def decode(1) do
        :ONCOMMIT_NOOP
      end,
      def decode(2) do
        :ONCOMMIT_PRESERVE_ROWS
      end,
      def decode(3) do
        :ONCOMMIT_DELETE_ROWS
      end,
      def decode(4) do
        :ONCOMMIT_DROP
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :ON_COMMIT_ACTION_UNDEFINED},
        {1, :ONCOMMIT_NOOP},
        {2, :ONCOMMIT_PRESERVE_ROWS},
        {3, :ONCOMMIT_DELETE_ROWS},
        {4, :ONCOMMIT_DROP}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:ON_COMMIT_ACTION_UNDEFINED) do
          true
        end,
        def has_constant?(:ONCOMMIT_NOOP) do
          true
        end,
        def has_constant?(:ONCOMMIT_PRESERVE_ROWS) do
          true
        end,
        def has_constant?(:ONCOMMIT_DELETE_ROWS) do
          true
        end,
        def has_constant?(:ONCOMMIT_DROP) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
