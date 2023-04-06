# credo:disable-for-this-file
defmodule PgQuery.ObjectType do
  @moduledoc false
  (
    defstruct []

    (
      @spec default() :: :OBJECT_TYPE_UNDEFINED
      def default() do
        :OBJECT_TYPE_UNDEFINED
      end
    )

    @spec encode(atom() | String.t()) :: integer() | atom()
    [
      (
        def encode(:OBJECT_TYPE_UNDEFINED) do
          0
        end

        def encode("OBJECT_TYPE_UNDEFINED") do
          0
        end
      ),
      (
        def encode(:OBJECT_ACCESS_METHOD) do
          1
        end

        def encode("OBJECT_ACCESS_METHOD") do
          1
        end
      ),
      (
        def encode(:OBJECT_AGGREGATE) do
          2
        end

        def encode("OBJECT_AGGREGATE") do
          2
        end
      ),
      (
        def encode(:OBJECT_AMOP) do
          3
        end

        def encode("OBJECT_AMOP") do
          3
        end
      ),
      (
        def encode(:OBJECT_AMPROC) do
          4
        end

        def encode("OBJECT_AMPROC") do
          4
        end
      ),
      (
        def encode(:OBJECT_ATTRIBUTE) do
          5
        end

        def encode("OBJECT_ATTRIBUTE") do
          5
        end
      ),
      (
        def encode(:OBJECT_CAST) do
          6
        end

        def encode("OBJECT_CAST") do
          6
        end
      ),
      (
        def encode(:OBJECT_COLUMN) do
          7
        end

        def encode("OBJECT_COLUMN") do
          7
        end
      ),
      (
        def encode(:OBJECT_COLLATION) do
          8
        end

        def encode("OBJECT_COLLATION") do
          8
        end
      ),
      (
        def encode(:OBJECT_CONVERSION) do
          9
        end

        def encode("OBJECT_CONVERSION") do
          9
        end
      ),
      (
        def encode(:OBJECT_DATABASE) do
          10
        end

        def encode("OBJECT_DATABASE") do
          10
        end
      ),
      (
        def encode(:OBJECT_DEFAULT) do
          11
        end

        def encode("OBJECT_DEFAULT") do
          11
        end
      ),
      (
        def encode(:OBJECT_DEFACL) do
          12
        end

        def encode("OBJECT_DEFACL") do
          12
        end
      ),
      (
        def encode(:OBJECT_DOMAIN) do
          13
        end

        def encode("OBJECT_DOMAIN") do
          13
        end
      ),
      (
        def encode(:OBJECT_DOMCONSTRAINT) do
          14
        end

        def encode("OBJECT_DOMCONSTRAINT") do
          14
        end
      ),
      (
        def encode(:OBJECT_EVENT_TRIGGER) do
          15
        end

        def encode("OBJECT_EVENT_TRIGGER") do
          15
        end
      ),
      (
        def encode(:OBJECT_EXTENSION) do
          16
        end

        def encode("OBJECT_EXTENSION") do
          16
        end
      ),
      (
        def encode(:OBJECT_FDW) do
          17
        end

        def encode("OBJECT_FDW") do
          17
        end
      ),
      (
        def encode(:OBJECT_FOREIGN_SERVER) do
          18
        end

        def encode("OBJECT_FOREIGN_SERVER") do
          18
        end
      ),
      (
        def encode(:OBJECT_FOREIGN_TABLE) do
          19
        end

        def encode("OBJECT_FOREIGN_TABLE") do
          19
        end
      ),
      (
        def encode(:OBJECT_FUNCTION) do
          20
        end

        def encode("OBJECT_FUNCTION") do
          20
        end
      ),
      (
        def encode(:OBJECT_INDEX) do
          21
        end

        def encode("OBJECT_INDEX") do
          21
        end
      ),
      (
        def encode(:OBJECT_LANGUAGE) do
          22
        end

        def encode("OBJECT_LANGUAGE") do
          22
        end
      ),
      (
        def encode(:OBJECT_LARGEOBJECT) do
          23
        end

        def encode("OBJECT_LARGEOBJECT") do
          23
        end
      ),
      (
        def encode(:OBJECT_MATVIEW) do
          24
        end

        def encode("OBJECT_MATVIEW") do
          24
        end
      ),
      (
        def encode(:OBJECT_OPCLASS) do
          25
        end

        def encode("OBJECT_OPCLASS") do
          25
        end
      ),
      (
        def encode(:OBJECT_OPERATOR) do
          26
        end

        def encode("OBJECT_OPERATOR") do
          26
        end
      ),
      (
        def encode(:OBJECT_OPFAMILY) do
          27
        end

        def encode("OBJECT_OPFAMILY") do
          27
        end
      ),
      (
        def encode(:OBJECT_PARAMETER_ACL) do
          28
        end

        def encode("OBJECT_PARAMETER_ACL") do
          28
        end
      ),
      (
        def encode(:OBJECT_POLICY) do
          29
        end

        def encode("OBJECT_POLICY") do
          29
        end
      ),
      (
        def encode(:OBJECT_PROCEDURE) do
          30
        end

        def encode("OBJECT_PROCEDURE") do
          30
        end
      ),
      (
        def encode(:OBJECT_PUBLICATION) do
          31
        end

        def encode("OBJECT_PUBLICATION") do
          31
        end
      ),
      (
        def encode(:OBJECT_PUBLICATION_NAMESPACE) do
          32
        end

        def encode("OBJECT_PUBLICATION_NAMESPACE") do
          32
        end
      ),
      (
        def encode(:OBJECT_PUBLICATION_REL) do
          33
        end

        def encode("OBJECT_PUBLICATION_REL") do
          33
        end
      ),
      (
        def encode(:OBJECT_ROLE) do
          34
        end

        def encode("OBJECT_ROLE") do
          34
        end
      ),
      (
        def encode(:OBJECT_ROUTINE) do
          35
        end

        def encode("OBJECT_ROUTINE") do
          35
        end
      ),
      (
        def encode(:OBJECT_RULE) do
          36
        end

        def encode("OBJECT_RULE") do
          36
        end
      ),
      (
        def encode(:OBJECT_SCHEMA) do
          37
        end

        def encode("OBJECT_SCHEMA") do
          37
        end
      ),
      (
        def encode(:OBJECT_SEQUENCE) do
          38
        end

        def encode("OBJECT_SEQUENCE") do
          38
        end
      ),
      (
        def encode(:OBJECT_SUBSCRIPTION) do
          39
        end

        def encode("OBJECT_SUBSCRIPTION") do
          39
        end
      ),
      (
        def encode(:OBJECT_STATISTIC_EXT) do
          40
        end

        def encode("OBJECT_STATISTIC_EXT") do
          40
        end
      ),
      (
        def encode(:OBJECT_TABCONSTRAINT) do
          41
        end

        def encode("OBJECT_TABCONSTRAINT") do
          41
        end
      ),
      (
        def encode(:OBJECT_TABLE) do
          42
        end

        def encode("OBJECT_TABLE") do
          42
        end
      ),
      (
        def encode(:OBJECT_TABLESPACE) do
          43
        end

        def encode("OBJECT_TABLESPACE") do
          43
        end
      ),
      (
        def encode(:OBJECT_TRANSFORM) do
          44
        end

        def encode("OBJECT_TRANSFORM") do
          44
        end
      ),
      (
        def encode(:OBJECT_TRIGGER) do
          45
        end

        def encode("OBJECT_TRIGGER") do
          45
        end
      ),
      (
        def encode(:OBJECT_TSCONFIGURATION) do
          46
        end

        def encode("OBJECT_TSCONFIGURATION") do
          46
        end
      ),
      (
        def encode(:OBJECT_TSDICTIONARY) do
          47
        end

        def encode("OBJECT_TSDICTIONARY") do
          47
        end
      ),
      (
        def encode(:OBJECT_TSPARSER) do
          48
        end

        def encode("OBJECT_TSPARSER") do
          48
        end
      ),
      (
        def encode(:OBJECT_TSTEMPLATE) do
          49
        end

        def encode("OBJECT_TSTEMPLATE") do
          49
        end
      ),
      (
        def encode(:OBJECT_TYPE) do
          50
        end

        def encode("OBJECT_TYPE") do
          50
        end
      ),
      (
        def encode(:OBJECT_USER_MAPPING) do
          51
        end

        def encode("OBJECT_USER_MAPPING") do
          51
        end
      ),
      (
        def encode(:OBJECT_VIEW) do
          52
        end

        def encode("OBJECT_VIEW") do
          52
        end
      )
    ]

    def encode(x) do
      x
    end

    @spec decode(integer()) :: atom() | integer()
    [
      def decode(16) do
        :OBJECT_EXTENSION
      end,
      def decode(18) do
        :OBJECT_FOREIGN_SERVER
      end,
      def decode(5) do
        :OBJECT_ATTRIBUTE
      end,
      def decode(19) do
        :OBJECT_FOREIGN_TABLE
      end,
      def decode(42) do
        :OBJECT_TABLE
      end,
      def decode(27) do
        :OBJECT_OPFAMILY
      end,
      def decode(49) do
        :OBJECT_TSTEMPLATE
      end,
      def decode(35) do
        :OBJECT_ROUTINE
      end,
      def decode(10) do
        :OBJECT_DATABASE
      end,
      def decode(24) do
        :OBJECT_MATVIEW
      end,
      def decode(50) do
        :OBJECT_TYPE
      end,
      def decode(36) do
        :OBJECT_RULE
      end,
      def decode(4) do
        :OBJECT_AMPROC
      end,
      def decode(21) do
        :OBJECT_INDEX
      end,
      def decode(52) do
        :OBJECT_VIEW
      end,
      def decode(22) do
        :OBJECT_LANGUAGE
      end,
      def decode(17) do
        :OBJECT_FDW
      end,
      def decode(3) do
        :OBJECT_AMOP
      end,
      def decode(8) do
        :OBJECT_COLLATION
      end,
      def decode(1) do
        :OBJECT_ACCESS_METHOD
      end,
      def decode(7) do
        :OBJECT_COLUMN
      end,
      def decode(2) do
        :OBJECT_AGGREGATE
      end,
      def decode(14) do
        :OBJECT_DOMCONSTRAINT
      end,
      def decode(15) do
        :OBJECT_EVENT_TRIGGER
      end,
      def decode(20) do
        :OBJECT_FUNCTION
      end,
      def decode(41) do
        :OBJECT_TABCONSTRAINT
      end,
      def decode(40) do
        :OBJECT_STATISTIC_EXT
      end,
      def decode(13) do
        :OBJECT_DOMAIN
      end,
      def decode(38) do
        :OBJECT_SEQUENCE
      end,
      def decode(51) do
        :OBJECT_USER_MAPPING
      end,
      def decode(0) do
        :OBJECT_TYPE_UNDEFINED
      end,
      def decode(6) do
        :OBJECT_CAST
      end,
      def decode(28) do
        :OBJECT_PARAMETER_ACL
      end,
      def decode(25) do
        :OBJECT_OPCLASS
      end,
      def decode(34) do
        :OBJECT_ROLE
      end,
      def decode(32) do
        :OBJECT_PUBLICATION_NAMESPACE
      end,
      def decode(9) do
        :OBJECT_CONVERSION
      end,
      def decode(37) do
        :OBJECT_SCHEMA
      end,
      def decode(11) do
        :OBJECT_DEFAULT
      end,
      def decode(31) do
        :OBJECT_PUBLICATION
      end,
      def decode(46) do
        :OBJECT_TSCONFIGURATION
      end,
      def decode(26) do
        :OBJECT_OPERATOR
      end,
      def decode(48) do
        :OBJECT_TSPARSER
      end,
      def decode(45) do
        :OBJECT_TRIGGER
      end,
      def decode(39) do
        :OBJECT_SUBSCRIPTION
      end,
      def decode(43) do
        :OBJECT_TABLESPACE
      end,
      def decode(30) do
        :OBJECT_PROCEDURE
      end,
      def decode(47) do
        :OBJECT_TSDICTIONARY
      end,
      def decode(29) do
        :OBJECT_POLICY
      end,
      def decode(23) do
        :OBJECT_LARGEOBJECT
      end,
      def decode(44) do
        :OBJECT_TRANSFORM
      end,
      def decode(12) do
        :OBJECT_DEFACL
      end,
      def decode(33) do
        :OBJECT_PUBLICATION_REL
      end
    ]

    def decode(x) do
      x
    end

    @spec constants() :: [{integer(), atom()}]
    def constants() do
      [
        {0, :OBJECT_TYPE_UNDEFINED},
        {1, :OBJECT_ACCESS_METHOD},
        {2, :OBJECT_AGGREGATE},
        {3, :OBJECT_AMOP},
        {4, :OBJECT_AMPROC},
        {5, :OBJECT_ATTRIBUTE},
        {6, :OBJECT_CAST},
        {7, :OBJECT_COLUMN},
        {8, :OBJECT_COLLATION},
        {9, :OBJECT_CONVERSION},
        {10, :OBJECT_DATABASE},
        {11, :OBJECT_DEFAULT},
        {12, :OBJECT_DEFACL},
        {13, :OBJECT_DOMAIN},
        {14, :OBJECT_DOMCONSTRAINT},
        {15, :OBJECT_EVENT_TRIGGER},
        {16, :OBJECT_EXTENSION},
        {17, :OBJECT_FDW},
        {18, :OBJECT_FOREIGN_SERVER},
        {19, :OBJECT_FOREIGN_TABLE},
        {20, :OBJECT_FUNCTION},
        {21, :OBJECT_INDEX},
        {22, :OBJECT_LANGUAGE},
        {23, :OBJECT_LARGEOBJECT},
        {24, :OBJECT_MATVIEW},
        {25, :OBJECT_OPCLASS},
        {26, :OBJECT_OPERATOR},
        {27, :OBJECT_OPFAMILY},
        {28, :OBJECT_PARAMETER_ACL},
        {29, :OBJECT_POLICY},
        {30, :OBJECT_PROCEDURE},
        {31, :OBJECT_PUBLICATION},
        {32, :OBJECT_PUBLICATION_NAMESPACE},
        {33, :OBJECT_PUBLICATION_REL},
        {34, :OBJECT_ROLE},
        {35, :OBJECT_ROUTINE},
        {36, :OBJECT_RULE},
        {37, :OBJECT_SCHEMA},
        {38, :OBJECT_SEQUENCE},
        {39, :OBJECT_SUBSCRIPTION},
        {40, :OBJECT_STATISTIC_EXT},
        {41, :OBJECT_TABCONSTRAINT},
        {42, :OBJECT_TABLE},
        {43, :OBJECT_TABLESPACE},
        {44, :OBJECT_TRANSFORM},
        {45, :OBJECT_TRIGGER},
        {46, :OBJECT_TSCONFIGURATION},
        {47, :OBJECT_TSDICTIONARY},
        {48, :OBJECT_TSPARSER},
        {49, :OBJECT_TSTEMPLATE},
        {50, :OBJECT_TYPE},
        {51, :OBJECT_USER_MAPPING},
        {52, :OBJECT_VIEW}
      ]
    end

    @spec has_constant?(any()) :: boolean()
    (
      [
        def has_constant?(:OBJECT_TYPE_UNDEFINED) do
          true
        end,
        def has_constant?(:OBJECT_ACCESS_METHOD) do
          true
        end,
        def has_constant?(:OBJECT_AGGREGATE) do
          true
        end,
        def has_constant?(:OBJECT_AMOP) do
          true
        end,
        def has_constant?(:OBJECT_AMPROC) do
          true
        end,
        def has_constant?(:OBJECT_ATTRIBUTE) do
          true
        end,
        def has_constant?(:OBJECT_CAST) do
          true
        end,
        def has_constant?(:OBJECT_COLUMN) do
          true
        end,
        def has_constant?(:OBJECT_COLLATION) do
          true
        end,
        def has_constant?(:OBJECT_CONVERSION) do
          true
        end,
        def has_constant?(:OBJECT_DATABASE) do
          true
        end,
        def has_constant?(:OBJECT_DEFAULT) do
          true
        end,
        def has_constant?(:OBJECT_DEFACL) do
          true
        end,
        def has_constant?(:OBJECT_DOMAIN) do
          true
        end,
        def has_constant?(:OBJECT_DOMCONSTRAINT) do
          true
        end,
        def has_constant?(:OBJECT_EVENT_TRIGGER) do
          true
        end,
        def has_constant?(:OBJECT_EXTENSION) do
          true
        end,
        def has_constant?(:OBJECT_FDW) do
          true
        end,
        def has_constant?(:OBJECT_FOREIGN_SERVER) do
          true
        end,
        def has_constant?(:OBJECT_FOREIGN_TABLE) do
          true
        end,
        def has_constant?(:OBJECT_FUNCTION) do
          true
        end,
        def has_constant?(:OBJECT_INDEX) do
          true
        end,
        def has_constant?(:OBJECT_LANGUAGE) do
          true
        end,
        def has_constant?(:OBJECT_LARGEOBJECT) do
          true
        end,
        def has_constant?(:OBJECT_MATVIEW) do
          true
        end,
        def has_constant?(:OBJECT_OPCLASS) do
          true
        end,
        def has_constant?(:OBJECT_OPERATOR) do
          true
        end,
        def has_constant?(:OBJECT_OPFAMILY) do
          true
        end,
        def has_constant?(:OBJECT_PARAMETER_ACL) do
          true
        end,
        def has_constant?(:OBJECT_POLICY) do
          true
        end,
        def has_constant?(:OBJECT_PROCEDURE) do
          true
        end,
        def has_constant?(:OBJECT_PUBLICATION) do
          true
        end,
        def has_constant?(:OBJECT_PUBLICATION_NAMESPACE) do
          true
        end,
        def has_constant?(:OBJECT_PUBLICATION_REL) do
          true
        end,
        def has_constant?(:OBJECT_ROLE) do
          true
        end,
        def has_constant?(:OBJECT_ROUTINE) do
          true
        end,
        def has_constant?(:OBJECT_RULE) do
          true
        end,
        def has_constant?(:OBJECT_SCHEMA) do
          true
        end,
        def has_constant?(:OBJECT_SEQUENCE) do
          true
        end,
        def has_constant?(:OBJECT_SUBSCRIPTION) do
          true
        end,
        def has_constant?(:OBJECT_STATISTIC_EXT) do
          true
        end,
        def has_constant?(:OBJECT_TABCONSTRAINT) do
          true
        end,
        def has_constant?(:OBJECT_TABLE) do
          true
        end,
        def has_constant?(:OBJECT_TABLESPACE) do
          true
        end,
        def has_constant?(:OBJECT_TRANSFORM) do
          true
        end,
        def has_constant?(:OBJECT_TRIGGER) do
          true
        end,
        def has_constant?(:OBJECT_TSCONFIGURATION) do
          true
        end,
        def has_constant?(:OBJECT_TSDICTIONARY) do
          true
        end,
        def has_constant?(:OBJECT_TSPARSER) do
          true
        end,
        def has_constant?(:OBJECT_TSTEMPLATE) do
          true
        end,
        def has_constant?(:OBJECT_TYPE) do
          true
        end,
        def has_constant?(:OBJECT_USER_MAPPING) do
          true
        end,
        def has_constant?(:OBJECT_VIEW) do
          true
        end
      ]

      def has_constant?(_) do
        false
      end
    )
  )
end
