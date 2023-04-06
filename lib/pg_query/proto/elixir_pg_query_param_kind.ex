# credo:disable-for-this-file
defmodule PgQuery.ParamKind do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :PARAM_KIND_UNDEFINED
      def default() do
        :PARAM_KIND_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:PARAM_KIND_UNDEFINED) do
          0
        end

        def encode("PARAM_KIND_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:PARAM_EXTERN) do
          1
        end

        def encode("PARAM_EXTERN") do
          1
        end
      ),
      (
        def encode(:PARAM_EXEC) do
          2
        end

        def encode("PARAM_EXEC") do
          2
        end
      ),
      (
        def encode(:PARAM_SUBLINK) do
          3
        end

        def encode("PARAM_SUBLINK") do
          3
        end
      ),
      (
        def encode(:PARAM_MULTIEXPR) do
          4
        end

        def encode("PARAM_MULTIEXPR") do
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
        :PARAM_KIND_UNDEFINED
      end,
      def decode(1) do
        :PARAM_EXTERN
      end,
      def decode(2) do
        :PARAM_EXEC
      end,
      def decode(3) do
        :PARAM_SUBLINK
      end,
      def decode(4) do
        :PARAM_MULTIEXPR
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :PARAM_KIND_UNDEFINED},
        {1, :PARAM_EXTERN},
        {2, :PARAM_EXEC},
        {3, :PARAM_SUBLINK},
        {4, :PARAM_MULTIEXPR}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:PARAM_KIND_UNDEFINED) do
          true
        end,
        def has_constant?(:PARAM_EXTERN) do
          true
        end,
        def has_constant?(:PARAM_EXEC) do
          true
        end,
        def has_constant?(:PARAM_SUBLINK) do
          true
        end,
        def has_constant?(:PARAM_MULTIEXPR) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
