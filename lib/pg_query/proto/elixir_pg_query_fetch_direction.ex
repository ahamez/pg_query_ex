# credo:disable-for-this-file
defmodule PgQuery.FetchDirection do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :FETCH_DIRECTION_UNDEFINED
      def default() do
        :FETCH_DIRECTION_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:FETCH_DIRECTION_UNDEFINED) do
          0
        end

        def encode("FETCH_DIRECTION_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:FETCH_FORWARD) do
          1
        end

        def encode("FETCH_FORWARD") do
          1
        end
      ),
      (
        def encode(:FETCH_BACKWARD) do
          2
        end

        def encode("FETCH_BACKWARD") do
          2
        end
      ),
      (
        def encode(:FETCH_ABSOLUTE) do
          3
        end

        def encode("FETCH_ABSOLUTE") do
          3
        end
      ),
      (
        def encode(:FETCH_RELATIVE) do
          4
        end

        def encode("FETCH_RELATIVE") do
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
        :FETCH_DIRECTION_UNDEFINED
      end,
      def decode(1) do
        :FETCH_FORWARD
      end,
      def decode(2) do
        :FETCH_BACKWARD
      end,
      def decode(3) do
        :FETCH_ABSOLUTE
      end,
      def decode(4) do
        :FETCH_RELATIVE
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :FETCH_DIRECTION_UNDEFINED},
        {1, :FETCH_FORWARD},
        {2, :FETCH_BACKWARD},
        {3, :FETCH_ABSOLUTE},
        {4, :FETCH_RELATIVE}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:FETCH_DIRECTION_UNDEFINED) do
          true
        end,
        def has_constant?(:FETCH_FORWARD) do
          true
        end,
        def has_constant?(:FETCH_BACKWARD) do
          true
        end,
        def has_constant?(:FETCH_ABSOLUTE) do
          true
        end,
        def has_constant?(:FETCH_RELATIVE) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
