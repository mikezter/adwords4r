require 'xsd/qname'

module AdWords; module V201008; module AdGroupCriterionService


# AdGroupCriterionIdFilter
# - campaignId - SOAP::SOAPLong
# - adGroupId - SOAP::SOAPLong
# - criterionId - SOAP::SOAPLong
class AdGroupCriterionIdFilter
  attr_accessor :campaignId
  attr_accessor :adGroupId
  attr_accessor :criterionId

  def initialize(campaignId = nil, adGroupId = nil, criterionId = nil)
    @campaignId = campaignId
    @adGroupId = adGroupId
    @criterionId = criterionId
  end
end

# DateRange
# - min - SOAP::SOAPString
# - max - SOAP::SOAPString
class DateRange
  attr_accessor :min
  attr_accessor :max

  def initialize(min = nil, max = nil)
    @min = min
    @max = max
  end
end

# Paging
# - startIndex - SOAP::SOAPInt
# - numberResults - SOAP::SOAPInt
class Paging
  attr_accessor :startIndex
  attr_accessor :numberResults

  def initialize(startIndex = nil, numberResults = nil)
    @startIndex = startIndex
    @numberResults = numberResults
  end
end

# PolicyViolationError.Part
# - index - SOAP::SOAPInt
# - length - SOAP::SOAPInt
class PolicyViolationErrorPart
  attr_accessor :index
  attr_accessor :length

  def initialize(index = nil, length = nil)
    @index = index
    @length = length
  end
end

# PolicyViolationKey
# - policyName - SOAP::SOAPString
# - violatingText - SOAP::SOAPString
class PolicyViolationKey
  attr_accessor :policyName
  attr_accessor :violatingText

  def initialize(policyName = nil, violatingText = nil)
    @policyName = policyName
    @violatingText = violatingText
  end
end

# ProductConditionOperand
# - operand - SOAP::SOAPString
class ProductConditionOperand
  attr_accessor :operand

  def initialize(operand = nil)
    @operand = operand
  end
end

# QualityInfo
# - isKeywordAdRelevanceAcceptable - SOAP::SOAPBoolean
# - isLandingPageQualityAcceptable - SOAP::SOAPBoolean
# - isLandingPageLatencyAcceptable - SOAP::SOAPBoolean
# - qualityScore - SOAP::SOAPInt
class QualityInfo
  attr_accessor :isKeywordAdRelevanceAcceptable
  attr_accessor :isLandingPageQualityAcceptable
  attr_accessor :isLandingPageLatencyAcceptable
  attr_accessor :qualityScore

  def initialize(isKeywordAdRelevanceAcceptable = nil, isLandingPageQualityAcceptable = nil, isLandingPageLatencyAcceptable = nil, qualityScore = nil)
    @isKeywordAdRelevanceAcceptable = isKeywordAdRelevanceAcceptable
    @isLandingPageQualityAcceptable = isLandingPageQualityAcceptable
    @isLandingPageLatencyAcceptable = isLandingPageLatencyAcceptable
    @qualityScore = qualityScore
  end
end

# SoapHeader
# - authToken - SOAP::SOAPString
# - clientCustomerId - SOAP::SOAPString
# - clientEmail - SOAP::SOAPString
# - developerToken - SOAP::SOAPString
# - userAgent - SOAP::SOAPString
# - validateOnly - SOAP::SOAPBoolean
# - partialFailure - SOAP::SOAPBoolean
class SoapHeader
  attr_accessor :authToken
  attr_accessor :clientCustomerId
  attr_accessor :clientEmail
  attr_accessor :developerToken
  attr_accessor :userAgent
  attr_accessor :validateOnly
  attr_accessor :partialFailure

  def initialize(authToken = nil, clientCustomerId = nil, clientEmail = nil, developerToken = nil, userAgent = nil, validateOnly = nil, partialFailure = nil)
    @authToken = authToken
    @clientCustomerId = clientCustomerId
    @clientEmail = clientEmail
    @developerToken = developerToken
    @userAgent = userAgent
    @validateOnly = validateOnly
    @partialFailure = partialFailure
  end
end

# SoapResponseHeader
# - requestId - SOAP::SOAPString
# - operations - SOAP::SOAPLong
# - responseTime - SOAP::SOAPLong
# - units - SOAP::SOAPLong
class SoapResponseHeader
  attr_accessor :requestId
  attr_accessor :operations
  attr_accessor :responseTime
  attr_accessor :units

  def initialize(requestId = nil, operations = nil, responseTime = nil, units = nil)
    @requestId = requestId
    @operations = operations
    @responseTime = responseTime
    @units = units
  end
end

# StatsSelector
# - dateRange - AdWords::V201008::AdGroupCriterionService::DateRange
# - statsSelector_Type - SOAP::SOAPString
class StatsSelector
  attr_accessor :dateRange
  attr_accessor :statsSelector_Type

  def initialize(dateRange = nil, statsSelector_Type = nil)
    @dateRange = dateRange
    @statsSelector_Type = statsSelector_Type
  end
end

# ComparableValue
# abstract
# - comparableValue_Type - SOAP::SOAPString
class ComparableValue
  attr_accessor :comparableValue_Type

  def initialize(comparableValue_Type = nil)
    @comparableValue_Type = comparableValue_Type
  end
end

# Money
# - comparableValue_Type - SOAP::SOAPString
# - microAmount - SOAP::SOAPLong
class Money < ComparableValue
  attr_accessor :comparableValue_Type
  attr_accessor :microAmount

  def initialize(comparableValue_Type = nil, microAmount = nil)
    @comparableValue_Type = comparableValue_Type
    @microAmount = microAmount
  end
end

# NumberValue
# abstract
# - comparableValue_Type - SOAP::SOAPString
class NumberValue < ComparableValue
  attr_accessor :comparableValue_Type

  def initialize(comparableValue_Type = nil)
    @comparableValue_Type = comparableValue_Type
  end
end

# DoubleValue
# - comparableValue_Type - SOAP::SOAPString
# - number - SOAP::SOAPDouble
class DoubleValue < NumberValue
  attr_accessor :comparableValue_Type
  attr_accessor :number

  def initialize(comparableValue_Type = nil, number = nil)
    @comparableValue_Type = comparableValue_Type
    @number = number
  end
end

# LongValue
# - comparableValue_Type - SOAP::SOAPString
# - number - SOAP::SOAPLong
class LongValue < NumberValue
  attr_accessor :comparableValue_Type
  attr_accessor :number

  def initialize(comparableValue_Type = nil, number = nil)
    @comparableValue_Type = comparableValue_Type
    @number = number
  end
end

# ExemptionRequest
# - key - AdWords::V201008::AdGroupCriterionService::PolicyViolationKey
class ExemptionRequest
  attr_accessor :key

  def initialize(key = nil)
    @key = key
  end
end

# ProductCondition
# - argument - SOAP::SOAPString
# - operand - AdWords::V201008::AdGroupCriterionService::ProductConditionOperand
class ProductCondition
  attr_accessor :argument
  attr_accessor :operand

  def initialize(argument = nil, operand = nil)
    @argument = argument
    @operand = operand
  end
end

