-- Add migration script here
begin;

update public.subscriptions
    set status = 'confirmed'
    where status is null;

alter table public.subscriptions
    alter column status set not null;

commit;
