# Customer churn: what it costs and what to do about it

## The problem

Of 10,000 customers in the book, 2,037 (20.4%) closed their accounts over the
observation window. At an assumed 250 EUR annual margin per customer, that is
roughly **510k EUR a year in lost margin**, and the customers who left took
**186M EUR in balances** with them. Churners are not the marginal accounts:
they held 91k EUR on average against 73k for customers who stayed.

## Where the losses concentrate

- **Inactive customers aged 50+ with money in their accounts.** 356 customers,
  84% churn, 120k EUR average balance, about 40M EUR in balances at risk.
  These are deposits that walk, not revenue, but they are the single
  densest pocket of avoidable loss.
- **Germany.** 32% churn versus 16% in France and Spain. Even active German
  customers churn above the whole-book average, so this is a product or
  pricing problem, not a disengagement problem.
- **Customers holding 3-4 products.** 326 customers, 86% churn. Something
  about these bundles is driving people out.

## What the model adds

A churn model built on this data identifies who is about to leave well before
random targeting would. On held-out customers it catches 57% of churners
while keeping 73 of every 100 contacts on target, flagging about 16% of the
book for outreach.

Deployed at that operating point, and assuming a 30 EUR retention offer, a
250 EUR annual margin per retained customer, and that 30% of contacted
churners accept and stay, expected net value is about **39k EUR per year per
10,000 customers**: offers cost ~48k, retained margin returns ~86k. All three
assumptions are stated, not measured; the retention experiment below replaces
the weakest one (the 30% save rate) with evidence.

## Recommended actions

1. Stand up a retention desk for the inactive 50+ funded segment and run the
   proposed experiment: banker call plus 12-month fee waiver to half the
   segment, 6-month readout, ship if churn drops 15 points and the cost per
   retained customer stays under the margin.
2. Commission a Germany product and pricing review. Outreach will not fix a
   32% churn rate that persists among active customers.
3. Go through the 3-4 product bundles for fee stacking. An 86% churn rate is not a
   marketing problem.
4. After the first experiment reads out, test cross-selling a second product
   to funded single-product customers, the largest at-risk pool (2,048
   customers, 138M EUR in balances at risk).