# Stats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdWords::V201008::AdGroupCriterionService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdWords::V201008::AdGroupCriterionService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdWords::V201008::AdGroupCriterionService::Money
# - averageCpm - AdWords::V201008::AdGroupCriterionService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdWords::V201008::AdGroupCriterionService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdWords::V201008::AdGroupCriterionService::Money
# - viewThroughConversions - SOAP::SOAPLong
# - totalConvValue - SOAP::SOAPLong
# - valuePerConv - SOAP::SOAPDouble
# - valuePerConvManyPerClick - SOAP::SOAPDouble
# - stats_Type - SOAP::SOAPString
class Stats
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :network
  attr_accessor :clicks
  attr_accessor :impressions
  attr_accessor :cost
  attr_accessor :averagePosition
  attr_accessor :averageCpc
  attr_accessor :averageCpm
  attr_accessor :ctr
  attr_accessor :conversions
  attr_accessor :conversionRate
  attr_accessor :costPerConversion
  attr_accessor :conversionsManyPerClick
  attr_accessor :conversionRateManyPerClick
  attr_accessor :costPerConversionManyPerClick
  attr_accessor :viewThroughConversions
  attr_accessor :totalConvValue
  attr_accessor :valuePerConv
  attr_accessor :valuePerConvManyPerClick
  attr_accessor :stats_Type

  def initialize(startDate = nil, endDate = nil, network = nil, clicks = nil, impressions = nil, cost = nil, averagePosition = nil, averageCpc = nil, averageCpm = nil, ctr = nil, conversions = nil, conversionRate = nil, costPerConversion = nil, conversionsManyPerClick = nil, conversionRateManyPerClick = nil, costPerConversionManyPerClick = nil, viewThroughConversions = nil, totalConvValue = nil, valuePerConv = nil, valuePerConvManyPerClick = nil, stats_Type = nil)
    @startDate = startDate
    @endDate = endDate
    @network = network
    @clicks = clicks
    @impressions = impressions
    @cost = cost
    @averagePosition = averagePosition
    @averageCpc = averageCpc
    @averageCpm = averageCpm
    @ctr = ctr
    @conversions = conversions
    @conversionRate = conversionRate
    @costPerConversion = costPerConversion
    @conversionsManyPerClick = conversionsManyPerClick
    @conversionRateManyPerClick = conversionRateManyPerClick
    @costPerConversionManyPerClick = costPerConversionManyPerClick
    @viewThroughConversions = viewThroughConversions
    @totalConvValue = totalConvValue
    @valuePerConv = valuePerConv
    @valuePerConvManyPerClick = valuePerConvManyPerClick
    @stats_Type = stats_Type
  end
end

# ApiError
# abstract
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
class ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
  end
end

# AdGroupCriterionError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::AdGroupCriterionErrorReason
class AdGroupCriterionError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# AuthenticationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::AuthenticationErrorReason
class AuthenticationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# AuthorizationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::AuthorizationErrorReason
class AuthorizationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# BiddingError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::BiddingErrorReason
class BiddingError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# ClientTermsError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::ClientTermsErrorReason
class ClientTermsError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# DateError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::DateErrorReason
class DateError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# DistinctError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::DistinctErrorReason
class DistinctError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# EntityAccessDenied
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::EntityAccessDeniedReason
class EntityAccessDenied < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# EntityCountLimitExceeded
# abstract
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::EntityCountLimitExceededReason
# - enclosingId - SOAP::SOAPString
# - limit - SOAP::SOAPInt
class EntityCountLimitExceeded < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
  end
end

# AdGroupCriterionLimitExceeded
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::EntityCountLimitExceededReason
# - enclosingId - SOAP::SOAPString
# - limit - SOAP::SOAPInt
# - limitType - AdWords::V201008::AdGroupCriterionService::AdGroupCriterionLimitExceededCriteriaLimitType
class AdGroupCriterionLimitExceeded < EntityCountLimitExceeded
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :enclosingId
  attr_accessor :limit
  attr_accessor :limitType

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, enclosingId = nil, limit = nil, limitType = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @enclosingId = enclosingId
    @limit = limit
    @limitType = limitType
  end
end

# EntityNotFound
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::EntityNotFoundReason
class EntityNotFound < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# InternalApiError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::InternalApiErrorReason
class InternalApiError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# NewEntityCreationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::NewEntityCreationErrorReason
class NewEntityCreationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# NotEmptyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::NotEmptyErrorReason
class NotEmptyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# NotWhitelistedError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::NotWhitelistedErrorReason
class NotWhitelistedError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# NullError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::NullErrorReason
class NullError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# OperationAccessDenied
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::OperationAccessDeniedReason
class OperationAccessDenied < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# PagingError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::PagingErrorReason
class PagingError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# QuotaCheckError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::QuotaCheckErrorReason
class QuotaCheckError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RangeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::RangeErrorReason
class C_RangeError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RateExceededError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::RateExceededErrorReason
# - rateName - SOAP::SOAPString
# - rateScope - SOAP::SOAPString
# - retryAfterSeconds - SOAP::SOAPInt
class RateExceededError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :rateName
  attr_accessor :rateScope
  attr_accessor :retryAfterSeconds

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, rateName = nil, rateScope = nil, retryAfterSeconds = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @rateName = rateName
    @rateScope = rateScope
    @retryAfterSeconds = retryAfterSeconds
  end
end

# ReadOnlyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::ReadOnlyErrorReason
class ReadOnlyError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RejectedError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::RejectedErrorReason
class RejectedError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RequestError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::RequestErrorReason
class RequestError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# RequiredError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::RequiredErrorReason
class RequiredError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# SizeLimitError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::SizeLimitErrorReason
class SizeLimitError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# StatsQueryError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::StatsQueryErrorReason
class StatsQueryError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# DatabaseError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::AdGroupCriterionService::DatabaseErrorReason
class DatabaseError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
  end
end

# PolicyViolationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - key - AdWords::V201008::AdGroupCriterionService::PolicyViolationKey
# - externalPolicyName - SOAP::SOAPString
# - externalPolicyUrl - SOAP::SOAPString
# - externalPolicyDescription - SOAP::SOAPString
# - isExemptable - SOAP::SOAPBoolean
# - violatingParts - AdWords::V201008::AdGroupCriterionService::PolicyViolationErrorPart
class PolicyViolationError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :key
  attr_accessor :externalPolicyName
  attr_accessor :externalPolicyUrl
  attr_accessor :externalPolicyDescription
  attr_accessor :isExemptable
  attr_accessor :violatingParts

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, key = nil, externalPolicyName = nil, externalPolicyUrl = nil, externalPolicyDescription = nil, isExemptable = nil, violatingParts = [])
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @key = key
    @externalPolicyName = externalPolicyName
    @externalPolicyUrl = externalPolicyUrl
    @externalPolicyDescription = externalPolicyDescription
    @isExemptable = isExemptable
    @violatingParts = violatingParts
  end
end

# CriterionPolicyError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - key - AdWords::V201008::AdGroupCriterionService::PolicyViolationKey
# - externalPolicyName - SOAP::SOAPString
# - externalPolicyUrl - SOAP::SOAPString
# - externalPolicyDescription - SOAP::SOAPString
# - isExemptable - SOAP::SOAPBoolean
# - violatingParts - AdWords::V201008::AdGroupCriterionService::PolicyViolationErrorPart
class CriterionPolicyError < PolicyViolationError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :key
  attr_accessor :externalPolicyName
  attr_accessor :externalPolicyUrl
  attr_accessor :externalPolicyDescription
  attr_accessor :isExemptable
  attr_accessor :violatingParts

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, key = nil, externalPolicyName = nil, externalPolicyUrl = nil, externalPolicyDescription = nil, isExemptable = nil, violatingParts = [])
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @key = key
    @externalPolicyName = externalPolicyName
    @externalPolicyUrl = externalPolicyUrl
    @externalPolicyDescription = externalPolicyDescription
    @isExemptable = isExemptable
    @violatingParts = violatingParts
  end
