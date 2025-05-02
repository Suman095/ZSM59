@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@UI.headerInfo:  { typeName : 'Connect', typeNamePlural: 'Connection Details' }
define view entity Z95I_Connection_TM_v1
  as select from /dmo/connection
{
      @UI.facet: [{ purpose: #STANDARD,
                    type: #IDENTIFICATION_REFERENCE,
                    position: 10,
                    label: 'Connection Facet' }]

      @UI.lineItem: [{ position: 10, label: 'Airline' }]
      @UI.selectionField: [{ position: 30 }]
      @UI.identification: [{ position: 10 , label: 'Airline Id in Facet'}]
  key carrier_id      as CarrierId,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
  key connection_id   as ConnectionId,
      @UI.lineItem: [{ position: 30 , label: 'Dept Id'}]
      @UI.identification: [{ position: 30 }]
      airport_from_id as AirportFromId,
      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem: [{ position: 40 , label: 'Arrival Id'}]
      @UI.identification: [{ position: 40 }]
      airport_to_id   as AirportToId,
      @UI.selectionField: [{ position: 20 }]
      @UI.lineItem: [{ position: 50 }]
      departure_time  as DepartureTime,
      @UI.lineItem: [{ position: 60 }]
      arrival_time    as ArrivalTime,
      @UI.lineItem: [{ position: 70 }]
      @UI.identification: [{ position: 50 }]
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      distance        as Distance,
      distance_unit   as DistanceUnit
}
