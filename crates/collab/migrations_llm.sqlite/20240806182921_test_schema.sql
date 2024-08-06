create table providers (
    id integer primary key autoincrement,
    name text not null
);

create unique index uix_providers_on_name on providers (name);

create table models (
    id integer primary key autoincrement,
    provider_id integer not null references providers (id) on delete cascade,
    name text not null
);

create unique index uix_models_on_provider_id_name on models (provider_id, name);
create index ix_models_on_provider_id on models (provider_id);
create index ix_models_on_name on models (name);
