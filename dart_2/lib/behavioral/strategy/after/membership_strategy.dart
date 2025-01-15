abstract class MembershipStrategy {
  double calculatePrice(double price);
}

class RegularMembershipStrategy implements MembershipStrategy {
  @override
  double calculatePrice(double price) {
    return price;
  }
}

class GoldMembershipStrategy implements MembershipStrategy {
  @override
  double calculatePrice(double price) {
    return price * 0.9;
  }
}

class PremiumMembershipStrategy implements MembershipStrategy {
  @override
  double calculatePrice(double price) {
    return price * 0.8;
  }
}
