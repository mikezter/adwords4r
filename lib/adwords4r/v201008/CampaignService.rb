require 'xsd/qname'

module AdWords; module V201008; module CampaignService


# ConversionOptimizerEligibility
# - eligible - SOAP::SOAPBoolean
# - rejectionReasons - AdWords::V201008::CampaignService::ConversionOptimizerEligibilityRejectionReason
class ConversionOptimizerEligibility
  attr_accessor :eligible
  attr_accessor :rejectionReasons

  def initialize(eligible = nil, rejectionReasons = [])
    @eligible = eligible
    @rejectionReasons = rejectionReasons
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

# FrequencyCap
# - impressions - SOAP::SOAPLong
# - timeUnit - AdWords::V201008::CampaignService::TimeUnit
# - level - AdWords::V201008::CampaignService::Level
class FrequencyCap
  attr_accessor :impressions
  attr_accessor :timeUnit
  attr_accessor :level

  def initialize(impressions = nil, timeUnit = nil, level = nil)
    @impressions = impressions
    @timeUnit = timeUnit
    @level = level
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
# - dateRange - AdWords::V201008::CampaignService::DateRange
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

# Stats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdWords::V201008::CampaignService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdWords::V201008::CampaignService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdWords::V201008::CampaignService::Money
# - averageCpm - AdWords::V201008::CampaignService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdWords::V201008::CampaignService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdWords::V201008::CampaignService::Money
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

# CampaignStats
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - network - AdWords::V201008::CampaignService::StatsNetwork
# - clicks - SOAP::SOAPLong
# - impressions - SOAP::SOAPLong
# - cost - AdWords::V201008::CampaignService::Money
# - averagePosition - SOAP::SOAPDouble
# - averageCpc - AdWords::V201008::CampaignService::Money
# - averageCpm - AdWords::V201008::CampaignService::Money
# - ctr - SOAP::SOAPDouble
# - conversions - SOAP::SOAPLong
# - conversionRate - SOAP::SOAPDouble
# - costPerConversion - AdWords::V201008::CampaignService::Money
# - conversionsManyPerClick - SOAP::SOAPLong
# - conversionRateManyPerClick - SOAP::SOAPDouble
# - costPerConversionManyPerClick - AdWords::V201008::CampaignService::Money
# - viewThroughConversions - SOAP::SOAPLong
# - totalConvValue - SOAP::SOAPLong
# - valuePerConv - SOAP::SOAPDouble
# - valuePerConvManyPerClick - SOAP::SOAPDouble
# - stats_Type - SOAP::SOAPString
class CampaignStats < Stats
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

# AuthenticationError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::AuthenticationErrorReason
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
# - reason - AdWords::V201008::CampaignService::AuthorizationErrorReason
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
# - reason - AdWords::V201008::CampaignService::BiddingErrorReason
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

# BiddingTransitionError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::BiddingTransitionErrorReason
class BiddingTransitionError < ApiError
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

# BudgetError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::BudgetErrorReason
class BudgetError < ApiError
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

# CampaignError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::CampaignErrorReason
class CampaignError < ApiError
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
# - reason - AdWords::V201008::CampaignService::ClientTermsErrorReason
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
# - reason - AdWords::V201008::CampaignService::DateErrorReason
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
# - reason - AdWords::V201008::CampaignService::DistinctErrorReason
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

# EntityNotFound
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::EntityNotFoundReason
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
# - reason - AdWords::V201008::CampaignService::InternalApiErrorReason
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
# - reason - AdWords::V201008::CampaignService::NewEntityCreationErrorReason
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
# - reason - AdWords::V201008::CampaignService::NotEmptyErrorReason
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
# - reason - AdWords::V201008::CampaignService::NotWhitelistedErrorReason
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
# - reason - AdWords::V201008::CampaignService::NullErrorReason
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
# - reason - AdWords::V201008::CampaignService::OperationAccessDeniedReason
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

# OperatorError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::OperatorErrorReason
class OperatorError < ApiError
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
# - reason - AdWords::V201008::CampaignService::QuotaCheckErrorReason
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

# QuotaError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::QuotaErrorReason
# - limit - SOAP::SOAPInt
class QuotaError < ApiError
  attr_accessor :fieldPath
  attr_accessor :trigger
  attr_accessor :errorString
  attr_accessor :apiError_Type
  attr_accessor :reason
  attr_accessor :limit

  def initialize(fieldPath = nil, trigger = nil, errorString = nil, apiError_Type = nil, reason = nil, limit = nil)
    @fieldPath = fieldPath
    @trigger = trigger
    @errorString = errorString
    @apiError_Type = apiError_Type
    @reason = reason
    @limit = limit
  end
