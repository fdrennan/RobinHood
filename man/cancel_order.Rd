% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cancel_order.R
\name{cancel_order}
\alias{cancel_order}
\title{Cancel an existing order on RobinHood}
\usage{
cancel_order(RH, order_url)
}
\arguments{
\item{RH}{object of class RobinHood}

\item{order_url}{(string) cancel url returned from place_order()}
}
\description{
Send a cancel signal for a particular order to RobinHood. You will need to retain the buy/sell order url returned from place_order.
}
\examples{
\dontrun{
# Login in to your RobinHood account
RH <- RobinHood("username", "password")

# Place an order, should generate an email confirmation
x <- place_order(RH = RH,
                 symbol = "GE",          # Ticker symbol you want to trade
                 type = "market",        # Type of market order
                 time_in_force = "gfd",  # Time period the order is good for (gfd: good for day)
                 trigger = "immediate",  # Trigger or delay order
                 price = 8.96,           # The highest price you are willing to pay
                 quantity = 1,           # Number of shares you want
                 side = "buy")           # buy or sell

# Cancel the order, should also generate an email confirmation
cancel_order(RH, x$cancel)
}
}
