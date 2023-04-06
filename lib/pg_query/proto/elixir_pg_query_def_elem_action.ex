# credo:disable-for-this-file
defmodule PgQuery.DefElemAction do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :DEF_ELEM_ACTION_UNDEFINED
      def default() do
        :DEF_ELEM_ACTION_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:DEF_ELEM_ACTION_UNDEFINED) do
          0
        end

        def encode("DEF_ELEM_ACTION_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:DEFELEM_UNSPEC) do
          1
        end

        def encode("DEFELEM_UNSPEC") do
          1
        end
      ),
      (
        def encode(:DEFELEM_SET) do
          2
        end

        def encode("DEFELEM_SET") do
          2
        end
      ),
      (
        def encode(:DEFELEM_ADD) do
          3
        end

        def encode("DEFELEM_ADD") do
          3
        end
      ),
      (
        def encode(:DEFELEM_DROP) do
          4
        end

        def encode("DEFELEM_DROP") do
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
        :DEF_ELEM_ACTION_UNDEFINED
      end,
      def decode(1) do
        :DEFELEM_UNSPEC
      end,
      def decode(2) do
        :DEFELEM_SET
      end,
      def decode(3) do
        :DEFELEM_ADD
      end,
      def decode(4) do
        :DEFELEM_DROP
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :DEF_ELEM_ACTION_UNDEFINED},
        {1, :DEFELEM_UNSPEC},
        {2, :DEFELEM_SET},
        {3, :DEFELEM_ADD},
        {4, :DEFELEM_DROP}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:DEF_ELEM_ACTION_UNDEFINED) do
          true
        end,
        def has_constant?(:DEFELEM_UNSPEC) do
          true
        end,
        def has_constant?(:DEFELEM_SET) do
          true
        end,
        def has_constant?(:DEFELEM_ADD) do
          true
        end,
        def has_constant?(:DEFELEM_DROP) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