end

# RangeError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::RangeErrorReason
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
# - reason - AdWords::V201008::CampaignService::RateExceededErrorReason
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
# - reason - AdWords::V201008::CampaignService::ReadOnlyErrorReason
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
# - reason - AdWords::V201008::CampaignService::RejectedErrorReason
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
# - reason - AdWords::V201008::CampaignService::RequestErrorReason
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
# - reason - AdWords::V201008::CampaignService::RequiredErrorReason
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
# - reason - AdWords::V201008::CampaignService::SizeLimitErrorReason
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
# - reason - AdWords::V201008::CampaignService::StatsQueryErrorReason
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

# StringLengthError
# - fieldPath - SOAP::SOAPString
# - trigger - SOAP::SOAPString
# - errorString - SOAP::SOAPString
# - apiError_Type - SOAP::SOAPString
# - reason - AdWords::V201008::CampaignService::StringLengthErrorReason
class StringLengthError < ApiError
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
# - reason - AdWords::V201008::CampaignService::DatabaseErrorReason
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
# - errors - AdWords::V201008::CampaignService::ApiError
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
# - amount - AdWords::V201008::CampaignService::Money
class Bid
  attr_accessor :amount

  def initialize(amount = nil)
    @amount = amount
  end
end

# Budget
# - period - AdWords::V201008::CampaignService::BudgetBudgetPeriod
# - amount - AdWords::V201008::CampaignService::Money
# - deliveryMethod - AdWords::V201008::CampaignService::BudgetBudgetDeliveryMethod
class Budget
  attr_accessor :period
  attr_accessor :amount
  attr_accessor :deliveryMethod

  def initialize(period = nil, amount = nil, deliveryMethod = nil)
    @period = period
    @amount = amount
    @deliveryMethod = deliveryMethod
  end
end

# AdGroupBids
# abstract
# - adGroupBids_Type - SOAP::SOAPString
class AdGroupBids
  attr_accessor :adGroupBids_Type

  def initialize(adGroupBids_Type = nil)
    @adGroupBids_Type = adGroupBids_Type
  end
end

# PercentCPAAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - percentCpa - SOAP::SOAPInt
class PercentCPAAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :percentCpa

  def initialize(adGroupBids_Type = nil, percentCpa = nil)
    @adGroupBids_Type = adGroupBids_Type
    @percentCpa = percentCpa
  end
end

# BudgetOptimizerAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - proxyKeywordMaxCpc - AdWords::V201008::CampaignService::Bid
# - proxySiteMaxCpc - AdWords::V201008::CampaignService::Bid
# - enhancedCpcEnabled - SOAP::SOAPBoolean
class BudgetOptimizerAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :proxyKeywordMaxCpc
  attr_accessor :proxySiteMaxCpc
  attr_accessor :enhancedCpcEnabled

  def initialize(adGroupBids_Type = nil, proxyKeywordMaxCpc = nil, proxySiteMaxCpc = nil, enhancedCpcEnabled = nil)
    @adGroupBids_Type = adGroupBids_Type
    @proxyKeywordMaxCpc = proxyKeywordMaxCpc
    @proxySiteMaxCpc = proxySiteMaxCpc
    @enhancedCpcEnabled = enhancedCpcEnabled
  end
end

# ConversionOptimizerAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - targetCpa - AdWords::V201008::CampaignService::Bid
# - conversionOptimizerBidType - AdWords::V201008::CampaignService::ConversionOptimizerBidType
# - deduplicationMode - AdWords::V201008::CampaignService::ConversionDeduplicationMode
class ConversionOptimizerAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :targetCpa
  attr_accessor :conversionOptimizerBidType
  attr_accessor :deduplicationMode

  def initialize(adGroupBids_Type = nil, targetCpa = nil, conversionOptimizerBidType = nil, deduplicationMode = nil)
    @adGroupBids_Type = adGroupBids_Type
    @targetCpa = targetCpa
    @conversionOptimizerBidType = conversionOptimizerBidType
    @deduplicationMode = deduplicationMode
  end
end

# ManualCPCAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - keywordMaxCpc - AdWords::V201008::CampaignService::Bid
# - keywordContentMaxCpc - AdWords::V201008::CampaignService::Bid
# - siteMaxCpc - AdWords::V201008::CampaignService::Bid
# - enhancedCpcEnabled - SOAP::SOAPBoolean
class ManualCPCAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :keywordMaxCpc
  attr_accessor :keywordContentMaxCpc
  attr_accessor :siteMaxCpc
  attr_accessor :enhancedCpcEnabled

  def initialize(adGroupBids_Type = nil, keywordMaxCpc = nil, keywordContentMaxCpc = nil, siteMaxCpc = nil, enhancedCpcEnabled = nil)
    @adGroupBids_Type = adGroupBids_Type
    @keywordMaxCpc = keywordMaxCpc
    @keywordContentMaxCpc = keywordContentMaxCpc
    @siteMaxCpc = siteMaxCpc
    @enhancedCpcEnabled = enhancedCpcEnabled
  end
