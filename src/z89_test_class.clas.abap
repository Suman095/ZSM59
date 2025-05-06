CLASS z89_test_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z89_test_class IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    "Simple Read
*    READ ENTITIES OF zi_rap_travel_sm59
*    ENTITY Travel
*   FROM VALUE #( ( TravelUUID = '262283E329B791571900FDE605BA7F5C' ) )
*   RESULT DATA(Travel_IT).
*    out->write( Travel_IT ).


    "read with fields
*    READ ENTITIES OF zi_rap_travel_sm59
*    ENTITY Travel
*    FIELDS (  AgencyID TravelID CustomerID )
*    WITH VALUE #( ( TravelUUID = '262283E329B791571900FDE605BA7F5C' ) )
*    RESULT DATA(Travel_IT).
*    out->write( Travel_IT ).

    "read all fields
*    READ ENTITIES OF zi_rap_travel_sm59
*    ENTITY Travel
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '262283E329B791571900FDE605BA7F5C' ) )
*    RESULT DATA(Travel_IT).
*    out->write( Travel_IT ).

    "read all fields by Association
*    READ ENTITIES OF zi_rap_travel_sm59
*    ENTITY Travel BY \_Booking
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '262283E329B791571900FDE605BA7F5C' ) )
*    RESULT DATA(BOOKING_IT).
*    out->write( BOOKING_IT ).

    "Unsuccessful read
*    READ ENTITIES OF zi_rap_travel_sm59
*    ENTITY Travel
*    ALL FIELDS
*    WITH VALUE #( ( TravelUUID = '2AA2283E329B791571900F5C' ) )
*    RESULT DATA(Travel_DATA)
*    FAILED DATA(Travel_FAIL_DATA)
*    REPORTED DATA(Travel_REP_DATA).
*
*    out->write( Travel_DATA ).
*    out->write( Travel_FAIL_DATA ). "Complex structure will not be displayed
*    out->write( Travel_REP_DATA ). "in Console


    "Update
*    MODIFY ENTITIES OF zi_rap_travel_sm59
*    ENTITY Travel
*    UPDATE
*    SET FIELDS
*    WITH VALUE #(  ( TravelUUID = '262283E329B791571900FDE605BA7F5C'
*                      Description = 'Vacation on  May 05' ) )
*        FAILED DATA(itab_fail)
*        REPORTED DATA(ltab_rep).
*
*
*    COMMIT ENTITIES
*    RESPONSE OF ZI_RAP_travel_sm59
*      FAILED DATA(itab_fail_comm)
*    REPORTED DATA(ltab_rep_comm).
*
*
*    out->write(  'Update Done' ).

*    "Create New Entity
*    MODIFY ENTITIES OF zi_rap_travel_sm59
*    ENTITY Travel
*    CREATE
*    SET FIELDS WITH VALUE #(
*    (  %cid = 'Newid1'
*    AgencyID = '70012'
*    CustomerID = '15'
*    BeginDate = cl_abap_context_info=>get_system_date( )
*    EndDate = cl_abap_context_info=>get_system_date( ) + 10
*    Description = 'Created on May 05'
*    )
*     )
*    MAPPED DATA(itab_map)
*    FAILED DATA(itab_fail)
*     REPORTED DATA(ltab_rep).
*
*    COMMIT ENTITIES
*     RESPONSE OF ZI_RAP_travel_sm59
*       FAILED DATA(itab_fail_comm)
*     REPORTED DATA(ltab_rep_comm).
*     out->write(  itab_map-travel  ).
*     out->write(  'Create Done' ). TravleUUID = BAF190D7754A1FD08AB2DBCB04F1043C created

    "Delete Entry
    MODIFY ENTITIES OF ZI_rap_travel_sm59
    ENTITY Travel
    DELETE FROM VALUE #( ( TravelUUID = 'BAF190D7754A1FD08AB2DBCB04F1043C' ) )
    FAILED DATA(itab_fail)
      REPORTED DATA(ltab_rep).

    COMMIT ENTITIES
    RESPONSE OF ZI_RAP_travel_sm59
      FAILED DATA(itab_fail_comm)
    REPORTED DATA(ltab_rep_comm).
     out->write(  'Delete Done' ).
    " TravleUUID = BAF190D7754A1FD08AB2DBCB04F1043C created



  ENDMETHOD.
ENDCLASS.
