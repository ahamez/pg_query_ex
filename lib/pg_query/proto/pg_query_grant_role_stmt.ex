# Code generated by protox. Don't edit.
# credo:disable-for-this-file
defmodule PgQuery.GrantRoleStmt do
  @moduledoc false
  if function_exported?(Protox, :check_generator_version, 1) do
    Protox.check_generator_version(1)
  else
    raise "This code was generated with protox 2 but the runtime is using an older version of protox."
  end

  @type t :: %__MODULE__{
          behavior: atom(),
          grantor: PgQuery.RoleSpec.t() | nil,
          admin_opt: boolean(),
          is_grant: boolean(),
          grantee_roles: [PgQuery.Node.t()],
          granted_roles: [PgQuery.Node.t()],
          __uf__: [{non_neg_integer(), Protox.Types.tag(), binary()}]
        }
  defstruct behavior: :DROP_BEHAVIOR_UNDEFINED,
            grantor: nil,
            admin_opt: false,
            is_grant: false,
            grantee_roles: [],
            granted_roles: [],
            __uf__: []

  (
    (
      @spec encode(t()) :: {:ok, iodata(), non_neg_integer()} | {:error, any()}
      def encode(msg) do
        msg |> encode!() |> Tuple.insert_at(0, :ok)
      rescue
        e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
      end

      @spec encode!(t()) :: {iodata(), non_neg_integer()} | no_return()
      def encode!(msg) do
        {_acc = [], _acc_size = 0}
        |> encode_behavior(msg)
        |> encode_grantor(msg)
        |> encode_admin_opt(msg)
        |> encode_is_grant(msg)
        |> encode_grantee_roles(msg)
        |> encode_granted_roles(msg)
        |> encode_unknown_fields(msg)
      end
    )

    defp encode_behavior({acc, acc_size}, msg) do
      if msg.behavior == :DROP_BEHAVIOR_UNDEFINED do
        {acc, acc_size}
      else
        {value_bytes, value_bytes_size} =
          msg.behavior |> PgQuery.DropBehavior.encode() |> Protox.Encode.encode_enum()

        {["0", value_bytes | acc], acc_size + 1 + value_bytes_size}
      end
    rescue
      ArgumentError ->
        reraise Protox.EncodingError.new(:behavior, "invalid field value"), __STACKTRACE__
    end

    defp encode_grantor({acc, acc_size}, msg) do
      if msg.grantor == nil do
        {acc, acc_size}
      else
        {value_bytes, value_bytes_size} = Protox.Encode.encode_message(msg.grantor)
        {["*", value_bytes | acc], acc_size + 1 + value_bytes_size}
      end
    rescue
      ArgumentError ->
        reraise Protox.EncodingError.new(:grantor, "invalid field value"), __STACKTRACE__
    end

    defp encode_admin_opt({acc, acc_size}, msg) do
      if msg.admin_opt == false do
        {acc, acc_size}
      else
        {value_bytes, value_bytes_size} = Protox.Encode.encode_bool(msg.admin_opt)
        {[" ", value_bytes | acc], acc_size + 1 + value_bytes_size}
      end
    rescue
      ArgumentError ->
        reraise Protox.EncodingError.new(:admin_opt, "invalid field value"), __STACKTRACE__
    end

    defp encode_is_grant({acc, acc_size}, msg) do
      if msg.is_grant == false do
        {acc, acc_size}
      else
        {value_bytes, value_bytes_size} = Protox.Encode.encode_bool(msg.is_grant)
        {["\x18", value_bytes | acc], acc_size + 1 + value_bytes_size}
      end
    rescue
      ArgumentError ->
        reraise Protox.EncodingError.new(:is_grant, "invalid field value"), __STACKTRACE__
    end

    defp encode_grantee_roles({acc, acc_size}, msg) do
      case msg.grantee_roles do
        [] ->
          {acc, acc_size}

        values ->
          {value_bytes, value_size} =
            (
              {value_bytes, value_size} =
                Enum.reduce(values, {_local_acc = [], _local_acc_size = 0}, fn value,
                                                                               {local_acc,
                                                                                local_acc_size} ->
                  {value_bytes, value_bytes_size} = Protox.Encode.encode_message(value)
                  {[value_bytes, "\x12" | local_acc], local_acc_size + 1 + value_bytes_size}
                end)

              {Enum.reverse(value_bytes), value_size}
            )

          {[value_bytes | acc], acc_size + value_size}
      end
    rescue
      ArgumentError ->
        reraise Protox.EncodingError.new(:grantee_roles, "invalid field value"), __STACKTRACE__
    end

    defp encode_granted_roles({acc, acc_size}, msg) do
      case msg.granted_roles do
        [] ->
          {acc, acc_size}

        values ->
          {value_bytes, value_size} =
            (
              {value_bytes, value_size} =
                Enum.reduce(values, {_local_acc = [], _local_acc_size = 0}, fn value,
                                                                               {local_acc,
                                                                                local_acc_size} ->
                  {value_bytes, value_bytes_size} = Protox.Encode.encode_message(value)
                  {[value_bytes, "\n" | local_acc], local_acc_size + 1 + value_bytes_size}
                end)

              {Enum.reverse(value_bytes), value_size}
            )

          {[value_bytes | acc], acc_size + value_size}
      end
    rescue
      ArgumentError ->
        reraise Protox.EncodingError.new(:granted_roles, "invalid field value"), __STACKTRACE__
    end

    defp encode_unknown_fields({acc, acc_size}, msg) do
      Enum.reduce(msg.__uf__, {acc, acc_size}, fn {tag, wire_type, bytes}, {acc, acc_size} ->
        case wire_type do
          0 ->
            {key_bytes, key_size} = Protox.Encode.make_key_bytes(tag, :int32)
            {[acc, <<key_bytes::binary, bytes::binary>>], acc_size + key_size + byte_size(bytes)}

          1 ->
            {key_bytes, key_size} = Protox.Encode.make_key_bytes(tag, :double)
            {[acc, <<key_bytes::binary, bytes::binary>>], acc_size + key_size + byte_size(bytes)}

          2 ->
            {len_bytes, len_size} = bytes |> byte_size() |> Protox.Varint.encode()
            {key_bytes, key_size} = Protox.Encode.make_key_bytes(tag, :packed)

            {[acc, <<key_bytes::binary, len_bytes::binary, bytes::binary>>],
             acc_size + key_size + len_size + byte_size(bytes)}

          5 ->
            {key_bytes, key_size} = Protox.Encode.make_key_bytes(tag, :float)
            {[acc, <<key_bytes::binary, bytes::binary>>], acc_size + key_size + byte_size(bytes)}
        end
      end)
    end
  )

  (
    (
      @spec decode(binary()) :: {:ok, t()} | {:error, any()}
      def decode(bytes) do
        {:ok, decode!(bytes)}
      rescue
        e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
          {:error, e}
      end

      (
        @spec decode!(binary()) :: t() | no_return()
        def decode!(bytes) do
          parse_key_value(bytes, struct(PgQuery.GrantRoleStmt))
        end
      )
    )

    (
      @spec parse_key_value(binary(), struct()) :: struct()
      defp parse_key_value(<<>>, msg) do
        msg
      end

      defp parse_key_value(bytes, msg) do
        {field, rest} =
          case bytes do
            <<_::5, 3::3, _rest::binary>> ->
              raise Protox.DecodingError.new(bytes, "invalid wire type 3")

            <<_::5, 4::3, _rest::binary>> ->
              raise Protox.DecodingError.new(bytes, "invalid wire type 4")

            <<_::5, 6::3, _rest::binary>> ->
              raise Protox.DecodingError.new(bytes, "invalid wire type 6")

            <<_::5, 7::3, _rest::binary>> ->
              raise Protox.DecodingError.new(bytes, "invalid wire type 7")

            <<0::5, _::3, _rest::binary>> ->
              raise %Protox.IllegalTagError{}

            <<6::5, _wire_type::3, bytes::binary>> ->
              {value, rest} = Protox.Decode.parse_enum(bytes, PgQuery.DropBehavior)
              {[behavior: value], rest}

            <<5::5, _wire_type::3, bytes::binary>> ->
              {len, bytes} = Protox.Varint.decode(bytes)
              {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

              {[
                 grantor:
                   Protox.MergeMessage.merge(msg.grantor, PgQuery.RoleSpec.decode!(delimited))
               ], rest}

            <<4::5, _wire_type::3, bytes::binary>> ->
              {value, rest} = Protox.Decode.parse_bool(bytes)
              {[admin_opt: value], rest}

            <<3::5, _wire_type::3, bytes::binary>> ->
              {value, rest} = Protox.Decode.parse_bool(bytes)
              {[is_grant: value], rest}

            <<2::5, _wire_type::3, bytes::binary>> ->
              {len, bytes} = Protox.Varint.decode(bytes)
              {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
              {[grantee_roles: msg.grantee_roles ++ [PgQuery.Node.decode!(delimited)]], rest}

            <<1::5, _wire_type::3, bytes::binary>> ->
              {len, bytes} = Protox.Varint.decode(bytes)
              {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
              {[granted_roles: msg.granted_roles ++ [PgQuery.Node.decode!(delimited)]], rest}

            <<bytes::binary>> ->
              {tag, wire_type, rest} = Protox.Decode.parse_key(bytes)
              {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)
              {[__uf__: msg.__uf__ ++ [value]], rest}
          end

        msg_updated = struct(msg, field)
        parse_key_value(rest, msg_updated)
      end
    )
  )

  (
    @spec unknown_fields(struct()) :: [{non_neg_integer(), Protox.Types.tag(), binary()}]
    def unknown_fields(msg) do
      msg.__uf__
    end

    @spec unknown_fields_name() :: :__uf__
    def unknown_fields_name() do
      :__uf__
    end

    @spec clear_unknown_fields(struct) :: struct
    def clear_unknown_fields(msg) do
      struct!(msg, __uf__: [])
    end
  )

  (
    @spec default(atom()) ::
            {:ok, boolean() | integer() | String.t() | float()}
            | {:error, :no_such_field | :no_default_value}
    def default(:behavior) do
      {:ok, :DROP_BEHAVIOR_UNDEFINED}
    end

    def default(:grantor) do
      {:ok, nil}
    end

    def default(:admin_opt) do
      {:ok, false}
    end

    def default(:is_grant) do
      {:ok, false}
    end

    def default(:grantee_roles) do
      {:error, :no_default_value}
    end

    def default(:granted_roles) do
      {:error, :no_default_value}
    end

    def default(_) do
      {:error, :no_such_field}
    end
  )

  @spec schema() :: Protox.MessageSchema.t()
  def schema() do
    %{
      __struct__: Protox.MessageSchema,
      fields: %{
        admin_opt: %{
          __struct__: Protox.Field,
          kind: %{__struct__: Protox.Scalar, default_value: false},
          label: :optional,
          name: :admin_opt,
          tag: 4,
          type: :bool
        },
        behavior: %{
          __struct__: Protox.Field,
          kind: %{__struct__: Protox.Scalar, default_value: :DROP_BEHAVIOR_UNDEFINED},
          label: :optional,
          name: :behavior,
          tag: 6,
          type: {:enum, PgQuery.DropBehavior}
        },
        granted_roles: %{
          __struct__: Protox.Field,
          kind: :unpacked,
          label: :repeated,
          name: :granted_roles,
          tag: 1,
          type: {:message, PgQuery.Node}
        },
        grantee_roles: %{
          __struct__: Protox.Field,
          kind: :unpacked,
          label: :repeated,
          name: :grantee_roles,
          tag: 2,
          type: {:message, PgQuery.Node}
        },
        grantor: %{
          __struct__: Protox.Field,
          kind: %{__struct__: Protox.Scalar, default_value: nil},
          label: :optional,
          name: :grantor,
          tag: 5,
          type: {:message, PgQuery.RoleSpec}
        },
        is_grant: %{
          __struct__: Protox.Field,
          kind: %{__struct__: Protox.Scalar, default_value: false},
          label: :optional,
          name: :is_grant,
          tag: 3,
          type: :bool
        }
      },
      file_options: nil,
      name: PgQuery.GrantRoleStmt,
      syntax: :proto3
    }
  end
end
