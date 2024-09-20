import { PaymentStrategy } from "./payment-strategy";

export class VisaPaymentStrategy implements PaymentStrategy {
  processPayment(amount: number) {
    console.log("Processig VISA payment.");
  }
}
