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

import SotoCore

// MARK: Paginators

extension Snowball {
    ///  Returns a specified number of ADDRESS objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.
    public func describeAddressesPaginator(
        _ input: DescribeAddressesRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (DescribeAddressesResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: describeAddresses,
            tokenKey: \DescribeAddressesResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    public func listJobsPaginator(
        _ input: ListJobsRequest,
        on eventLoop: EventLoop? = nil,
        logger: Logger = AWSClient.loggingDisabled,
        onPage: @escaping (ListJobsResult, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(
            input: input,
            command: listJobs,
            tokenKey: \ListJobsResult.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension Snowball.DescribeAddressesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.DescribeAddressesRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension Snowball.ListJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Snowball.ListJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}