end

# ManualCPMAdGroupBids
# - adGroupBids_Type - SOAP::SOAPString
# - maxCpm - AdWords::V201008::CampaignService::Bid
class ManualCPMAdGroupBids < AdGroupBids
  attr_accessor :adGroupBids_Type
  attr_accessor :maxCpm

  def initialize(adGroupBids_Type = nil, maxCpm = nil)
    @adGroupBids_Type = adGroupBids_Type
    @maxCpm = maxCpm
  end
end

# BiddingStrategy
# abstract
# - biddingStrategy_Type - SOAP::SOAPString
class BiddingStrategy
  attr_accessor :biddingStrategy_Type

  def initialize(biddingStrategy_Type = nil)
    @biddingStrategy_Type = biddingStrategy_Type
  end
end

# ConversionOptimizer
# - biddingStrategy_Type - SOAP::SOAPString
# - pricingModel - AdWords::V201008::CampaignService::PricingModel
# - conversionOptimizerBidType - AdWords::V201008::CampaignService::ConversionOptimizerBidType
# - deduplicationMode - AdWords::V201008::CampaignService::ConversionDeduplicationMode
class ConversionOptimizer < BiddingStrategy
  attr_accessor :biddingStrategy_Type
  attr_accessor :pricingModel
  attr_accessor :conversionOptimizerBidType
  attr_accessor :deduplicationMode

  def initialize(biddingStrategy_Type = nil, pricingModel = nil, conversionOptimizerBidType = nil, deduplicationMode = nil)
    @biddingStrategy_Type = biddingStrategy_Type
    @pricingModel = pricingModel
    @conversionOptimizerBidType = conversionOptimizerBidType
    @deduplicationMode = deduplicationMode
  end
end

# ManualCPC
# - biddingStrategy_Type - SOAP::SOAPString
# - enhancedCpcEnabled - SOAP::SOAPBoolean
# - positionPreference - AdWords::V201008::CampaignService::PositionPreference
class ManualCPC < BiddingStrategy
  attr_accessor :biddingStrategy_Type
  attr_accessor :enhancedCpcEnabled
  attr_accessor :positionPreference

  def initialize(biddingStrategy_Type = nil, enhancedCpcEnabled = nil, positionPreference = nil)
    @biddingStrategy_Type = biddingStrategy_Type
    @enhancedCpcEnabled = enhancedCpcEnabled
    @positionPreference = positionPreference
  end
end

# ManualCPM
# - biddingStrategy_Type - SOAP::SOAPString
class ManualCPM < BiddingStrategy
  attr_accessor :biddingStrategy_Type

  def initialize(biddingStrategy_Type = nil)
    @biddingStrategy_Type = biddingStrategy_Type
  end
end

# PercentCPA
# - biddingStrategy_Type - SOAP::SOAPString
class PercentCPA < BiddingStrategy
  attr_accessor :biddingStrategy_Type

  def initialize(biddingStrategy_Type = nil)
    @biddingStrategy_Type = biddingStrategy_Type
  end
end

# BudgetOptimizer
# - biddingStrategy_Type - SOAP::SOAPString
# - enhancedCpcEnabled - SOAP::SOAPBoolean
# - bidCeiling - AdWords::V201008::CampaignService::Money
class BudgetOptimizer < BiddingStrategy
  attr_accessor :biddingStrategy_Type
  attr_accessor :enhancedCpcEnabled
  attr_accessor :bidCeiling

  def initialize(biddingStrategy_Type = nil, enhancedCpcEnabled = nil, bidCeiling = nil)
    @biddingStrategy_Type = biddingStrategy_Type
    @enhancedCpcEnabled = enhancedCpcEnabled
    @bidCeiling = bidCeiling
  end
end

# BiddingTransition
# - targetBiddingStrategy - AdWords::V201008::CampaignService::BiddingStrategy
# - explicitAdGroupBids - AdWords::V201008::CampaignService::AdGroupBids
# - biddingTransition_Type - SOAP::SOAPString
class BiddingTransition
  attr_accessor :targetBiddingStrategy
  attr_accessor :explicitAdGroupBids
  attr_accessor :biddingTransition_Type

  def initialize(targetBiddingStrategy = nil, explicitAdGroupBids = nil, biddingTransition_Type = nil)
    @targetBiddingStrategy = targetBiddingStrategy
    @explicitAdGroupBids = explicitAdGroupBids
    @biddingTransition_Type = biddingTransition_Type
  end
