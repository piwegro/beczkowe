INSERT INTO currencies VALUES ('HAR', 'Harnaś', 1.0);

INSERT INTO users (id, name, email) VALUES ('KyumBFaY66ZdS3oG7fPZQZycKyC2', 'Karol', 'karol@kucza.xyz');
INSERT INTO users (id, name, email) VALUES ('iELOTJC3k6VMCrrtamFq7907REz1', 'John', 'john.doe@example.com');

INSERT INTO accepted_currencies VALUES ('KyumBFaY66ZdS3oG7fPZQZycKyC2', 'HAR');
INSERT INTO accepted_currencies VALUES ('iELOTJC3k6VMCrrtamFq7907REz1', 'HAR');

INSERT INTO offers (id, seller_id, name, description, price, currency, images, created_at) VALUES (1, 'KyumBFaY66ZdS3oG7fPZQZycKyC2', 'Półeczka', 'Bardzo ładna półeczka we wspaniałym stanie', 4, 'HAR', '{}', '2022-10-31 18:32:19.000000');
