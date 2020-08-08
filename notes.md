# Models

## Account

has_many :transactions

- Name -> string
- Balance -> float

## Transaction

belongs_to :account

- Account_id -> integer
- Amount -> float
- typeOfTransaction -> string
- date -> dateTime
- description -> string
