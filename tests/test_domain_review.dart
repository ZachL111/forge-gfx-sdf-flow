import '../lib/domain_review.dart';

void main() {
  const item = DomainReview(65, 20, 19, 50);
  assert(DomainReviewLens.score(item) == 143);
  assert(DomainReviewLens.lane(item) == 'ship');
}
