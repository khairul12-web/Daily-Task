-- DAYLIST Supabase setup: paste this into Supabase SQL Editor and Run.
create table if not exists public.tasks (
  id uuid primary key,
  user_id uuid not null references auth.users(id) on delete cascade,
  title text not null,
  notes text default '',
  category text default 'Personal',
  priority text default 'medium',
  due_date date,
  due_time text,
  completed boolean not null default false,
  created_at timestamptz not null default now()
);
alter table public.tasks enable row level security;
create policy "Users can read their own tasks" on public.tasks for select using (auth.uid() = user_id);
create policy "Users can insert their own tasks" on public.tasks for insert with check (auth.uid() = user_id);
create policy "Users can update their own tasks" on public.tasks for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users can delete their own tasks" on public.tasks for delete using (auth.uid() = user_id);
-- Enable realtime for this table in Database > Replication / Publications if it is not already enabled.
