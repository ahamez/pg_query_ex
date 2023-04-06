# credo:disable-for-this-file
defmodule PgQuery.OverridingKind do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :OVERRIDING_KIND_UNDEFINED
      def default() do
        :OVERRIDING_KIND_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:OVERRIDING_KIND_UNDEFINED) do
          0
        end

        def encode("OVERRIDING_KIND_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:OVERRIDING_NOT_SET) do
          1
        end

        def encode("OVERRIDING_NOT_SET") do
          1
        end
      ),
      (
        def encode(:OVERRIDING_USER_VALUE) do
          2
        end

        def encode("OVERRIDING_USER_VALUE") do
          2
        end
      ),
      (
        def encode(:OVERRIDING_SYSTEM_VALUE) do
          3
        end

        def encode("OVERRIDING_SYSTEM_VALUE") do
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
        :OVERRIDING_KIND_UNDEFINED
      end,
      def decode(1) do
        :OVERRIDING_NOT_SET
      end,
      def decode(2) do
        :OVERRIDING_USER_VALUE
      end,
      def decode(3) do
        :OVERRIDING_SYSTEM_VALUE
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :OVERRIDING_KIND_UNDEFINED},
        {1, :OVERRIDING_NOT_SET},
        {2, :OVERRIDING_USER_VALUE},
        {3, :OVERRIDING_SYSTEM_VALUE}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:OVERRIDING_KIND_UNDEFINED) do
          true
        end,
        def has_constant?(:OVERRIDING_NOT_SET) do
          true
        end,
        def has_constant?(:OVERRIDING_USER_VALUE) do
          true
        end,
        def has_constant?(:OVERRIDING_SYSTEM_VALUE) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
