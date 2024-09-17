enum Routes {
  //! COMMON
  splash('/splash'),
  clubCode('/clubCode'),
  logout('/logout'),
  login('/login'),
  redefinePassword('/redefinePassword'),
  about('/about'),
  contactUs('/contactUs'),
  firstAccess('/firstAccess'),
  confirmAccess('/confirmAccess'),
  error('/error'),
  debugging('/debugging'),

  //! ASSOCIADO
  digitalWallet('/digitalWallet'),
  myInvitations('/myInvitations'),
  addGuests('/addGuests'),
  addGuestsBarbecue('/addGuestsBarbecue'),
  inviteFromQrCode('/inviteFromQrCode'),
  inviteFromQrCodeAnon('/inviteFromQrCodeAnon'),
  myHistoricOfBarbecuesGuests('/myHistoricOfBarbecuesGuests'),
  myHistoricOfIndividualGuests('/myHistoricOfIndividualGuests'),
  barbecueBookingTerms('/barbecueBookingTerms'),
  barbecueResponsabilityTerms('/barbecueResponsabilityTerms'),
  menuReservations('/menuReservations'),
  cancelBarbecueReservation('/cancelBarbecueReservation'),
  barbecueReservation('/barbecueReservation'),
  barbecueGrillMap('/barbecueGrillMap'),
  consultMyDebts('/consultMyDebts'),
  menuReservationsSpt('/menuReservationsSpt'),
  bookingTerms('/bookingTerms'),
  confirmationSpt('/confirmationSpt'),
  sportPageview('/sportPageview'),
  reservationScreenSpt('/reservationScreenSpt'),
  accepted('/accepted'),
  debt('/debt'),
  historicDebt('/historicDebt'),
  historicDetailsDebt('/historicDetailsDebt'),
  historicReservation('/historicReservation'),
  events('/events'),
  buyEvent('/buyEvent'),
  buyEventTable('/buyEventTable'),
  loadingPurchaseEvent('/loadingPurchaseEvent'),
  eventInviteQr('/eventInviteQr'),
  individualInviteQr('/individual-invite-qr'),
  duplicate('/duplicate'),
  base('/base'),
  confirmPasswordVote('/confirmPasswordVote'),
  electionVote('/electionVote'),
  confirmationVote('/confirmationVote'),
  electionTerms('/election-terms'),
  confirmedVote('/confirmedVote'),
  medicalExam('/medicalExam'),
  pixScreen('/pix-screen'),
  pixScreenAsaas('/pix-screen-asaas'),
  pixConfirmed('/pix-confirmed'),
  championship('/championship'),
  subscriptionChamp('/subscription-champ'),
  registerChamp('/register-champ'),
  updateRegister('/update-register'),
  menuMassage('/menuMassage'),
  termsMassage('/termsMassage'),
  massageReservationScreen('/massageReservationScreen'),
  selectDayMassageScreen('/selectDayMassageScreen'),
  confirmationMassageScreen('/confirmationMassageScreen'),
  cancelMassageReservation('/cancelMassageReservation'),
  historicMassageReservation('/historicMassageReservation'),
  dependents('/dependents'),
  editDependent('/edit-dependent'),
  services('/services'),
  servicesItems('/services-items'),
  dayUser('/day-user'),
  buyDayUser('/buy-day-user'),
  dayUserInvite('/day-user-invite'),
  menuNaval('/menu-naval'),
  reserveNaval('/reservation-naval'),
  termsNaval('/terms-naval'),
  confirmReserveNaval('/confirm-reservation-naval'),
  completationReserveNaval('/completation-naval'),
  reserveAndInvitesNaval('/reservations-invites-naval'),
  verifyInvitesReserveNaval('/verify-invites-reservation-naval'),
  cancelReserveNaval('/cancel-reservation-naval'),
  historicReserveNaval('/historic-reservation-naval'),
  individualInviteQrNaval('/individual-invite-qr-naval'),

  //! PAYMENTS
  choosePayment('/choose-payment'),
  chooseCreditCard('/choose-credit-card'),
  creditCard('/credit-card'),
  newCreditCard('/new-credit-card'),
  paymentResume('/payment-resume'),
  loadingPayment('/loading-payment'),
  secondInvoicesLoading('/invoices-loading'),

  //! NÃO ASSOCIADO
  homeNS('/homeNS'),
  updateRegisterNS('/update-registerNS'),
  redefinePasswordNS('/redefine-passwordNS'),
  registerNS('/registerNS'),
  invitesNS('/invitesNS'),
  inviteQrCodeNS('/inviteQrCodeNS'),
  proposalNS('/proposalNS'),
  proposalSentNS('/proposalSentNS'),
  proposalUnderAnalysisNS('/proposalUnderAnalysisNS'),
  addInviteCodeNS('/addInviteCodeNS'),
  scannerInviteQr('/scannerInviteQr'),
  digitalWalletNS('/digitalWalletNS'),
  courtesiesMenu('/courtesiesMenu'),
  courtesieSubscribe('/courtesieSubscribe'),
  courtesieCard('/courtesieCard'),
  courtesieAddDependents('/courtesieAddDependents'),
  consultMyDebtsNs('/consultMyDebtsNs'),
  debtNs('/debtNs'),
  historicDebtNs('/historicDebtNs'),
  historicDetailsDebtNs('/historicDetailsDebtNs'),
  pixScreenNS('/pix-screen-ns'),
  pixConfirmedNS('/pix-confirmed-ns');

  const Routes(this.path);

  final String path;

  @override
  String toString() => path;
}