end

# ApplicationException
# - message - SOAP::SOAPString
# - applicationException_Type - SOAP::SOAPString
class ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type

  def initialize(message = nil, applicationException_Type = nil)
    @message = message
    @applicationException_Type = applicationException_Type
  end
end

# ApiException
# - message - SOAP::SOAPString
# - applicationException_Type - SOAP::SOAPString
# - errors - AdWords::V201008::AdGroupCriterionService::ApiError
class ApiException < ApplicationException
  attr_accessor :message
  attr_accessor :applicationException_Type
  attr_accessor :errors

  def initialize(message = nil, applicationException_Type = nil, errors = [])
    @message = message
    @applicationException_Type = applicationException_Type
    @errors = errors
  end
end

# Bid
# - amount - AdWords::V201008::AdGroupCriterionService::Money
class Bid
  attr_accessor :amount

  def initialize(amount = nil)
    @amount = amount
  end
end

# BidMultiplier
# - multiplier - SOAP::SOAPDouble
# - multipliedBid - AdWords::V201008::AdGroupCriterionService::Bid
class BidMultiplier
  attr_accessor :multiplier
  attr_accessor :multipliedBid

  def initialize(multiplier = nil, multipliedBid = nil)
    @multiplier = multiplier
    @multipliedBid = multipliedBid
  end
end

# PositionPreferenceAdGroupCriterionBids
# - proxyMaxCpc - AdWords::V201008::AdGroupCriterionService::Bid
# - preferredPosition - SOAP::SOAPInt
# - bottomPosition - SOAP::SOAPInt
class PositionPreferenceAdGroupCriterionBids
  attr_accessor :proxyMaxCpc
  attr_accessor :preferredPosition
  attr_accessor :bottomPosition

  def initialize(proxyMaxCpc = nil, preferredPosition = nil, bottomPosition = nil)
    @proxyMaxCpc = proxyMaxCpc
    @preferredPosition = preferredPosition
    @bottomPosition = bottomPosition
  end
end

# AdGroupCriterionExperimentBidMultiplier
# abstract
# - adGroupCriterionExperimentBidMultiplier_Type - SOAP::SOAPString
class AdGroupCriterionExperimentBidMultiplier
  attr_accessor :adGroupCriterionExperimentBidMultiplier_Type

  def initialize(adGroupCriterionExperimentBidMultiplier_Type = nil)
    @adGroupCriterionExperimentBidMultiplier_Type = adGroupCriterionExperimentBidMultiplier_Type
  end
end

# ManualCPCAdGroupCriterionExperimentBidMultiplier
# - adGroupCriterionExperimentBidMultiplier_Type - SOAP::SOAPString
# - maxCpcMultiplier - AdWords::V201008::AdGroupCriterionService::BidMultiplier
# - multiplierSource - AdWords::V201008::AdGroupCriterionService::MultiplierSource
class ManualCPCAdGroupCriterionExperimentBidMultiplier < AdGroupCriterionExperimentBidMultiplier
  attr_accessor :adGroupCriterionExperimentBidMultiplier_Type
  attr_accessor :maxCpcMultiplier
  attr_accessor :multiplierSource

  def initialize(adGroupCriterionExperimentBidMultiplier_Type = nil, maxCpcMultiplier = nil, multiplierSource = nil)
    @adGroupCriterionExperimentBidMultiplier_Type = adGroupCriterionExperimentBidMultiplier_Type
    @maxCpcMultiplier = maxCpcMultiplier
    @multiplierSource = multiplierSource
  end
end

# BiddableAdGroupCriterionExperimentData
# - experimentId - SOAP::SOAPLong
# - experimentDeltaStatus - AdWords::V201008::AdGroupCriterionService::ExperimentDeltaStatus
# - experimentDataStatus - AdWords::V201008::AdGroupCriterionService::ExperimentDataStatus
# - experimentBidMultiplier - AdWords::V201008::AdGroupCriterionService::AdGroupCriterionExperimentBidMultiplier
class BiddableAdGroupCriterionExperimentData
  attr_accessor :experimentId
  attr_accessor :experimentDeltaStatus
  attr_accessor :experimentDataStatus
  attr_accessor :experimentBidMultiplier

  def initialize(experimentId = nil, experimentDeltaStatus = nil, experimentDataStatus = nil, experimentBidMultiplier = nil)
    @experimentId = experimentId
    @experimentDeltaStatus = experimentDeltaStatus
    @experimentDataStatus = experimentDataStatus
    @experimentBidMultiplier = experimentBidMultiplier
  end
end

# Criterion
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
class Criterion
  attr_accessor :id
  attr_accessor :criterion_Type

  def initialize(id = nil, criterion_Type = nil)
    @id = id
    @criterion_Type = criterion_Type
  end
end

# Keyword
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - text - SOAP::SOAPString
# - matchType - AdWords::V201008::AdGroupCriterionService::KeywordMatchType
class Keyword < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :text
  attr_accessor :matchType

  def initialize(id = nil, criterion_Type = nil, text = nil, matchType = nil)
    @id = id
    @criterion_Type = criterion_Type
    @text = text
    @matchType = matchType
  end
end

# Placement
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - url - SOAP::SOAPString
class Placement < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :url

  def initialize(id = nil, criterion_Type = nil, url = nil)
    @id = id
    @criterion_Type = criterion_Type
    @url = url
  end
end

# CriterionUserInterest
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - userInterestId - SOAP::SOAPLong
# - userInterestName - SOAP::SOAPString
class CriterionUserInterest < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :userInterestId
  attr_accessor :userInterestName

  def initialize(id = nil, criterion_Type = nil, userInterestId = nil, userInterestName = nil)
    @id = id
    @criterion_Type = criterion_Type
    @userInterestId = userInterestId
    @userInterestName = userInterestName
  end
end

# CriterionUserList
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - userListId - SOAP::SOAPLong
# - userListName - SOAP::SOAPString
# - userListMembershipStatus - AdWords::V201008::AdGroupCriterionService::CriterionUserListMembershipStatus
# - userListSize - SOAP::SOAPLong
class CriterionUserList < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :userListId
  attr_accessor :userListName
  attr_accessor :userListMembershipStatus
  attr_accessor :userListSize

  def initialize(id = nil, criterion_Type = nil, userListId = nil, userListName = nil, userListMembershipStatus = nil, userListSize = nil)
    @id = id
    @criterion_Type = criterion_Type
    @userListId = userListId
    @userListName = userListName
    @userListMembershipStatus = userListMembershipStatus
    @userListSize = userListSize
  end
end

# Vertical
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - path - SOAP::SOAPString
class Vertical < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :path

  def initialize(id = nil, criterion_Type = nil, path = [])
    @id = id
    @criterion_Type = criterion_Type
    @path = path
  end
end

# Product
# - id - SOAP::SOAPLong
# - criterion_Type - SOAP::SOAPString
# - conditions - AdWords::V201008::AdGroupCriterionService::ProductCondition
# - text - SOAP::SOAPString
class Product < Criterion
  attr_accessor :id
  attr_accessor :criterion_Type
  attr_accessor :conditions
  attr_accessor :text

  def initialize(id = nil, criterion_Type = nil, conditions = [], text = nil)
    @id = id
    @criterion_Type = criterion_Type
    @conditions = conditions
    @text = text
  end
