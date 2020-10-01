//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2020 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/soto/blob/main/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

@_exported import SotoCore

/*
 Client object for interacting with AWS Imagebuilder service.

 EC2 Image Builder is a fully managed AWS service that makes it easier to automate the creation, management, and deployment of customized, secure, and up-to-date “golden” server images that are pre-installed and pre-configured with software and settings to meet specific IT standards.
 */
public struct Imagebuilder: AWSService {
    // MARK: Member variables

    public let client: AWSClient
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the Imagebuilder client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "imagebuilder",
            serviceProtocol: .restjson,
            apiVersion: "2019-12-02",
            endpoint: endpoint,
            possibleErrorTypes: [ImagebuilderErrorType.self],
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    ///  CancelImageCreation cancels the creation of Image. This operation can only be used on images in a non-terminal state.
    public func cancelImageCreation(_ input: CancelImageCreationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CancelImageCreationResponse> {
        return self.client.execute(operation: "CancelImageCreation", path: "/CancelImageCreation", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new component that can be used to build, validate, test, and assess your image.
    public func createComponent(_ input: CreateComponentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateComponentResponse> {
        return self.client.execute(operation: "CreateComponent", path: "/CreateComponent", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Creates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline.
    public func createDistributionConfiguration(_ input: CreateDistributionConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateDistributionConfigurationResponse> {
        return self.client.execute(operation: "CreateDistributionConfiguration", path: "/CreateDistributionConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration.
    public func createImage(_ input: CreateImageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateImageResponse> {
        return self.client.execute(operation: "CreateImage", path: "/CreateImage", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Creates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images.
    public func createImagePipeline(_ input: CreateImagePipelineRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateImagePipelineResponse> {
        return self.client.execute(operation: "CreateImagePipeline", path: "/CreateImagePipeline", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Creates a new image recipe. Image recipes define how images are configured, tested, and assessed.
    public func createImageRecipe(_ input: CreateImageRecipeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateImageRecipeResponse> {
        return self.client.execute(operation: "CreateImageRecipe", path: "/CreateImageRecipe", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Creates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested.
    public func createInfrastructureConfiguration(_ input: CreateInfrastructureConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<CreateInfrastructureConfigurationResponse> {
        return self.client.execute(operation: "CreateInfrastructureConfiguration", path: "/CreateInfrastructureConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes a component build version.
    public func deleteComponent(_ input: DeleteComponentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteComponentResponse> {
        return self.client.execute(operation: "DeleteComponent", path: "/DeleteComponent", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes a distribution configuration.
    public func deleteDistributionConfiguration(_ input: DeleteDistributionConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteDistributionConfigurationResponse> {
        return self.client.execute(operation: "DeleteDistributionConfiguration", path: "/DeleteDistributionConfiguration", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes an image.
    public func deleteImage(_ input: DeleteImageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteImageResponse> {
        return self.client.execute(operation: "DeleteImage", path: "/DeleteImage", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes an image pipeline.
    public func deleteImagePipeline(_ input: DeleteImagePipelineRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteImagePipelineResponse> {
        return self.client.execute(operation: "DeleteImagePipeline", path: "/DeleteImagePipeline", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes an image recipe.
    public func deleteImageRecipe(_ input: DeleteImageRecipeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteImageRecipeResponse> {
        return self.client.execute(operation: "DeleteImageRecipe", path: "/DeleteImageRecipe", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Deletes an infrastructure configuration.
    public func deleteInfrastructureConfiguration(_ input: DeleteInfrastructureConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<DeleteInfrastructureConfigurationResponse> {
        return self.client.execute(operation: "DeleteInfrastructureConfiguration", path: "/DeleteInfrastructureConfiguration", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets a component object.
    public func getComponent(_ input: GetComponentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetComponentResponse> {
        return self.client.execute(operation: "GetComponent", path: "/GetComponent", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets a component policy.
    public func getComponentPolicy(_ input: GetComponentPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetComponentPolicyResponse> {
        return self.client.execute(operation: "GetComponentPolicy", path: "/GetComponentPolicy", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets a distribution configuration.
    public func getDistributionConfiguration(_ input: GetDistributionConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetDistributionConfigurationResponse> {
        return self.client.execute(operation: "GetDistributionConfiguration", path: "/GetDistributionConfiguration", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets an image.
    public func getImage(_ input: GetImageRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetImageResponse> {
        return self.client.execute(operation: "GetImage", path: "/GetImage", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets an image pipeline.
    public func getImagePipeline(_ input: GetImagePipelineRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetImagePipelineResponse> {
        return self.client.execute(operation: "GetImagePipeline", path: "/GetImagePipeline", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets an image policy.
    public func getImagePolicy(_ input: GetImagePolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetImagePolicyResponse> {
        return self.client.execute(operation: "GetImagePolicy", path: "/GetImagePolicy", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets an image recipe.
    public func getImageRecipe(_ input: GetImageRecipeRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetImageRecipeResponse> {
        return self.client.execute(operation: "GetImageRecipe", path: "/GetImageRecipe", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets an image recipe policy.
    public func getImageRecipePolicy(_ input: GetImageRecipePolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetImageRecipePolicyResponse> {
        return self.client.execute(operation: "GetImageRecipePolicy", path: "/GetImageRecipePolicy", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Gets an infrastructure configuration.
    public func getInfrastructureConfiguration(_ input: GetInfrastructureConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<GetInfrastructureConfigurationResponse> {
        return self.client.execute(operation: "GetInfrastructureConfiguration", path: "/GetInfrastructureConfiguration", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Imports a component and transforms its data into a component document.
    public func importComponent(_ input: ImportComponentRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ImportComponentResponse> {
        return self.client.execute(operation: "ImportComponent", path: "/ImportComponent", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns the list of component build versions for the specified semantic version.
    public func listComponentBuildVersions(_ input: ListComponentBuildVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListComponentBuildVersionsResponse> {
        return self.client.execute(operation: "ListComponentBuildVersions", path: "/ListComponentBuildVersions", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns the list of component build versions for the specified semantic version.
    public func listComponents(_ input: ListComponentsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListComponentsResponse> {
        return self.client.execute(operation: "ListComponents", path: "/ListComponents", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of distribution configurations.
    public func listDistributionConfigurations(_ input: ListDistributionConfigurationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListDistributionConfigurationsResponse> {
        return self.client.execute(operation: "ListDistributionConfigurations", path: "/ListDistributionConfigurations", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of image build versions.
    public func listImageBuildVersions(_ input: ListImageBuildVersionsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListImageBuildVersionsResponse> {
        return self.client.execute(operation: "ListImageBuildVersions", path: "/ListImageBuildVersions", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of images created by the specified pipeline.
    public func listImagePipelineImages(_ input: ListImagePipelineImagesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListImagePipelineImagesResponse> {
        return self.client.execute(operation: "ListImagePipelineImages", path: "/ListImagePipelineImages", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Returns a list of image pipelines.
    public func listImagePipelines(_ input: ListImagePipelinesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListImagePipelinesResponse> {
        return self.client.execute(operation: "ListImagePipelines", path: "/ListImagePipelines", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of image recipes.
    public func listImageRecipes(_ input: ListImageRecipesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListImageRecipesResponse> {
        return self.client.execute(operation: "ListImageRecipes", path: "/ListImageRecipes", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns the list of images that you have access to.
    public func listImages(_ input: ListImagesRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListImagesResponse> {
        return self.client.execute(operation: "ListImages", path: "/ListImages", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns a list of infrastructure configurations.
    public func listInfrastructureConfigurations(_ input: ListInfrastructureConfigurationsRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListInfrastructureConfigurationsResponse> {
        return self.client.execute(operation: "ListInfrastructureConfigurations", path: "/ListInfrastructureConfigurations", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Returns the list of tags for the specified resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<ListTagsForResourceResponse> {
        return self.client.execute(operation: "ListTagsForResource", path: "/tags/{resourceArn}", httpMethod: .GET, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Applies a policy to a component. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutComponentPolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared.
    public func putComponentPolicy(_ input: PutComponentPolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutComponentPolicyResponse> {
        return self.client.execute(operation: "PutComponentPolicy", path: "/PutComponentPolicy", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///  Applies a policy to an image. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutImagePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared.
    public func putImagePolicy(_ input: PutImagePolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutImagePolicyResponse> {
        return self.client.execute(operation: "PutImagePolicy", path: "/PutImagePolicy", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Applies a policy to an image recipe. We recommend that you call the RAM API CreateResourceShare to share resources. If you call the Image Builder API PutImageRecipePolicy, you must also call the RAM API PromoteResourceShareCreatedFromPolicy in order for the resource to be visible to all principals with whom the resource is shared.
    public func putImageRecipePolicy(_ input: PutImageRecipePolicyRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<PutImageRecipePolicyResponse> {
        return self.client.execute(operation: "PutImageRecipePolicy", path: "/PutImageRecipePolicy", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Manually triggers a pipeline to create an image.
    public func startImagePipelineExecution(_ input: StartImagePipelineExecutionRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<StartImagePipelineExecutionResponse> {
        return self.client.execute(operation: "StartImagePipelineExecution", path: "/StartImagePipelineExecution", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Adds a tag to a resource.
    public func tagResource(_ input: TagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<TagResourceResponse> {
        return self.client.execute(operation: "TagResource", path: "/tags/{resourceArn}", httpMethod: .POST, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Removes a tag from a resource.
    public func untagResource(_ input: UntagResourceRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UntagResourceResponse> {
        return self.client.execute(operation: "UntagResource", path: "/tags/{resourceArn}", httpMethod: .DELETE, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Updates a new distribution configuration. Distribution configurations define and configure the outputs of your pipeline.
    public func updateDistributionConfiguration(_ input: UpdateDistributionConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateDistributionConfigurationResponse> {
        return self.client.execute(operation: "UpdateDistributionConfiguration", path: "/UpdateDistributionConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Updates a new image pipeline. Image pipelines enable you to automate the creation and distribution of images.
    public func updateImagePipeline(_ input: UpdateImagePipelineRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateImagePipelineResponse> {
        return self.client.execute(operation: "UpdateImagePipeline", path: "/UpdateImagePipeline", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }

    ///   Updates a new infrastructure configuration. An infrastructure configuration defines the environment in which your image will be built and tested.
    public func updateInfrastructureConfiguration(_ input: UpdateInfrastructureConfigurationRequest, on eventLoop: EventLoop? = nil, logger: Logger = AWSClient.loggingDisabled) -> EventLoopFuture<UpdateInfrastructureConfigurationResponse> {
        return self.client.execute(operation: "UpdateInfrastructureConfiguration", path: "/UpdateInfrastructureConfiguration", httpMethod: .PUT, serviceConfig: self.config, input: input, on: eventLoop, logger: logger)
    }
}

extension Imagebuilder {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: Imagebuilder, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}