end

# ConversionOptimizerBiddingTransition
# - targetBiddingStrategy - AdWords::V201008::CampaignService::BiddingStrategy
# - explicitAdGroupBids - AdWords::V201008::CampaignService::AdGroupBids
# - biddingTransition_Type - SOAP::SOAPString
# - useSavedBids - SOAP::SOAPBoolean
class ConversionOptimizerBiddingTransition < BiddingTransition
  attr_accessor :targetBiddingStrategy
  attr_accessor :explicitAdGroupBids
  attr_accessor :biddingTransition_Type
  attr_accessor :useSavedBids

  def initialize(targetBiddingStrategy = nil, explicitAdGroupBids = nil, biddingTransition_Type = nil, useSavedBids = nil)
    @targetBiddingStrategy = targetBiddingStrategy
    @explicitAdGroupBids = explicitAdGroupBids
    @biddingTransition_Type = biddingTransition_Type
    @useSavedBids = useSavedBids
  end
end

# Campaign
# - id - SOAP::SOAPLong
# - name - SOAP::SOAPString
# - status - AdWords::V201008::CampaignService::CampaignStatus
# - servingStatus - AdWords::V201008::CampaignService::ServingStatus
# - startDate - SOAP::SOAPString
# - endDate - SOAP::SOAPString
# - budget - AdWords::V201008::CampaignService::Budget
# - biddingStrategy - AdWords::V201008::CampaignService::BiddingStrategy
# - conversionOptimizerEligibility - AdWords::V201008::CampaignService::ConversionOptimizerEligibility
# - campaignStats - AdWords::V201008::CampaignService::CampaignStats
# - adServingOptimizationStatus - AdWords::V201008::CampaignService::AdServingOptimizationStatus
# - frequencyCap - AdWords::V201008::CampaignService::FrequencyCap
class Campaign
  attr_accessor :id
  attr_accessor :name
  attr_accessor :status
  attr_accessor :servingStatus
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :budget
  attr_accessor :biddingStrategy
  attr_accessor :conversionOptimizerEligibility
  attr_accessor :campaignStats
  attr_accessor :adServingOptimizationStatus
  attr_accessor :frequencyCap

  def initialize(id = nil, name = nil, status = nil, servingStatus = nil, startDate = nil, endDate = nil, budget = nil, biddingStrategy = nil, conversionOptimizerEligibility = nil, campaignStats = nil, adServingOptimizationStatus = nil, frequencyCap = nil)
    @id = id
    @name = name
    @status = status
    @servingStatus = servingStatus
    @startDate = startDate
    @endDate = endDate
    @budget = budget
    @biddingStrategy = biddingStrategy
    @conversionOptimizerEligibility = conversionOptimizerEligibility
    @campaignStats = campaignStats
    @adServingOptimizationStatus = adServingOptimizationStatus
    @frequencyCap = frequencyCap
  end
end

# CampaignSelector
# - ids - SOAP::SOAPLong
# - campaignStatuses - AdWords::V201008::CampaignService::CampaignStatus
# - statsSelector - AdWords::V201008::CampaignService::StatsSelector
# - paging - AdWords::V201008::CampaignService::Paging
class CampaignSelector
  attr_accessor :ids
  attr_accessor :campaignStatuses
  attr_accessor :statsSelector
  attr_accessor :paging

  def initialize(ids = [], campaignStatuses = [], statsSelector = nil, paging = nil)
    @ids = ids
    @campaignStatuses = campaignStatuses
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

# CampaignReturnValue
# - listReturnValue_Type - SOAP::SOAPString
# - value - AdWords::V201008::CampaignService::Campaign
class CampaignReturnValue < ListReturnValue
  attr_accessor :listReturnValue_Type
  attr_accessor :value

  def initialize(listReturnValue_Type = nil, value = [])
    @listReturnValue_Type = listReturnValue_Type
    @value = value
  end
end

# Operation
# abstract
# - operator - AdWords::V201008::CampaignService::Operator
# - operation_Type - SOAP::SOAPString
class Operation
  attr_accessor :operator
  attr_accessor :operation_Type

  def initialize(operator = nil, operation_Type = nil)
    @operator = operator
    @operation_Type = operation_Type
  end
end

