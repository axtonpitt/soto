//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2024 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if canImport(FoundationEssentials)
import FoundationEssentials
#else
import Foundation
#endif
@_exported import SotoCore

/// Service object for interacting with AWS ManagedBlockchainQuery service.
///
/// Amazon Managed Blockchain (AMB) Query provides you with convenient access to multi-blockchain network data, which makes  it easier for you to extract contextual data related to blockchain activity. You can use AMB Query to  read data from public blockchain networks, such as Bitcoin Mainnet and Ethereum Mainnet. You can  also get information such as the current and historical balances of addresses, or you can get a  list of blockchain transactions for a given time period. Additionally, you can get details of a  given transaction, such as transaction events, which you can further analyze or use in business  logic for your applications.
public struct ManagedBlockchainQuery: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the ManagedBlockchainQuery client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "ManagedBlockchainQuery",
            serviceIdentifier: "managedblockchain-query",
            serviceProtocol: .restjson,
            apiVersion: "2023-05-04",
            endpoint: endpoint,
            errorType: ManagedBlockchainQueryErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Gets the token balance for a batch of tokens by using the BatchGetTokenBalance  action for every token in the request.  Only the native tokens BTC and ETH, and the ERC-20,  ERC-721, and ERC 1155 token standards are supported.
    @Sendable
    @inlinable
    public func batchGetTokenBalance(_ input: BatchGetTokenBalanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> BatchGetTokenBalanceOutput {
        try await self.client.execute(
            operation: "BatchGetTokenBalance", 
            path: "/batch-get-token-balance", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Gets the token balance for a batch of tokens by using the BatchGetTokenBalance  action for every token in the request.  Only the native tokens BTC and ETH, and the ERC-20,  ERC-721, and ERC 1155 token standards are supported.
    ///
    /// Parameters:
    ///   - getTokenBalanceInputs: An array of BatchGetTokenBalanceInputItem objects whose balance is being requested.
    ///   - logger: Logger use during operation
    @inlinable
    public func batchGetTokenBalance(
        getTokenBalanceInputs: [BatchGetTokenBalanceInputItem]? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> BatchGetTokenBalanceOutput {
        let input = BatchGetTokenBalanceInput(
            getTokenBalanceInputs: getTokenBalanceInputs
        )
        return try await self.batchGetTokenBalance(input, logger: logger)
    }

    /// Gets the information about a specific contract deployed on the blockchain.    The Bitcoin blockchain networks do not support this  operation.   Metadata is currently only available for some ERC-20 contracts.  Metadata will be available for additional contracts in the future.
    @Sendable
    @inlinable
    public func getAssetContract(_ input: GetAssetContractInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAssetContractOutput {
        try await self.client.execute(
            operation: "GetAssetContract", 
            path: "/get-asset-contract", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Gets the information about a specific contract deployed on the blockchain.    The Bitcoin blockchain networks do not support this  operation.   Metadata is currently only available for some ERC-20 contracts.  Metadata will be available for additional contracts in the future.
    ///
    /// Parameters:
    ///   - contractIdentifier: Contains the blockchain address and network information about the contract.
    ///   - logger: Logger use during operation
    @inlinable
    public func getAssetContract(
        contractIdentifier: ContractIdentifier,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetAssetContractOutput {
        let input = GetAssetContractInput(
            contractIdentifier: contractIdentifier
        )
        return try await self.getAssetContract(input, logger: logger)
    }

    /// Gets the balance of a specific token, including native tokens, for a given address (wallet or contract) on the blockchain.  Only the native tokens BTC and ETH, and the ERC-20,  ERC-721, and ERC 1155 token standards are supported.
    @Sendable
    @inlinable
    public func getTokenBalance(_ input: GetTokenBalanceInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTokenBalanceOutput {
        try await self.client.execute(
            operation: "GetTokenBalance", 
            path: "/get-token-balance", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Gets the balance of a specific token, including native tokens, for a given address (wallet or contract) on the blockchain.  Only the native tokens BTC and ETH, and the ERC-20,  ERC-721, and ERC 1155 token standards are supported.
    ///
    /// Parameters:
    ///   - atBlockchainInstant: The time for when the TokenBalance is requested or  the current time if a time is not provided in the request.  This time will only be recorded up to the second.
    ///   - ownerIdentifier: The container for the identifier for the owner.
    ///   - tokenIdentifier: The container for the identifier for the token, including the unique  token ID and its blockchain network.
    ///   - logger: Logger use during operation
    @inlinable
    public func getTokenBalance(
        atBlockchainInstant: BlockchainInstant? = nil,
        ownerIdentifier: OwnerIdentifier,
        tokenIdentifier: TokenIdentifier,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetTokenBalanceOutput {
        let input = GetTokenBalanceInput(
            atBlockchainInstant: atBlockchainInstant, 
            ownerIdentifier: ownerIdentifier, 
            tokenIdentifier: tokenIdentifier
        )
        return try await self.getTokenBalance(input, logger: logger)
    }

    /// Gets the details of a transaction.  This action will return transaction details for all transactions  that are confirmed on the blockchain, even if they have not reached  finality.
    @Sendable
    @inlinable
    public func getTransaction(_ input: GetTransactionInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetTransactionOutput {
        try await self.client.execute(
            operation: "GetTransaction", 
            path: "/get-transaction", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Gets the details of a transaction.  This action will return transaction details for all transactions  that are confirmed on the blockchain, even if they have not reached  finality.
    ///
    /// Parameters:
    ///   - network: The blockchain network where the transaction occurred.
    ///   - transactionHash: The hash of a transaction. It is generated when a transaction is created.
    ///   - transactionId: The identifier of a Bitcoin transaction. It is generated when a transaction is created.   transactionId is only supported on the Bitcoin networks.
    ///   - logger: Logger use during operation
    @inlinable
    public func getTransaction(
        network: QueryNetwork,
        transactionHash: String? = nil,
        transactionId: String? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> GetTransactionOutput {
        let input = GetTransactionInput(
            network: network, 
            transactionHash: transactionHash, 
            transactionId: transactionId
        )
        return try await self.getTransaction(input, logger: logger)
    }

    /// Lists all the contracts for a given contract type deployed by an address  (either a contract address or a wallet address). The Bitcoin blockchain networks do not support this  operation.
    @Sendable
    @inlinable
    public func listAssetContracts(_ input: ListAssetContractsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListAssetContractsOutput {
        try await self.client.execute(
            operation: "ListAssetContracts", 
            path: "/list-asset-contracts", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists all the contracts for a given contract type deployed by an address  (either a contract address or a wallet address). The Bitcoin blockchain networks do not support this  operation.
    ///
    /// Parameters:
    ///   - contractFilter: Contains the filter parameter for the request.
    ///   - maxResults: The maximum number of contracts to list. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - nextToken:  The pagination token that indicates the next set of results to retrieve.
    ///   - logger: Logger use during operation
    @inlinable
    public func listAssetContracts(
        contractFilter: ContractFilter,
        maxResults: Int? = nil,
        nextToken: String? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListAssetContractsOutput {
        let input = ListAssetContractsInput(
            contractFilter: contractFilter, 
            maxResults: maxResults, 
            nextToken: nextToken
        )
        return try await self.listAssetContracts(input, logger: logger)
    }

    /// Lists all the transaction events for an address on the blockchain.  This operation is only supported on the Bitcoin networks.
    @Sendable
    @inlinable
    public func listFilteredTransactionEvents(_ input: ListFilteredTransactionEventsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListFilteredTransactionEventsOutput {
        try await self.client.execute(
            operation: "ListFilteredTransactionEvents", 
            path: "/list-filtered-transaction-events", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists all the transaction events for an address on the blockchain.  This operation is only supported on the Bitcoin networks.
    ///
    /// Parameters:
    ///   - addressIdentifierFilter: This is the unique public address on the blockchain for which the transaction events are being requested.
    ///   - confirmationStatusFilter: 
    ///   - maxResults: The maximum number of transaction events to list. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - network: The blockchain network where the transaction occurred. Valid Values: BITCOIN_MAINNET | BITCOIN_TESTNET
    ///   - nextToken: The pagination token that indicates the next set of results to retrieve.
    ///   - sort: The order by which the results will be sorted.
    ///   - timeFilter: This container specifies the time frame for the transaction events returned in the response.
    ///   - voutFilter: This container specifies filtering attributes related to BITCOIN_VOUT event types
    ///   - logger: Logger use during operation
    @inlinable
    public func listFilteredTransactionEvents(
        addressIdentifierFilter: AddressIdentifierFilter,
        confirmationStatusFilter: ConfirmationStatusFilter? = nil,
        maxResults: Int? = nil,
        network: String,
        nextToken: String? = nil,
        sort: ListFilteredTransactionEventsSort? = nil,
        timeFilter: TimeFilter? = nil,
        voutFilter: VoutFilter? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListFilteredTransactionEventsOutput {
        let input = ListFilteredTransactionEventsInput(
            addressIdentifierFilter: addressIdentifierFilter, 
            confirmationStatusFilter: confirmationStatusFilter, 
            maxResults: maxResults, 
            network: network, 
            nextToken: nextToken, 
            sort: sort, 
            timeFilter: timeFilter, 
            voutFilter: voutFilter
        )
        return try await self.listFilteredTransactionEvents(input, logger: logger)
    }

    /// This action returns the following for a given blockchain network:   Lists all token balances owned by an address (either a contract  address or a wallet address).   Lists all token balances for all tokens created by a contract.   Lists all token balances for a given token.    You must always specify the network property of  the tokenFilter when using this operation.
    @Sendable
    @inlinable
    public func listTokenBalances(_ input: ListTokenBalancesInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTokenBalancesOutput {
        try await self.client.execute(
            operation: "ListTokenBalances", 
            path: "/list-token-balances", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// This action returns the following for a given blockchain network:   Lists all token balances owned by an address (either a contract  address or a wallet address).   Lists all token balances for all tokens created by a contract.   Lists all token balances for a given token.    You must always specify the network property of  the tokenFilter when using this operation.
    ///
    /// Parameters:
    ///   - maxResults: The maximum number of token balances to return. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - nextToken: The pagination token that indicates the next set of results to retrieve.
    ///   - ownerFilter: The contract or wallet address on the blockchain network by which to filter the  request. You must specify the address property of the ownerFilter  when listing balances of tokens owned by the address.
    ///   - tokenFilter: The contract address or a token identifier on the  blockchain network by which to filter the request. You must specify the contractAddress  property of this container when listing tokens minted by a contract.  You must always specify the network property of this  container when using this operation.
    ///   - logger: Logger use during operation
    @inlinable
    public func listTokenBalances(
        maxResults: Int? = nil,
        nextToken: String? = nil,
        ownerFilter: OwnerFilter? = nil,
        tokenFilter: TokenFilter,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListTokenBalancesOutput {
        let input = ListTokenBalancesInput(
            maxResults: maxResults, 
            nextToken: nextToken, 
            ownerFilter: ownerFilter, 
            tokenFilter: tokenFilter
        )
        return try await self.listTokenBalances(input, logger: logger)
    }

    /// Lists all the transaction events for a transaction   This action will return transaction details for all transactions  that are confirmed on the blockchain, even if they have not reached  finality.
    @Sendable
    @inlinable
    public func listTransactionEvents(_ input: ListTransactionEventsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTransactionEventsOutput {
        try await self.client.execute(
            operation: "ListTransactionEvents", 
            path: "/list-transaction-events", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists all the transaction events for a transaction   This action will return transaction details for all transactions  that are confirmed on the blockchain, even if they have not reached  finality.
    ///
    /// Parameters:
    ///   - maxResults: The maximum number of transaction events to list. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - network: The blockchain network where the transaction events occurred.
    ///   - nextToken: The pagination token that indicates the next set of results to retrieve.
    ///   - transactionHash: The hash of a transaction. It is generated when a transaction is created.
    ///   - transactionId: The identifier of a Bitcoin transaction. It is generated when a transaction is created.   transactionId is only supported on the Bitcoin networks.
    ///   - logger: Logger use during operation
    @inlinable
    public func listTransactionEvents(
        maxResults: Int? = nil,
        network: QueryNetwork,
        nextToken: String? = nil,
        transactionHash: String? = nil,
        transactionId: String? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListTransactionEventsOutput {
        let input = ListTransactionEventsInput(
            maxResults: maxResults, 
            network: network, 
            nextToken: nextToken, 
            transactionHash: transactionHash, 
            transactionId: transactionId
        )
        return try await self.listTransactionEvents(input, logger: logger)
    }

    /// Lists all the transaction events for a transaction.
    @Sendable
    @inlinable
    public func listTransactions(_ input: ListTransactionsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ListTransactionsOutput {
        try await self.client.execute(
            operation: "ListTransactions", 
            path: "/list-transactions", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
    /// Lists all the transaction events for a transaction.
    ///
    /// Parameters:
    ///   - address: The address (either a contract or wallet), whose transactions are being requested.
    ///   - confirmationStatusFilter: This filter is used to include transactions in the response that haven't reached  finality . Transactions that have reached finality are always  part of the response.
    ///   - fromBlockchainInstant: 
    ///   - maxResults: The maximum number of transactions to list. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - network: The blockchain network where the transactions occurred.
    ///   - nextToken: The pagination token that indicates the next set of results to retrieve.
    ///   - sort: The order by which the results will be sorted.
    ///   - toBlockchainInstant: 
    ///   - logger: Logger use during operation
    @inlinable
    public func listTransactions(
        address: String,
        confirmationStatusFilter: ConfirmationStatusFilter? = nil,
        fromBlockchainInstant: BlockchainInstant? = nil,
        maxResults: Int? = nil,
        network: QueryNetwork,
        nextToken: String? = nil,
        sort: ListTransactionsSort? = nil,
        toBlockchainInstant: BlockchainInstant? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) async throws -> ListTransactionsOutput {
        let input = ListTransactionsInput(
            address: address, 
            confirmationStatusFilter: confirmationStatusFilter, 
            fromBlockchainInstant: fromBlockchainInstant, 
            maxResults: maxResults, 
            network: network, 
            nextToken: nextToken, 
            sort: sort, 
            toBlockchainInstant: toBlockchainInstant
        )
        return try await self.listTransactions(input, logger: logger)
    }
}

extension ManagedBlockchainQuery {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: ManagedBlockchainQuery, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ManagedBlockchainQuery {
    /// Return PaginatorSequence for operation ``listAssetContracts(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listAssetContractsPaginator(
        _ input: ListAssetContractsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListAssetContractsInput, ListAssetContractsOutput> {
        return .init(
            input: input,
            command: self.listAssetContracts,
            inputKey: \ListAssetContractsInput.nextToken,
            outputKey: \ListAssetContractsOutput.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listAssetContracts(_:logger:)``.
    ///
    /// - Parameters:
    ///   - contractFilter: Contains the filter parameter for the request.
    ///   - maxResults: The maximum number of contracts to list. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - logger: Logger used for logging
    @inlinable
    public func listAssetContractsPaginator(
        contractFilter: ContractFilter,
        maxResults: Int? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListAssetContractsInput, ListAssetContractsOutput> {
        let input = ListAssetContractsInput(
            contractFilter: contractFilter, 
            maxResults: maxResults
        )
        return self.listAssetContractsPaginator(input, logger: logger)
    }

    /// Return PaginatorSequence for operation ``listFilteredTransactionEvents(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listFilteredTransactionEventsPaginator(
        _ input: ListFilteredTransactionEventsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListFilteredTransactionEventsInput, ListFilteredTransactionEventsOutput> {
        return .init(
            input: input,
            command: self.listFilteredTransactionEvents,
            inputKey: \ListFilteredTransactionEventsInput.nextToken,
            outputKey: \ListFilteredTransactionEventsOutput.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listFilteredTransactionEvents(_:logger:)``.
    ///
    /// - Parameters:
    ///   - addressIdentifierFilter: This is the unique public address on the blockchain for which the transaction events are being requested.
    ///   - confirmationStatusFilter: 
    ///   - maxResults: The maximum number of transaction events to list. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - network: The blockchain network where the transaction occurred. Valid Values: BITCOIN_MAINNET | BITCOIN_TESTNET
    ///   - sort: The order by which the results will be sorted.
    ///   - timeFilter: This container specifies the time frame for the transaction events returned in the response.
    ///   - voutFilter: This container specifies filtering attributes related to BITCOIN_VOUT event types
    ///   - logger: Logger used for logging
    @inlinable
    public func listFilteredTransactionEventsPaginator(
        addressIdentifierFilter: AddressIdentifierFilter,
        confirmationStatusFilter: ConfirmationStatusFilter? = nil,
        maxResults: Int? = nil,
        network: String,
        sort: ListFilteredTransactionEventsSort? = nil,
        timeFilter: TimeFilter? = nil,
        voutFilter: VoutFilter? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListFilteredTransactionEventsInput, ListFilteredTransactionEventsOutput> {
        let input = ListFilteredTransactionEventsInput(
            addressIdentifierFilter: addressIdentifierFilter, 
            confirmationStatusFilter: confirmationStatusFilter, 
            maxResults: maxResults, 
            network: network, 
            sort: sort, 
            timeFilter: timeFilter, 
            voutFilter: voutFilter
        )
        return self.listFilteredTransactionEventsPaginator(input, logger: logger)
    }

    /// Return PaginatorSequence for operation ``listTokenBalances(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listTokenBalancesPaginator(
        _ input: ListTokenBalancesInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTokenBalancesInput, ListTokenBalancesOutput> {
        return .init(
            input: input,
            command: self.listTokenBalances,
            inputKey: \ListTokenBalancesInput.nextToken,
            outputKey: \ListTokenBalancesOutput.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listTokenBalances(_:logger:)``.
    ///
    /// - Parameters:
    ///   - maxResults: The maximum number of token balances to return. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - ownerFilter: The contract or wallet address on the blockchain network by which to filter the  request. You must specify the address property of the ownerFilter  when listing balances of tokens owned by the address.
    ///   - tokenFilter: The contract address or a token identifier on the  blockchain network by which to filter the request. You must specify the contractAddress  property of this container when listing tokens minted by a contract.  You must always specify the network property of this  container when using this operation.
    ///   - logger: Logger used for logging
    @inlinable
    public func listTokenBalancesPaginator(
        maxResults: Int? = nil,
        ownerFilter: OwnerFilter? = nil,
        tokenFilter: TokenFilter,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListTokenBalancesInput, ListTokenBalancesOutput> {
        let input = ListTokenBalancesInput(
            maxResults: maxResults, 
            ownerFilter: ownerFilter, 
            tokenFilter: tokenFilter
        )
        return self.listTokenBalancesPaginator(input, logger: logger)
    }

    /// Return PaginatorSequence for operation ``listTransactionEvents(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listTransactionEventsPaginator(
        _ input: ListTransactionEventsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTransactionEventsInput, ListTransactionEventsOutput> {
        return .init(
            input: input,
            command: self.listTransactionEvents,
            inputKey: \ListTransactionEventsInput.nextToken,
            outputKey: \ListTransactionEventsOutput.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listTransactionEvents(_:logger:)``.
    ///
    /// - Parameters:
    ///   - maxResults: The maximum number of transaction events to list. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - network: The blockchain network where the transaction events occurred.
    ///   - transactionHash: The hash of a transaction. It is generated when a transaction is created.
    ///   - transactionId: The identifier of a Bitcoin transaction. It is generated when a transaction is created.   transactionId is only supported on the Bitcoin networks.
    ///   - logger: Logger used for logging
    @inlinable
    public func listTransactionEventsPaginator(
        maxResults: Int? = nil,
        network: QueryNetwork,
        transactionHash: String? = nil,
        transactionId: String? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListTransactionEventsInput, ListTransactionEventsOutput> {
        let input = ListTransactionEventsInput(
            maxResults: maxResults, 
            network: network, 
            transactionHash: transactionHash, 
            transactionId: transactionId
        )
        return self.listTransactionEventsPaginator(input, logger: logger)
    }

    /// Return PaginatorSequence for operation ``listTransactions(_:logger:)``.
    ///
    /// - Parameters:
    ///   - input: Input for operation
    ///   - logger: Logger used for logging
    @inlinable
    public func listTransactionsPaginator(
        _ input: ListTransactionsInput,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<ListTransactionsInput, ListTransactionsOutput> {
        return .init(
            input: input,
            command: self.listTransactions,
            inputKey: \ListTransactionsInput.nextToken,
            outputKey: \ListTransactionsOutput.nextToken,
            logger: logger
        )
    }
    /// Return PaginatorSequence for operation ``listTransactions(_:logger:)``.
    ///
    /// - Parameters:
    ///   - address: The address (either a contract or wallet), whose transactions are being requested.
    ///   - confirmationStatusFilter: This filter is used to include transactions in the response that haven't reached  finality . Transactions that have reached finality are always  part of the response.
    ///   - fromBlockchainInstant: 
    ///   - maxResults: The maximum number of transactions to list. Default: 100   Even if additional results can be retrieved, the request can return less  results than maxResults or an empty array of results. To retrieve the next set of results, make another request with the  returned nextToken value. The value of nextToken is  null when there are no more results to return
    ///   - network: The blockchain network where the transactions occurred.
    ///   - sort: The order by which the results will be sorted.
    ///   - toBlockchainInstant: 
    ///   - logger: Logger used for logging
    @inlinable
    public func listTransactionsPaginator(
        address: String,
        confirmationStatusFilter: ConfirmationStatusFilter? = nil,
        fromBlockchainInstant: BlockchainInstant? = nil,
        maxResults: Int? = nil,
        network: QueryNetwork,
        sort: ListTransactionsSort? = nil,
        toBlockchainInstant: BlockchainInstant? = nil,
        logger: Logger = AWSClient.loggingDisabled        
    ) -> AWSClient.PaginatorSequence<ListTransactionsInput, ListTransactionsOutput> {
        let input = ListTransactionsInput(
            address: address, 
            confirmationStatusFilter: confirmationStatusFilter, 
            fromBlockchainInstant: fromBlockchainInstant, 
            maxResults: maxResults, 
            network: network, 
            sort: sort, 
            toBlockchainInstant: toBlockchainInstant
        )
        return self.listTransactionsPaginator(input, logger: logger)
    }
}

extension ManagedBlockchainQuery.ListAssetContractsInput: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListAssetContractsInput {
        return .init(
            contractFilter: self.contractFilter,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension ManagedBlockchainQuery.ListFilteredTransactionEventsInput: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListFilteredTransactionEventsInput {
        return .init(
            addressIdentifierFilter: self.addressIdentifierFilter,
            confirmationStatusFilter: self.confirmationStatusFilter,
            maxResults: self.maxResults,
            network: self.network,
            nextToken: token,
            sort: self.sort,
            timeFilter: self.timeFilter,
            voutFilter: self.voutFilter
        )
    }
}

extension ManagedBlockchainQuery.ListTokenBalancesInput: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListTokenBalancesInput {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            ownerFilter: self.ownerFilter,
            tokenFilter: self.tokenFilter
        )
    }
}

extension ManagedBlockchainQuery.ListTransactionEventsInput: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListTransactionEventsInput {
        return .init(
            maxResults: self.maxResults,
            network: self.network,
            nextToken: token,
            transactionHash: self.transactionHash,
            transactionId: self.transactionId
        )
    }
}

extension ManagedBlockchainQuery.ListTransactionsInput: AWSPaginateToken {
    @inlinable
    public func usingPaginationToken(_ token: String) -> ManagedBlockchainQuery.ListTransactionsInput {
        return .init(
            address: self.address,
            confirmationStatusFilter: self.confirmationStatusFilter,
            fromBlockchainInstant: self.fromBlockchainInstant,
            maxResults: self.maxResults,
            network: self.network,
            nextToken: token,
            sort: self.sort,
            toBlockchainInstant: self.toBlockchainInstant
        )
    }
}
