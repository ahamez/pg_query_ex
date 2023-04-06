# credo:disable-for-this-file
defmodule PgQuery.ConstrType do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :CONSTR_TYPE_UNDEFINED
      def default() do
        :CONSTR_TYPE_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:CONSTR_TYPE_UNDEFINED) do
          0
        end

        def encode("CONSTR_TYPE_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:CONSTR_NULL) do
          1
        end

        def encode("CONSTR_NULL") do
          1
        end
      ),
      (
        def encode(:CONSTR_NOTNULL) do
          2
        end

        def encode("CONSTR_NOTNULL") do
          2
        end
      ),
      (
        def encode(:CONSTR_DEFAULT) do
          3
        end

        def encode("CONSTR_DEFAULT") do
          3
        end
      ),
      (
        def encode(:CONSTR_IDENTITY) do
          4
        end

        def encode("CONSTR_IDENTITY") do
          4
        end
      ),
      (
        def encode(:CONSTR_GENERATED) do
          5
        end

        def encode("CONSTR_GENERATED") do
          5
        end
      ),
      (
        def encode(:CONSTR_CHECK) do
          6
        end

        def encode("CONSTR_CHECK") do
          6
        end
      ),
      (
        def encode(:CONSTR_PRIMARY) do
          7
        end

        def encode("CONSTR_PRIMARY") do
          7
        end
      ),
      (
        def encode(:CONSTR_UNIQUE) do
          8
        end

        def encode("CONSTR_UNIQUE") do
          8
        end
      ),
      (
        def encode(:CONSTR_EXCLUSION) do
          9
        end

        def encode("CONSTR_EXCLUSION") do
          9
        end
      ),
      (
        def encode(:CONSTR_FOREIGN) do
          10
        end

        def encode("CONSTR_FOREIGN") do
          10
        end
      ),
      (
        def encode(:CONSTR_ATTR_DEFERRABLE) do
          11
        end

        def encode("CONSTR_ATTR_DEFERRABLE") do
          11
        end
      ),
      (
        def encode(:CONSTR_ATTR_NOT_DEFERRABLE) do
          12
        end

        def encode("CONSTR_ATTR_NOT_DEFERRABLE") do
          12
        end
      ),
      (
        def encode(:CONSTR_ATTR_DEFERRED) do
          13
        end

        def encode("CONSTR_ATTR_DEFERRED") do
          13
        end
      ),
      (
        def encode(:CONSTR_ATTR_IMMEDIATE) do
          14
        end

        def encode("CONSTR_ATTR_IMMEDIATE") do
          14
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(0) do
        :CONSTR_TYPE_UNDEFINED
      end,
      def decode(1) do
        :CONSTR_NULL
      end,
      def decode(2) do
        :CONSTR_NOTNULL
      end,
      def decode(3) do
        :CONSTR_DEFAULT
      end,
      def decode(4) do
        :CONSTR_IDENTITY
      end,
      def decode(5) do
        :CONSTR_GENERATED
      end,
      def decode(6) do
        :CONSTR_CHECK
      end,
      def decode(7) do
        :CONSTR_PRIMARY
      end,
      def decode(8) do
        :CONSTR_UNIQUE
      end,
      def decode(9) do
        :CONSTR_EXCLUSION
      end,
      def decode(10) do
        :CONSTR_FOREIGN
      end,
      def decode(11) do
        :CONSTR_ATTR_DEFERRABLE
      end,
      def decode(12) do
        :CONSTR_ATTR_NOT_DEFERRABLE
      end,
      def decode(13) do
        :CONSTR_ATTR_DEFERRED
      end,
      def decode(14) do
        :CONSTR_ATTR_IMMEDIATE
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :CONSTR_TYPE_UNDEFINED},
        {1, :CONSTR_NULL},
        {2, :CONSTR_NOTNULL},
        {3, :CONSTR_DEFAULT},
        {4, :CONSTR_IDENTITY},
        {5, :CONSTR_GENERATED},
        {6, :CONSTR_CHECK},
        {7, :CONSTR_PRIMARY},
        {8, :CONSTR_UNIQUE},
        {9, :CONSTR_EXCLUSION},
        {10, :CONSTR_FOREIGN},
        {11, :CONSTR_ATTR_DEFERRABLE},
        {12, :CONSTR_ATTR_NOT_DEFERRABLE},
        {13, :CONSTR_ATTR_DEFERRED},
        {14, :CONSTR_ATTR_IMMEDIATE}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:CONSTR_TYPE_UNDEFINED) do
          true
        end,
        def has_constant?(:CONSTR_NULL) do
          true
        end,
        def has_constant?(:CONSTR_NOTNULL) do
          true
        end,
        def has_constant?(:CONSTR_DEFAULT) do
          true
        end,
        def has_constant?(:CONSTR_IDENTITY) do
          true
        end,
        def has_constant?(:CONSTR_GENERATED) do
          true
        end,
        def has_constant?(:CONSTR_CHECK) do
          true
        end,
        def has_constant?(:CONSTR_PRIMARY) do
          true
        end,
        def has_constant?(:CONSTR_UNIQUE) do
          true
        end,
        def has_constant?(:CONSTR_EXCLUSION) do
          true
        end,
        def has_constant?(:CONSTR_FOREIGN) do
          true
        end,
        def has_constant?(:CONSTR_ATTR_DEFERRABLE) do
          true
        end,
        def has_constant?(:CONSTR_ATTR_NOT_DEFERRABLE) do
          true
        end,
        def has_constant?(:CONSTR_ATTR_DEFERRED) do
          true
        end,
        def has_constant?(:CONSTR_ATTR_IMMEDIATE) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