# CampaignOperation
# - operator - AdWords::V201008::CampaignService::Operator
# - operation_Type - SOAP::SOAPString
# - biddingTransition - AdWords::V201008::CampaignService::BiddingTransition
# - operand - AdWords::V201008::CampaignService::Campaign
class CampaignOperation < Operation
  attr_accessor :operator
  attr_accessor :operation_Type
  attr_accessor :biddingTransition
  attr_accessor :operand

  def initialize(operator = nil, operation_Type = nil, biddingTransition = nil, operand = nil)
    @operator = operator
    @operation_Type = operation_Type
    @biddingTransition = biddingTransition
    @operand = operand
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

# CampaignPage
# - totalNumEntries - SOAP::SOAPInt
# - page_Type - SOAP::SOAPString
# - totalBudget - AdWords::V201008::CampaignService::Budget
# - entries - AdWords::V201008::CampaignService::Campaign
class CampaignPage < Page
  attr_accessor :totalNumEntries
  attr_accessor :page_Type
  attr_accessor :totalBudget
  attr_accessor :entries

  def initialize(totalNumEntries = nil, page_Type = nil, totalBudget = nil, entries = [])
    @totalNumEntries = totalNumEntries
    @page_Type = page_Type
    @totalBudget = totalBudget
    @entries = entries
  end
end

# AdServingOptimizationStatus
class AdServingOptimizationStatus < ::String
  OPTIMIZE = AdServingOptimizationStatus.new("OPTIMIZE")
  ROTATE = AdServingOptimizationStatus.new("ROTATE")
  UNAVAILABLE = AdServingOptimizationStatus.new("UNAVAILABLE")
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

# BiddingTransitionError.Reason
class BiddingTransitionErrorReason < ::String
  ACCELERATED_DELIVERY_NOT_SUPPORTED_FOR_BUDGET_OPTIMIZER = BiddingTransitionErrorReason.new("ACCELERATED_DELIVERY_NOT_SUPPORTED_FOR_BUDGET_OPTIMIZER")
  BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE = BiddingTransitionErrorReason.new("BIDDING_STRATEGY_NOT_AVAILABLE_FOR_ACCOUNT_TYPE")
  BIDDING_TRANSITION_FAILED = BiddingTransitionErrorReason.new("BIDDING_TRANSITION_FAILED")
  BID_TO_POSITION_ENABLED = BiddingTransitionErrorReason.new("BID_TO_POSITION_ENABLED")
  BUDGET_OPTIMIZER_IS_ENABLED = BiddingTransitionErrorReason.new("BUDGET_OPTIMIZER_IS_ENABLED")
  CANNOT_SET_EXPLICIT_BID = BiddingTransitionErrorReason.new("CANNOT_SET_EXPLICIT_BID")
  CONVERSION_OPTIMIZER_IS_ENABLED = BiddingTransitionErrorReason.new("CONVERSION_OPTIMIZER_IS_ENABLED")
  CONVERSION_TRACKING_NOT_AVAILABLE_FOR_ACCOUNT_TYPE = BiddingTransitionErrorReason.new("CONVERSION_TRACKING_NOT_AVAILABLE_FOR_ACCOUNT_TYPE")
  CONVERSION_TRACKING_NOT_ENABLED = BiddingTransitionErrorReason.new("CONVERSION_TRACKING_NOT_ENABLED")
  EXPLICIT_BID_REQUIRED_FOR_TRANSITION = BiddingTransitionErrorReason.new("EXPLICIT_BID_REQUIRED_FOR_TRANSITION")
  EXPLICIT_BID_TYPE_DOES_NOT_MATCH_CAMPAIGN_BIDDING_STRATEGY = BiddingTransitionErrorReason.new("EXPLICIT_BID_TYPE_DOES_NOT_MATCH_CAMPAIGN_BIDDING_STRATEGY")
  HAS_ACTIVE_EXPERIMENT = BiddingTransitionErrorReason.new("HAS_ACTIVE_EXPERIMENT")
  INVALID_BID = BiddingTransitionErrorReason.new("INVALID_BID")
  INVALID_STATUS = BiddingTransitionErrorReason.new("INVALID_STATUS")
  IS_CPM_CAMPAIGN = BiddingTransitionErrorReason.new("IS_CPM_CAMPAIGN")
  IS_PERCENT_CPA_CAMPAIGN = BiddingTransitionErrorReason.new("IS_PERCENT_CPA_CAMPAIGN")
  MISSING_REQUIRED_BID = BiddingTransitionErrorReason.new("MISSING_REQUIRED_BID")
  NOT_ENOUGH_CONVERSIONS = BiddingTransitionErrorReason.new("NOT_ENOUGH_CONVERSIONS")
  NOT_ENOUGH_CONVERSION_DATA = BiddingTransitionErrorReason.new("NOT_ENOUGH_CONVERSION_DATA")
  NOT_THE_PREVIOUS_BIDDING_STRATEGY = BiddingTransitionErrorReason.new("NOT_THE_PREVIOUS_BIDDING_STRATEGY")
  OPTED_IN_SEARCH = BiddingTransitionErrorReason.new("OPTED_IN_SEARCH")
  PROXY_BIDDING_ON = BiddingTransitionErrorReason.new("PROXY_BIDDING_ON")
  SITE_REMNANT_RESERVATION_ALLOWED = BiddingTransitionErrorReason.new("SITE_REMNANT_RESERVATION_ALLOWED")
  TRANSITION_TO_ITSELF = BiddingTransitionErrorReason.new("TRANSITION_TO_ITSELF")
  UNKNOWN_BIDDING_STRATEGY = BiddingTransitionErrorReason.new("UNKNOWN_BIDDING_STRATEGY")
  UNSUPPORTED_TRANSITION = BiddingTransitionErrorReason.new("UNSUPPORTED_TRANSITION")
  USE_POSITION_PREFERENCE_IN_MANUALCPC_INSTEAD_TO_DISABLE_POSITION_PREFERENCE = BiddingTransitionErrorReason.new("USE_POSITION_PREFERENCE_IN_MANUALCPC_INSTEAD_TO_DISABLE_POSITION_PREFERENCE")
  VCG_ENABLED = BiddingTransitionErrorReason.new("VCG_ENABLED")