end

# AdGroupCriterionBids
# abstract
# - adGroupCriterionBids_Type - SOAP::SOAPString
class AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type

  def initialize(adGroupCriterionBids_Type = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
  end
end

# ConversionOptimizerAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
class ConversionOptimizerAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type

  def initialize(adGroupCriterionBids_Type = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
  end
end

# PercentCPAAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
# - percentCpa - SOAP::SOAPInt
# - source - AdWords::V201008::AdGroupCriterionService::BidSource
class PercentCPAAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :percentCpa
  attr_accessor :source

  def initialize(adGroupCriterionBids_Type = nil, percentCpa = nil, source = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @percentCpa = percentCpa
    @source = source
  end
end

# BudgetOptimizerAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
# - proxyBid - AdWords::V201008::AdGroupCriterionService::Bid
# - enhancedCpcEnabled - SOAP::SOAPBoolean
class BudgetOptimizerAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :proxyBid
  attr_accessor :enhancedCpcEnabled

  def initialize(adGroupCriterionBids_Type = nil, proxyBid = nil, enhancedCpcEnabled = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @proxyBid = proxyBid
    @enhancedCpcEnabled = enhancedCpcEnabled
  end
end

# ManualCPMAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
# - maxCpm - AdWords::V201008::AdGroupCriterionService::Bid
# - bidSource - AdWords::V201008::AdGroupCriterionService::BidSource
class ManualCPMAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :maxCpm
  attr_accessor :bidSource

  def initialize(adGroupCriterionBids_Type = nil, maxCpm = nil, bidSource = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @maxCpm = maxCpm
    @bidSource = bidSource
  end
end

# ManualCPCAdGroupCriterionBids
# - adGroupCriterionBids_Type - SOAP::SOAPString
# - maxCpc - AdWords::V201008::AdGroupCriterionService::Bid
# - bidSource - AdWords::V201008::AdGroupCriterionService::BidSource
# - positionPreferenceBids - AdWords::V201008::AdGroupCriterionService::PositionPreferenceAdGroupCriterionBids
# - enhancedCpcEnabled - SOAP::SOAPBoolean
class ManualCPCAdGroupCriterionBids < AdGroupCriterionBids
  attr_accessor :adGroupCriterionBids_Type
  attr_accessor :maxCpc
  attr_accessor :bidSource
  attr_accessor :positionPreferenceBids
  attr_accessor :enhancedCpcEnabled

  def initialize(adGroupCriterionBids_Type = nil, maxCpc = nil, bidSource = nil, positionPreferenceBids = nil, enhancedCpcEnabled = nil)
    @adGroupCriterionBids_Type = adGroupCriterionBids_Type
    @maxCpc = maxCpc
    @bidSource = bidSource
    @positionPreferenceBids = positionPreferenceBids
    @enhancedCpcEnabled = enhancedCpcEnabled
  end
end

# AdGroupCriterion
# - adGroupId - SOAP::SOAPLong
# - criterion - AdWords::V201008::AdGroupCriterionService::Criterion
# - adGroupCriterion_Type - SOAP::SOAPString
class AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
  end
end

# NegativeAdGroupCriterion
# - adGroupId - SOAP::SOAPLong
# - criterion - AdWords::V201008::AdGroupCriterionService::Criterion
# - adGroupCriterion_Type - SOAP::SOAPString
class NegativeAdGroupCriterion < AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
  end
end

# BiddableAdGroupCriterion
# - adGroupId - SOAP::SOAPLong
# - criterion - AdWords::V201008::AdGroupCriterionService::Criterion
# - adGroupCriterion_Type - SOAP::SOAPString
# - userStatus - AdWords::V201008::AdGroupCriterionService::UserStatus
# - systemServingStatus - AdWords::V201008::AdGroupCriterionService::SystemServingStatus
# - approvalStatus - AdWords::V201008::AdGroupCriterionService::ApprovalStatus
# - destinationUrl - SOAP::SOAPString
# - bids - AdWords::V201008::AdGroupCriterionService::AdGroupCriterionBids
# - experimentData - AdWords::V201008::AdGroupCriterionService::BiddableAdGroupCriterionExperimentData
# - firstPageCpc - AdWords::V201008::AdGroupCriterionService::Bid
# - qualityInfo - AdWords::V201008::AdGroupCriterionService::QualityInfo
# - stats - AdWords::V201008::AdGroupCriterionService::Stats
class BiddableAdGroupCriterion < AdGroupCriterion
  attr_accessor :adGroupId
  attr_accessor :criterion
  attr_accessor :adGroupCriterion_Type
  attr_accessor :userStatus
  attr_accessor :systemServingStatus
  attr_accessor :approvalStatus
  attr_accessor :destinationUrl
  attr_accessor :bids
  attr_accessor :experimentData
  attr_accessor :firstPageCpc
  attr_accessor :qualityInfo
  attr_accessor :stats

  def initialize(adGroupId = nil, criterion = nil, adGroupCriterion_Type = nil, userStatus = nil, systemServingStatus = nil, approvalStatus = nil, destinationUrl = nil, bids = nil, experimentData = nil, firstPageCpc = nil, qualityInfo = nil, stats = nil)
    @adGroupId = adGroupId
    @criterion = criterion
    @adGroupCriterion_Type = adGroupCriterion_Type
    @userStatus = userStatus
    @systemServingStatus = systemServingStatus
    @approvalStatus = approvalStatus
    @destinationUrl = destinationUrl
    @bids = bids
    @experimentData = experimentData
    @firstPageCpc = firstPageCpc
    @qualityInfo = qualityInfo
    @stats = stats
  end
end

# AdGroupCriterionSelector
# - idFilters - AdWords::V201008::AdGroupCriterionService::AdGroupCriterionIdFilter
# - experimentId - SOAP::SOAPLong
# - criterionUse - AdWords::V201008::AdGroupCriterionService::CriterionUse
# - userStatuses - AdWords::V201008::AdGroupCriterionService::UserStatus
# - statsSelector - AdWords::V201008::AdGroupCriterionService::StatsSelector
# - paging - AdWords::V201008::AdGroupCriterionService::Paging
class AdGroupCriterionSelector
  attr_accessor :idFilters
  attr_accessor :experimentId
  attr_accessor :criterionUse
  attr_accessor :userStatuses
  attr_accessor :statsSelector
  attr_accessor :paging

  def initialize(idFilters = [], experimentId = nil, criterionUse = nil, userStatuses = [], statsSelector = nil, paging = nil)
    @idFilters = idFilters
    @experimentId = experimentId
    @criterionUse = criterionUse
    @userStatuses = userStatuses
    @statsSelector = statsSelector
    @paging = paging
  end
end

# ListReturnValue
# abstract
# - listReturnValue_Type - SOAP::SOAPString
class ListReturnValue
  attr_accessor :listReturnValue_Type

  def initialize(listReturnValue_Type = nil)
    @listReturnValue_Type = listReturnValue_Type
  end
end

# AdGroupCriterionReturnValue
# - listReturnValue_Type - SOAP::SOAPString
# - value - AdWords::V201008::AdGroupCriterionService::AdGroupCriterion
# - partialFailureErrors - AdWords::V201008::AdGroupCriterionService::ApiError
class AdGroupCriterionReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value
  attr_accessor :partialFailureErrors

  def initialize(listReturnValue_Type = nil, value = [], partialFailureErrors = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
    @partialFailureErrors = partialFailureErrors
  end
end

# Operation
# abstract
# - operator - AdWords::V201008::AdGroupCriterionService::Operator
# - operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# AdGroupCriterionOperation
# - operator - AdWords::V201008::AdGroupCriterionService::Operator
# - operation_Type - SOAP::SOAPString
# - operand - AdWords::V201008::AdGroupCriterionService::AdGroupCriterion
# - exemptionRequests - AdWords::V201008::AdGroupCriterionService::ExemptionRequest
class AdGroupCriterionOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :operand
  attr_accessor :exemptionRequests

  def initialize(operator = nil, operation_Type = nil, operand = nil, exemptionRequests = [])
    @operator = operator
    @operation_Type = operation_Type
    @operand = operand
    @exemptionRequests = exemptionRequests
  end
end

# Page
# abstract
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
class Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type

  def initialize(totalNumEntries = nil, page_Type = nil)
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
  end
end

# AdGroupCriterionPage
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
# - entries - AdWords::V201008::AdGroupCriterionService::AdGroupCriterion
class AdGroupCriterionPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @entries = entries
  end
end

# AdGroupCriterionError.Reason
class AdGroupCriterionErrorReason < ::String
  BID_INCOMPATIBLE_WITH_ADGROUP = AdGroupCriterionErrorReason.new("BID_INCOMPATIBLE_WITH_ADGROUP")
  CANNOT_ADD_CRITERIA_TYPE = AdGroupCriterionErrorReason.new("CANNOT_ADD_CRITERIA_TYPE")
  CANNOT_EXCLUDE_CRITERIA_TYPE = AdGroupCriterionErrorReason.new("CANNOT_EXCLUDE_CRITERIA_TYPE")
  CANNOT_TARGET_AND_EXCLUDE = AdGroupCriterionErrorReason.new("CANNOT_TARGET_AND_EXCLUDE")
  CANT_UPDATE_NEGATIVE = AdGroupCriterionErrorReason.new("CANT_UPDATE_NEGATIVE")
  CONCRETE_TYPE_REQUIRED = AdGroupCriterionErrorReason.new("CONCRETE_TYPE_REQUIRED")
  CRITERION_NOT_TARGETED = AdGroupCriterionErrorReason.new("CRITERION_NOT_TARGETED")
  CURRENCY_MISMATCH = AdGroupCriterionErrorReason.new("CURRENCY_MISMATCH")
  ID_FILTERS_HAVE_DIFF_FIELDS_SET = AdGroupCriterionErrorReason.new("ID_FILTERS_HAVE_DIFF_FIELDS_SET")
  ILLEGAL_URL = AdGroupCriterionErrorReason.new("ILLEGAL_URL")
  INAPPLICABLE_FILTER_SPECIFIED = AdGroupCriterionErrorReason.new("INAPPLICABLE_FILTER_SPECIFIED")
  INAPPLICABLE_FOR_NEGATIVE = AdGroupCriterionErrorReason.new("INAPPLICABLE_FOR_NEGATIVE")
  INVALID_DESTINATION_URL = AdGroupCriterionErrorReason.new("INVALID_DESTINATION_URL")
  INVALID_ID_FILTER_TYPE = AdGroupCriterionErrorReason.new("INVALID_ID_FILTER_TYPE")
  INVALID_KEYWORD_TEXT = AdGroupCriterionErrorReason.new("INVALID_KEYWORD_TEXT")
  INVALID_PRODUCT_FILTER = AdGroupCriterionErrorReason.new("INVALID_PRODUCT_FILTER")
  INVALID_USER_STATUS = AdGroupCriterionErrorReason.new("INVALID_USER_STATUS")
  INVALID_VERTICAL_PATH = AdGroupCriterionErrorReason.new("INVALID_VERTICAL_PATH")
  KEYWORD_LEVEL_BID_NOT_SUPPORTED_FOR_MANUALCPM = AdGroupCriterionErrorReason.new("KEYWORD_LEVEL_BID_NOT_SUPPORTED_FOR_MANUALCPM")
  NETWORK_NOT_OVERRIDABLE = AdGroupCriterionErrorReason.new("NETWORK_NOT_OVERRIDABLE")
  NO_EFFECTIVE_BID_FOR_THIS_CRITERION = AdGroupCriterionErrorReason.new("NO_EFFECTIVE_BID_FOR_THIS_CRITERION")
  PRODUCT_FILTER_TOO_LONG = AdGroupCriterionErrorReason.new("PRODUCT_FILTER_TOO_LONG")
  TOO_MANY_OPERTAIONS = AdGroupCriterionErrorReason.new("TOO_MANY_OPERTAIONS")
  TYPE_MISMATCH = AdGroupCriterionErrorReason.new("TYPE_MISMATCH")
  UNKNOWN = AdGroupCriterionErrorReason.new("UNKNOWN")
end

# AdGroupCriterionLimitExceeded.CriteriaLimitType
class AdGroupCriterionLimitExceededCriteriaLimitType < ::String
  ADGROUP_KEYWORD = AdGroupCriterionLimitExceededCriteriaLimitType.new("ADGROUP_KEYWORD")
  ADGROUP_WEBSITE = AdGroupCriterionLimitExceededCriteriaLimitType.new("ADGROUP_WEBSITE")
end

# ApprovalStatus
class ApprovalStatus < ::String
  APPROVED = ApprovalStatus.new("APPROVED")
  DISAPPROVED = ApprovalStatus.new("DISAPPROVED")
  PENDING_REVIEW = ApprovalStatus.new("PENDING_REVIEW")
  UNDER_REVIEW = ApprovalStatus.new("UNDER_REVIEW")
end

# AuthenticationError.Reason
class AuthenticationErrorReason < ::String
  AUTHENTICATION_FAILED = AuthenticationErrorReason.new("AUTHENTICATION_FAILED")
  CLIENT_CUSTOMER_ID_INVALID = AuthenticationErrorReason.new("CLIENT_CUSTOMER_ID_INVALID")
  CLIENT_CUSTOMER_ID_IS_REQUIRED = AuthenticationErrorReason.new("CLIENT_CUSTOMER_ID_IS_REQUIRED")
  CLIENT_EMAIL_FAILED_TO_AUTHENTICATE = AuthenticationErrorReason.new("CLIENT_EMAIL_FAILED_TO_AUTHENTICATE")
  CLIENT_EMAIL_INVALID = AuthenticationErrorReason.new("CLIENT_EMAIL_INVALID")
  CLIENT_EMAIL_REQUIRED = AuthenticationErrorReason.new("CLIENT_EMAIL_REQUIRED")
  CUSTOMER_NOT_FOUND = AuthenticationErrorReason.new("CUSTOMER_NOT_FOUND")
  FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT = AuthenticationErrorReason.new("FAILED_TO_AUTHENTICATE_GOOGLE_ACCOUNT")
  FAILED_TO_RETRIEVE_LOGIN_COOKIE = AuthenticationErrorReason.new("FAILED_TO_RETRIEVE_LOGIN_COOKIE")
  GOOGLE_ACCOUNT_COOKIE_INVALID = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_COOKIE_INVALID")
  GOOGLE_ACCOUNT_DELETED = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_DELETED")
  GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH = AuthenticationErrorReason.new("GOOGLE_ACCOUNT_USER_AND_ADS_USER_MISMATCH")
  LOGIN_COOKIE_INVALID = AuthenticationErrorReason.new("LOGIN_COOKIE_INVALID")
  LOGIN_COOKIE_REQUIRED = AuthenticationErrorReason.new("LOGIN_COOKIE_REQUIRED")
  NOT_ADS_USER = AuthenticationErrorReason.new("NOT_ADS_USER")
  OAUTH_TOKEN_DISABLED = AuthenticationErrorReason.new("OAUTH_TOKEN_DISABLED")
  OAUTH_TOKEN_EXPIRED = AuthenticationErrorReason.new("OAUTH_TOKEN_EXPIRED")
  OAUTH_TOKEN_HEADER_INVALID = AuthenticationErrorReason.new("OAUTH_TOKEN_HEADER_INVALID")
  OAUTH_TOKEN_INVALID = AuthenticationErrorReason.new("OAUTH_TOKEN_INVALID")
  OAUTH_TOKEN_REVOKED = AuthenticationErrorReason.new("OAUTH_TOKEN_REVOKED")
  USER_ID_INVALID = AuthenticationErrorReason.new("USER_ID_INVALID")
end

# AuthorizationError.Reason
class AuthorizationErrorReason < ::String
  EFFECTIVE_USER_PERMISSION_DENIED = AuthorizationErrorReason.new("EFFECTIVE_USER_PERMISSION_DENIED")
  NO_ADWORDS_ACCOUNT_FOR_CUSTOMER = AuthorizationErrorReason.new("NO_ADWORDS_ACCOUNT_FOR_CUSTOMER")
  NO_CUSTOMER_FOUND = AuthorizationErrorReason.new("NO_CUSTOMER_FOUND")
  UNABLE_TO_AUTHORIZE = AuthorizationErrorReason.new("UNABLE_TO_AUTHORIZE")
  USER_HAS_READONLY_PERMISSION = AuthorizationErrorReason.new("USER_HAS_READONLY_PERMISSION")
  USER_PERMISSION_DENIED = AuthorizationErrorReason.new("USER_PERMISSION_DENIED")
end

# BidSource
class BidSource < ::String
  ADGROUP = BidSource.new("ADGROUP")
  CRITERION = BidSource.new("CRITERION")
end

# BiddingError.Reason
class BiddingErrorReason < ::String
  ADGROUPS_DO_NOT_MATCH_CONSTRAINT = BiddingErrorReason.new("ADGROUPS_DO_NOT_MATCH_CONSTRAINT")
  AUCTION_STRATEGY_INCOMPATIBLE_WITH_PROXY_BIDDER = BiddingErrorReason.new("AUCTION_STRATEGY_INCOMPATIBLE_WITH_PROXY_BIDDER")
  BAD_BID_COMBINATION = BiddingErrorReason.new("BAD_BID_COMBINATION")
  BIDS_DO_NOT_FULFILL_SPEC = BiddingErrorReason.new("BIDS_DO_NOT_FULFILL_SPEC")
  BID_AMOUNT_REQUIRED = BiddingErrorReason.new("BID_AMOUNT_REQUIRED")
  BID_ERROR = BiddingErrorReason.new("BID_ERROR")
  BID_INCOMPATIBLE_WITH_ADGROUP = BiddingErrorReason.new("BID_INCOMPATIBLE_WITH_ADGROUP")
  BID_TOO_BIG = BiddingErrorReason.new("BID_TOO_BIG")
  BID_TOO_HIGH_FOR_DAILY_BUDGET = BiddingErrorReason.new("BID_TOO_HIGH_FOR_DAILY_BUDGET")
  BID_TOO_HIGH_FOR_MONTHLY_BUDGET = BiddingErrorReason.new("BID_TOO_HIGH_FOR_MONTHLY_BUDGET")
  BID_TOO_MANY_FRACTIONAL_DIGITS = BiddingErrorReason.new("BID_TOO_MANY_FRACTIONAL_DIGITS")
  BID_TOO_SMALL = BiddingErrorReason.new("BID_TOO_SMALL")
  BID_TO_POSITION_NOT_ENABLED = BiddingErrorReason.new("BID_TO_POSITION_NOT_ENABLED")
  BID_UNIVERSAL_CRITERIA_EXPECTED = BiddingErrorReason.new("BID_UNIVERSAL_CRITERIA_EXPECTED")
  BOTTOM_POSITION_OUT_OF_RANGE = BiddingErrorReason.new("BOTTOM_POSITION_OUT_OF_RANGE")
  CAMPAIGN_ALREADY_SET = BiddingErrorReason.new("CAMPAIGN_ALREADY_SET")
  CAMPAIGN_MUST_HAVE_A_BUDGET_TO_ENABLE_BUDGET_OPTIMIZER = BiddingErrorReason.new("CAMPAIGN_MUST_HAVE_A_BUDGET_TO_ENABLE_BUDGET_OPTIMIZER")
  CANNOT_CREATE_CAMPAIGN_WITH_CONVERSION_OPTIMIZER = BiddingErrorReason.new("CANNOT_CREATE_CAMPAIGN_WITH_CONVERSION_OPTIMIZER")
  CANNOT_EXCLUDE_DEFAULT = BiddingErrorReason.new("CANNOT_EXCLUDE_DEFAULT")
  CANNOT_SET_CONTENT_BID_WITHOUT_SETTING_KEYWORD_MAX_CPC_AS_WELL = BiddingErrorReason.new("CANNOT_SET_CONTENT_BID_WITHOUT_SETTING_KEYWORD_MAX_CPC_AS_WELL")
  CANNOT_SET_SITE_MAX_CPC = BiddingErrorReason.new("CANNOT_SET_SITE_MAX_CPC")
  CANNOT_TARGET_AND_EXCLUDE = BiddingErrorReason.new("CANNOT_TARGET_AND_EXCLUDE")
  CANNOT_TARGET_UNIVERSE = BiddingErrorReason.new("CANNOT_TARGET_UNIVERSE")
  CANNOT_UPDATE_SITE_BIDS_WHILE_PROXY_BIDDING = BiddingErrorReason.new("CANNOT_UPDATE_SITE_BIDS_WHILE_PROXY_BIDDING")
  CRITERION_NOT_TARGETED = BiddingErrorReason.new("CRITERION_NOT_TARGETED")
  CURRENCY_MISMATCH = BiddingErrorReason.new("CURRENCY_MISMATCH")
  GOAL_DOES_NOT_FULFILL_SPEC = BiddingErrorReason.new("GOAL_DOES_NOT_FULFILL_SPEC")
  GOAL_VALIDATION_FAILED = BiddingErrorReason.new("GOAL_VALIDATION_FAILED")
  ILLEGAL_URL = BiddingErrorReason.new("ILLEGAL_URL")
  MANY_PER_CLICK_NOT_AVAILABLE_FOR_CUSTOMER = BiddingErrorReason.new("MANY_PER_CLICK_NOT_AVAILABLE_FOR_CUSTOMER")
  MUST_EXCLUDE_0_TO_17_WITH_OTHER_AGE_EXCLUSIONS = BiddingErrorReason.new("MUST_EXCLUDE_0_TO_17_WITH_OTHER_AGE_EXCLUSIONS")
  NETWORK_NOT_OVERRIDEABLE = BiddingErrorReason.new("NETWORK_NOT_OVERRIDEABLE")
  NETWORK_SETTINGS_DO_NOT_SUPPORT_TRANSITION = BiddingErrorReason.new("NETWORK_SETTINGS_DO_NOT_SUPPORT_TRANSITION")
  NON_POSITIVE_BID = BiddingErrorReason.new("NON_POSITIVE_BID")
  NO_DESTINATION_URL_SPECIFIED = BiddingErrorReason.new("NO_DESTINATION_URL_SPECIFIED")
  NO_EFFECTIVE_BID = BiddingErrorReason.new("NO_EFFECTIVE_BID")
  PAY_PER_CONVERSION_NOT_ALLOWED_WITH_MANY_PER_CLICK = BiddingErrorReason.new("PAY_PER_CONVERSION_NOT_ALLOWED_WITH_MANY_PER_CLICK")
  PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA = BiddingErrorReason.new("PAY_PER_CONVERSION_NOT_ALLOWED_WITH_TARGET_CPA")
  PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER = BiddingErrorReason.new("PAY_PER_CONVERSION_NOT_AVAILABLE_FOR_CUSTOMER")
  POSITION_PREFERENCE_NOT_ENABLED = BiddingErrorReason.new("POSITION_PREFERENCE_NOT_ENABLED")
  POSITION_PREFERENCE_NOT_SUPPORTED_FOR_CRITERIA_TYPE = BiddingErrorReason.new("POSITION_PREFERENCE_NOT_SUPPORTED_FOR_CRITERIA_TYPE")
  PREFERRED_POSITION_CANNOT_BE_HIGHER_THAN_BOTTOM = BiddingErrorReason.new("PREFERRED_POSITION_CANNOT_BE_HIGHER_THAN_BOTTOM")
  PREFERRED_POSITION_OUT_OF_RANGE = BiddingErrorReason.new("PREFERRED_POSITION_OUT_OF_RANGE")
  PROXY_BIDDER_STRATEGY_INCOMPATIBLE_WITH_STYLE = BiddingErrorReason.new("PROXY_BIDDER_STRATEGY_INCOMPATIBLE_WITH_STYLE")
  PROXY_NOT_ENABLED = BiddingErrorReason.new("PROXY_NOT_ENABLED")
  TARGET_CPA_NOT_AVAILABLE_FOR_CUSTOMER = BiddingErrorReason.new("TARGET_CPA_NOT_AVAILABLE_FOR_CUSTOMER")
  TRANSITION_DOES_NOT_SUPPORT_GOAL = BiddingErrorReason.new("TRANSITION_DOES_NOT_SUPPORT_GOAL")
  TRANSITION_DOES_NOT_SUPPORT_OPTION = BiddingErrorReason.new("TRANSITION_DOES_NOT_SUPPORT_OPTION")
  UNSUPPORTED_PROXY_BIDDER_STRATEGY_TRANSITION = BiddingErrorReason.new("UNSUPPORTED_PROXY_BIDDER_STRATEGY_TRANSITION")
  UNSUPPORTED_STYLE = BiddingErrorReason.new("UNSUPPORTED_STYLE")
  UNSUPPORTED_STYLE_TRANSITION = BiddingErrorReason.new("UNSUPPORTED_STYLE_TRANSITION")
end

# ClientTermsError.Reason
class ClientTermsErrorReason < ::String
  INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED = ClientTermsErrorReason.new("INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED")
end

# CriterionUse
class CriterionUse < ::String
  BIDDABLE = CriterionUse.new("BIDDABLE")
  NEGATIVE = CriterionUse.new("NEGATIVE")
end

# DatabaseError.Reason
class DatabaseErrorReason < ::String
  CAMPAIGN_PRODUCT_NOT_SUPPORTED = DatabaseErrorReason.new("CAMPAIGN_PRODUCT_NOT_SUPPORTED")
  CONCURRENT_MODIFICATION = DatabaseErrorReason.new("CONCURRENT_MODIFICATION")
  DATABASE_ERROR = DatabaseErrorReason.new("DATABASE_ERROR")
  DUPLICATE_KEY = DatabaseErrorReason.new("DUPLICATE_KEY")
  PERMISSION_DENIED = DatabaseErrorReason.new("PERMISSION_DENIED")
  UNKNOWN = DatabaseErrorReason.new("UNKNOWN")
end

# DateError.Reason
class DateErrorReason < ::String
  DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL = DateErrorReason.new("DATE_RANGE_MINIMUM_AND_MAXIMUM_DATES_BOTH_NULL")
  DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE = DateErrorReason.new("DATE_RANGE_MINIMUM_DATE_LATER_THAN_MAXIMUM_DATE")
  EARLIER_THAN_MINIMUM_DATE = DateErrorReason.new("EARLIER_THAN_MINIMUM_DATE")
  INVALID_FIELD_VALUES_IN_DATE = DateErrorReason.new("INVALID_FIELD_VALUES_IN_DATE")
  INVALID_STRING_DATE = DateErrorReason.new("INVALID_STRING_DATE")
  INVALID_STRING_DATE_RANGE = DateErrorReason.new("INVALID_STRING_DATE_RANGE")
  INVALID_STRING_DATE_TIME = DateErrorReason.new("INVALID_STRING_DATE_TIME")
  LATER_THAN_MAXIMUM_DATE = DateErrorReason.new("LATER_THAN_MAXIMUM_DATE")
end

# DistinctError.Reason
class DistinctErrorReason < ::String
  DUPLICATE_ELEMENT = DistinctErrorReason.new("DUPLICATE_ELEMENT")
end

# EntityAccessDenied.Reason
class EntityAccessDeniedReason < ::String
  READ_ACCESS_DENIED = EntityAccessDeniedReason.new("READ_ACCESS_DENIED")
  WRITE_ACCESS_DENIED = EntityAccessDeniedReason.new("WRITE_ACCESS_DENIED")
end

# EntityCountLimitExceeded.Reason
class EntityCountLimitExceededReason < ::String
  ACCOUNT_LIMIT = EntityCountLimitExceededReason.new("ACCOUNT_LIMIT")
  ADGROUP_DISPLAY_AD_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_DISPLAY_AD_LIMIT")
  ADGROUP_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_LIMIT")
  ADGROUP_TEXT_AD_LIMIT = EntityCountLimitExceededReason.new("ADGROUP_TEXT_AD_LIMIT")
  CAMPAIGN_LIMIT = EntityCountLimitExceededReason.new("CAMPAIGN_LIMIT")
  UNKNOWN = EntityCountLimitExceededReason.new("UNKNOWN")
end

# EntityNotFound.Reason
class EntityNotFoundReason < ::String
  INVALID_ID = EntityNotFoundReason.new("INVALID_ID")
end

# ExperimentDataStatus
class ExperimentDataStatus < ::String
  ACTIVE = ExperimentDataStatus.new("ACTIVE")
  DELETED = ExperimentDataStatus.new("DELETED")
  UNKNOWN = ExperimentDataStatus.new("UNKNOWN")
end

# ExperimentDeltaStatus
class ExperimentDeltaStatus < ::String
  CONTROL_ONLY = ExperimentDeltaStatus.new("CONTROL_ONLY")
  EXPERIMENT_ONLY = ExperimentDeltaStatus.new("EXPERIMENT_ONLY")
  MODIFIED = ExperimentDeltaStatus.new("MODIFIED")
  UNKNOWN = ExperimentDeltaStatus.new("UNKNOWN")
end

# InternalApiError.Reason
class InternalApiErrorReason < ::String
  UNEXPECTED_INTERNAL_API_ERROR = InternalApiErrorReason.new("UNEXPECTED_INTERNAL_API_ERROR")
  UNKNOWN = InternalApiErrorReason.new("UNKNOWN")
end

# KeywordMatchType
class KeywordMatchType < ::String
  BROAD = KeywordMatchType.new("BROAD")
  EXACT = KeywordMatchType.new("EXACT")
  PHRASE = KeywordMatchType.new("PHRASE")
end

# MultiplierSource
class MultiplierSource < ::String
  ADGROUP = MultiplierSource.new("ADGROUP")
  CRITERION = MultiplierSource.new("CRITERION")
  UNKNOWN = MultiplierSource.new("UNKNOWN")
end

# NewEntityCreationError.Reason
class NewEntityCreationErrorReason < ::String
  CANNOT_SET_ID_FOR_ADD = NewEntityCreationErrorReason.new("CANNOT_SET_ID_FOR_ADD")
end

# NotEmptyError.Reason
class NotEmptyErrorReason < ::String
  EMPTY_LIST = NotEmptyErrorReason.new("EMPTY_LIST")
end

# NotWhitelistedError.Reason
class NotWhitelistedErrorReason < ::String
  CUSTOMER_NOT_WHITELISTED_FOR_API = NotWhitelistedErrorReason.new("CUSTOMER_NOT_WHITELISTED_FOR_API")
end

# NullError.Reason
class NullErrorReason < ::String
  NULL_CONTENT = NullErrorReason.new("NULL_CONTENT")
end

# OperationAccessDenied.Reason
class OperationAccessDeniedReason < ::String
  ACTION_NOT_PERMITTED = OperationAccessDeniedReason.new("ACTION_NOT_PERMITTED")
  ADD_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("ADD_OPERATION_NOT_PERMITTED")
  REMOVE_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("REMOVE_OPERATION_NOT_PERMITTED")
  SET_OPERATION_NOT_PERMITTED = OperationAccessDeniedReason.new("SET_OPERATION_NOT_PERMITTED")
  UNKNOWN = OperationAccessDeniedReason.new("UNKNOWN")
end

# Operator
class Operator < ::String
  ADD = Operator.new("ADD")
  REMOVE = Operator.new("REMOVE")
  SET = Operator.new("SET")
end

# PagingError.Reason
class PagingErrorReason < ::String
  NUMBER_OF_RESULTS_CANNOT_BE_NEGATIVE = PagingErrorReason.new("NUMBER_OF_RESULTS_CANNOT_BE_NEGATIVE")
  START_INDEX_CANNOT_BE_NEGATIVE = PagingErrorReason.new("START_INDEX_CANNOT_BE_NEGATIVE")
  UNKNOWN = PagingErrorReason.new("UNKNOWN")
end

# QuotaCheckError.Reason
class QuotaCheckErrorReason < ::String
  ACCOUNT_DELINQUENT = QuotaCheckErrorReason.new("ACCOUNT_DELINQUENT")
  ACCOUNT_INACCESSIBLE = QuotaCheckErrorReason.new("ACCOUNT_INACCESSIBLE")
  ACCOUNT_INACTIVE = QuotaCheckErrorReason.new("ACCOUNT_INACTIVE")
  INCOMPLETE_SIGNUP = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP")
  INCOMPLETE_SIGNUP_LATEST_ADWORDS_API_TNC_NOT_AGREED = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_LATEST_ADWORDS_API_TNC_NOT_AGREED")
  INCOMPLETE_SIGNUP_NO_BILLING_INFO = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_NO_BILLING_INFO")
  INCOMPLETE_SIGNUP_USER_INFO_MISSING = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_MISSING")
  INCOMPLETE_SIGNUP_USER_INFO_PENDING = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_PENDING")
  INCOMPLETE_SIGNUP_USER_INFO_REJECTED = QuotaCheckErrorReason.new("INCOMPLETE_SIGNUP_USER_INFO_REJECTED")
  INVALID_TOKEN_HEADER = QuotaCheckErrorReason.new("INVALID_TOKEN_HEADER")
  MONTHLY_BUDGET_REACHED = QuotaCheckErrorReason.new("MONTHLY_BUDGET_REACHED")
  QUOTA_EXCEEDED = QuotaCheckErrorReason.new("QUOTA_EXCEEDED")
end

# RangeError.Reason
class RangeErrorReason < ::String
  TOO_HIGH = RangeErrorReason.new("TOO_HIGH")
  TOO_LOW = RangeErrorReason.new("TOO_LOW")
end

# RateExceededError.Reason
class RateExceededErrorReason < ::String
  RATE_EXCEEDED = RateExceededErrorReason.new("RATE_EXCEEDED")
end

# ReadOnlyError.Reason
class ReadOnlyErrorReason < ::String
  READ_ONLY = ReadOnlyErrorReason.new("READ_ONLY")
end

# RejectedError.Reason
class RejectedErrorReason < ::String
  UNKNOWN_VALUE = RejectedErrorReason.new("UNKNOWN_VALUE")
end

# RequestError.Reason
class RequestErrorReason < ::String
  INVALID_INPUT = RequestErrorReason.new("INVALID_INPUT")
  UNKNOWN = RequestErrorReason.new("UNKNOWN")
end

# RequiredError.Reason
class RequiredErrorReason < ::String
  REQUIRED = RequiredErrorReason.new("REQUIRED")
end

# SizeLimitError.Reason
class SizeLimitErrorReason < ::String
  REQUEST_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("REQUEST_SIZE_LIMIT_EXCEEDED")
  RESPONSE_SIZE_LIMIT_EXCEEDED = SizeLimitErrorReason.new("RESPONSE_SIZE_LIMIT_EXCEEDED")
  UNKNOWN = SizeLimitErrorReason.new("UNKNOWN")
end

# Stats.Network
class StatsNetwork < ::String
  ALL = StatsNetwork.new("ALL")
  CONTENT = StatsNetwork.new("CONTENT")
  CONTENT_KEYWORD_BID = StatsNetwork.new("CONTENT_KEYWORD_BID")
  CONTENT_PLACEMENT_BID = StatsNetwork.new("CONTENT_PLACEMENT_BID")
  GOOGLE_SEARCH = StatsNetwork.new("GOOGLE_SEARCH")
  SEARCH = StatsNetwork.new("SEARCH")
  SEARCH_NETWORK = StatsNetwork.new("SEARCH_NETWORK")
  UNKNOWN = StatsNetwork.new("UNKNOWN")
end

# StatsQueryError.Reason
class StatsQueryErrorReason < ::String
  DATE_NOT_IN_VALID_RANGE = StatsQueryErrorReason.new("DATE_NOT_IN_VALID_RANGE")
end

# SystemServingStatus
class SystemServingStatus < ::String
  ELIGIBLE = SystemServingStatus.new("ELIGIBLE")
  RARELY_SERVED = SystemServingStatus.new("RARELY_SERVED")
end

# CriterionUserList.MembershipStatus
class CriterionUserListMembershipStatus < ::String
  CLOSED = CriterionUserListMembershipStatus.new("CLOSED")
  OPEN = CriterionUserListMembershipStatus.new("OPEN")
end

# UserStatus
class UserStatus < ::String
  ACTIVE = UserStatus.new("ACTIVE")
  DELETED = UserStatus.new("DELETED")
  PAUSED = UserStatus.new("PAUSED")
end

# get
# - selector - AdWords::V201008::AdGroupCriterionService::AdGroupCriterionSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdWords::V201008::AdGroupCriterionService::AdGroupCriterionPage
class GetResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end

# mutate
class Mutate < ::Array #:nodoc: all
end

# mutateResponse
# - rval - AdWords::V201008::AdGroupCriterionService::AdGroupCriterionReturnValue
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
