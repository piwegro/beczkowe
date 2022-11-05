CREATE SCHEMA IF NOT EXISTS piwegro;

SET search_path TO piwegro;

CREATE TABLE IF NOT EXISTS currencies (
    symbol VARCHAR(3) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,

    exchange_rate FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    id TEXT PRIMARY KEY,

    name TEXT NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS accepted_currencies (
    user_id TEXT NOT NULL,
    currency_symbol VARCHAR(3) NOT NULL,
    
    PRIMARY KEY (user_id, currency_symbol),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (currency_symbol) REFERENCES currencies(symbol)
);


CREATE TABLE IF NOT EXISTS offers (
    id SERIAL PRIMARY KEY,

    seller_id TEXT NOT NULL,

    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,

    price INTEGER NOT NULL,
    currency VARCHAR(3) NOT NULL,

    images TEXT[] NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT fk_seller_id FOREIGN KEY(seller_id) REFERENCES users(id)
);


CREATE TABLE IF NOT EXISTS messages (
    id SERIAL PRIMARY KEY,

    sender_id TEXT NOT NULL,
    receiver_id TEXT NOT NULL,

    content TEXT NOT NULL,

    sent_at TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT fk_sender_id FOREIGN KEY(sender_id) REFERENCES users(id),
    CONSTRAINT fk_receiver_id FOREIGN KEY(receiver_id) REFERENCES users(id)
);