end

# Budget.BudgetDeliveryMethod
class BudgetBudgetDeliveryMethod < ::String
  ACCELERATED = BudgetBudgetDeliveryMethod.new("ACCELERATED")
  STANDARD = BudgetBudgetDeliveryMethod.new("STANDARD")
end

# Budget.BudgetPeriod
class BudgetBudgetPeriod < ::String
  DAILY = BudgetBudgetPeriod.new("DAILY")
  MONTHLY = BudgetBudgetPeriod.new("MONTHLY")
end

# BudgetError.Reason
class BudgetErrorReason < ::String
  BUDGET_ERROR = BudgetErrorReason.new("BUDGET_ERROR")
  BUDGET_PERIOD_NOT_AVAILABLE = BudgetErrorReason.new("BUDGET_PERIOD_NOT_AVAILABLE")
  INVALID_BUDGET_SCHEDULE = BudgetErrorReason.new("INVALID_BUDGET_SCHEDULE")
  MONEY_AMOUNT_IN_WRONG_CURRENCY = BudgetErrorReason.new("MONEY_AMOUNT_IN_WRONG_CURRENCY")
  MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_CURRENCY_MINIMUM_CPC")
  MONEY_AMOUNT_LESS_THAN_MAXIMUM_AD_GROUP_CPM = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MAXIMUM_AD_GROUP_CPM")
  MONEY_AMOUNT_LESS_THAN_MAXIMUM_SITE_CPM = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MAXIMUM_SITE_CPM")
  MONEY_AMOUNT_LESS_THAN_MINIMUM_AD_GROUP_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MINIMUM_AD_GROUP_CPC")
  MONEY_AMOUNT_LESS_THAN_MINIMUM_CRITERIA_CPC = BudgetErrorReason.new("MONEY_AMOUNT_LESS_THAN_MINIMUM_CRITERIA_CPC")
  MONEY_AMOUNT_TOO_LARGE = BudgetErrorReason.new("MONEY_AMOUNT_TOO_LARGE")
  NEGATIVE_MONEY_AMOUNT = BudgetErrorReason.new("NEGATIVE_MONEY_AMOUNT")
  NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT = BudgetErrorReason.new("NON_MULTIPLE_OF_MINIMUM_CURRENCY_UNIT")
end

