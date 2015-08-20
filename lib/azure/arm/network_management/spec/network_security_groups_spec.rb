# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative 'test_helper'
require_relative 'security_groups_shared'

include MsRestAzure
include Azure::ARM::Resources
include Azure::ARM::Network


describe NetworkSecurityGroups do
  before(:all) do
    @client = NETWORK_CLIENT.network_security_groups
    @resource_group = create_resource_group
    @location = 'westus'
  end

  after(:all) do
    delete_resource_group(@resource_group.name)
  end

  it 'should create security group' do
    params = build_network_security_group_params(@location)
    result = @client.create_or_update(@resource_group.name, params.name, params).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq params.name
    expect(result.body.location).to eq(@location)
  end

  it 'should get security group' do
    security_group = create_network_security_group(@resource_group, @location)
    result = @client.get(@resource_group.name, security_group.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.name).to eq(security_group.name)
  end

  it 'should delete security group' do
    security_group = create_network_security_group(@resource_group, @location)
    result = @client.delete(@resource_group.name, security_group.name).value!
    expect(result.response.status).to eq(200)
  end

  it 'should list all network security groups in a subscription' do
    #constants in security role protocol are 'Constant' when server returns them like 'CONSTANT '
    result = @client.list_all.value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    until result.body.next_link.to_s.empty? do
      result = @client.list_all_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end

  it 'should list all network security groups in a resource group' do
    result = @client.list(@resource_group.name).value!
    expect(result.response.status).to eq(200)
    expect(result.body).not_to be_nil
    expect(result.body.value).to be_a(Array)
    until result.body.next_link.to_s.empty? do
      result = @client.list_next(result.body.next_link).value!
      expect(result.body.value).not_to be_nil
      expect(result.body.value).to be_a(Array)
    end
  end
end