# CampaignError.Reason
class CampaignErrorReason < ::String
  AFTER_MAXIMUM_ALLOWABLE_DATE = CampaignErrorReason.new("AFTER_MAXIMUM_ALLOWABLE_DATE")
  CANNOT_ADD_CAMPAIGN_WITH_CONVERSION_OPTIMIZER_BIDDING_STRATEGY = CampaignErrorReason.new("CANNOT_ADD_CAMPAIGN_WITH_CONVERSION_OPTIMIZER_BIDDING_STRATEGY")
  CANNOT_CHANGE_CAMPAIGN_TYPE = CampaignErrorReason.new("CANNOT_CHANGE_CAMPAIGN_TYPE")
  CANNOT_CHANGE_TV_CAMPAIGN = CampaignErrorReason.new("CANNOT_CHANGE_TV_CAMPAIGN")
  CANNOT_GO_BACK_TO_INCOMPLETE = CampaignErrorReason.new("CANNOT_GO_BACK_TO_INCOMPLETE")
  CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED = CampaignErrorReason.new("CANNOT_MODIFY_START_DATE_IF_ALREADY_STARTED")
  CANNOT_SET_ACCELERATED_DELIVERY_FOR_BUDGET_OPTIMIZER_CAMPAIGN = CampaignErrorReason.new("CANNOT_SET_ACCELERATED_DELIVERY_FOR_BUDGET_OPTIMIZER_CAMPAIGN")
  CANNOT_SET_BUDGET = CampaignErrorReason.new("CANNOT_SET_BUDGET")
  CANNOT_SET_DATE_TO_PAST = CampaignErrorReason.new("CANNOT_SET_DATE_TO_PAST")
  CANNOT_SET_POSITION_PREFERENCE_IF_NOT_SEARCH_TARGETED = CampaignErrorReason.new("CANNOT_SET_POSITION_PREFERENCE_IF_NOT_SEARCH_TARGETED")
  CURRENCY_NOT_VALID_FOR_ACCOUNT = CampaignErrorReason.new("CURRENCY_NOT_VALID_FOR_ACCOUNT")
  DUPLICATE_CAMPAIGN_NAME = CampaignErrorReason.new("DUPLICATE_CAMPAIGN_NAME")
  FREQUENCY_CAP_LEVEL_CANNOT_BE_NULL = CampaignErrorReason.new("FREQUENCY_CAP_LEVEL_CANNOT_BE_NULL")
  FREQUENCY_CAP_TIME_UNIT_CANNOT_BE_NULL = CampaignErrorReason.new("FREQUENCY_CAP_TIME_UNIT_CANNOT_BE_NULL")
  INCOMPATIBLE_CAMPAIGN_FIELD = CampaignErrorReason.new("INCOMPATIBLE_CAMPAIGN_FIELD")
  INVALID_AD_SERVING_OPTIMIZATION_STATUS = CampaignErrorReason.new("INVALID_AD_SERVING_OPTIMIZATION_STATUS")
  INVALID_CAMPAIGN_NAME = CampaignErrorReason.new("INVALID_CAMPAIGN_NAME")
  INVALID_OPERATION_IF_SERVING_STATUS_HAS_ENDED = CampaignErrorReason.new("INVALID_OPERATION_IF_SERVING_STATUS_HAS_ENDED")
  KEYWORD_QUOTA_EXCEEDED = CampaignErrorReason.new("KEYWORD_QUOTA_EXCEEDED")
  MAX_IMPRESSIONS_NOT_IN_RANGE = CampaignErrorReason.new("MAX_IMPRESSIONS_NOT_IN_RANGE")
  START_DATE_AFTER_END_DATE = CampaignErrorReason.new("START_DATE_AFTER_END_DATE")
  TIME_UNIT_NOT_SUPPORTED = CampaignErrorReason.new("TIME_UNIT_NOT_SUPPORTED")
  UNKNOWN = CampaignErrorReason.new("UNKNOWN")
  USE_BIDDING_TRANSITION_FIELD_INSTEAD_TO_SWITCH_BIDDING_STRATEGY = CampaignErrorReason.new("USE_BIDDING_TRANSITION_FIELD_INSTEAD_TO_SWITCH_BIDDING_STRATEGY")
end

# CampaignStatus
class CampaignStatus < ::String
  ACTIVE = CampaignStatus.new("ACTIVE")
  DELETED = CampaignStatus.new("DELETED")
  PAUSED = CampaignStatus.new("PAUSED")
end

# ClientTermsError.Reason
class ClientTermsErrorReason < ::String
  INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED = ClientTermsErrorReason.new("INCOMPLETE_SIGNUP_CURRENT_ADWORDS_TNC_NOT_AGREED")
end

# ConversionDeduplicationMode
class ConversionDeduplicationMode < ::String
  MANY_PER_CLICK = ConversionDeduplicationMode.new("MANY_PER_CLICK")
  ONE_PER_CLICK = ConversionDeduplicationMode.new("ONE_PER_CLICK")
end

# ConversionOptimizerBidType
class ConversionOptimizerBidType < ::String
  MAX_CPA = ConversionOptimizerBidType.new("MAX_CPA")
  TARGET_CPA = ConversionOptimizerBidType.new("TARGET_CPA")
end

# ConversionOptimizerEligibility.RejectionReason
class ConversionOptimizerEligibilityRejectionReason < ::String
  CAMPAIGN_IS_NOT_ACTIVE = ConversionOptimizerEligibilityRejectionReason.new("CAMPAIGN_IS_NOT_ACTIVE")
  CONVERSION_TRACKING_NOT_ENABLED = ConversionOptimizerEligibilityRejectionReason.new("CONVERSION_TRACKING_NOT_ENABLED")
  NOT_CPC_CAMPAIGN = ConversionOptimizerEligibilityRejectionReason.new("NOT_CPC_CAMPAIGN")
  NOT_ENOUGH_CONVERSIONS = ConversionOptimizerEligibilityRejectionReason.new("NOT_ENOUGH_CONVERSIONS")
  UNKNOWN = ConversionOptimizerEligibilityRejectionReason.new("UNKNOWN")
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

# EntityNotFound.Reason
class EntityNotFoundReason < ::String
  INVALID_ID = EntityNotFoundReason.new("INVALID_ID")
end

# InternalApiError.Reason
class InternalApiErrorReason < ::String
  UNEXPECTED_INTERNAL_API_ERROR = InternalApiErrorReason.new("UNEXPECTED_INTERNAL_API_ERROR")
  UNKNOWN = InternalApiErrorReason.new("UNKNOWN")
end

# Level
class Level < ::String
  ADGROUP = Level.new("ADGROUP")
  CAMPAIGN = Level.new("CAMPAIGN")
  CREATIVE = Level.new("CREATIVE")
  UNKNOWN = Level.new("UNKNOWN")
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

# OperatorError.Reason
class OperatorErrorReason < ::String
  OPERATOR_NOT_SUPPORTED = OperatorErrorReason.new("OPERATOR_NOT_SUPPORTED")
end

# PositionPreference
class PositionPreference < ::String
  OFF = PositionPreference.new("OFF")
  ON = PositionPreference.new("ON")
end

# PricingModel
class PricingModel < ::String
  CLICKS = PricingModel.new("CLICKS")
  CONVERSIONS = PricingModel.new("CONVERSIONS")
  IMPRESSIONS = PricingModel.new("IMPRESSIONS")
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

# QuotaError.Reason
class QuotaErrorReason < ::String
  TOO_MANY_ADGROUPS_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_ADGROUPS_PER_CAMPAIGN")
  TOO_MANY_CAMPAIGNS_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CAMPAIGNS_PER_ACCOUNT")
  TOO_MANY_CONVERSION_TYPES_PER_ACCOUNT = QuotaErrorReason.new("TOO_MANY_CONVERSION_TYPES_PER_ACCOUNT")
  TOO_MANY_KEYWORDS_PER_ADGROUP = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_ADGROUP")
  TOO_MANY_KEYWORDS_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_CAMPAIGN")
  TOO_MANY_KEYWORDS_PER_CUSTOMER = QuotaErrorReason.new("TOO_MANY_KEYWORDS_PER_CUSTOMER")
  TOO_MANY_SITES_PER_ADGROUP = QuotaErrorReason.new("TOO_MANY_SITES_PER_ADGROUP")
  TOO_MANY_SITES_PER_CAMPAIGN = QuotaErrorReason.new("TOO_MANY_SITES_PER_CAMPAIGN")
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

# ServingStatus
class ServingStatus < ::String
  ENDED = ServingStatus.new("ENDED")
  NONE = ServingStatus.new("NONE")
  PENDING = ServingStatus.new("PENDING")
  SERVING = ServingStatus.new("SERVING")
  SUSPENDED = ServingStatus.new("SUSPENDED")
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

# StringLengthError.Reason
class StringLengthErrorReason < ::String
  TOO_LONG = StringLengthErrorReason.new("TOO_LONG")
  TOO_SHORT = StringLengthErrorReason.new("TOO_SHORT")
end

# TimeUnit
class TimeUnit < ::String
  DAY = TimeUnit.new("DAY")
  HOUR = TimeUnit.new("HOUR")
  LIFETIME = TimeUnit.new("LIFETIME")
  MINUTE = TimeUnit.new("MINUTE")
  MONTH = TimeUnit.new("MONTH")
  WEEK = TimeUnit.new("WEEK")
end

# get
# - selector - AdWords::V201008::CampaignService::CampaignSelector
class Get #:nodoc: all
  attr_accessor :selector

  def initialize(selector = nil)
    @selector = selector
  end
end

# getResponse
# - rval - AdWords::V201008::CampaignService::CampaignPage
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
# - rval - AdWords::V201008::CampaignService::CampaignReturnValue
class MutateResponse #:nodoc: all
  attr_accessor :rval

  def initialize(rval = nil)
    @rval = rval
  end
end


end; end; end
