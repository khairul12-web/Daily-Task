# DAYLIST — Make today count

A responsive task planner starter, designed for GitHub Pages + Supabase free tier.

## Try locally
Open `index.html` in your browser. It works in demo mode and saves tasks only in that browser/device.

## Turn on cross-device cloud sync
1. Create a free project at https://supabase.com
2. In Supabase Dashboard > SQL Editor, paste and run `supabase-setup.sql`.
3. In Project Settings > API, copy the Project URL and anon/public key.
4. Open `index.html`, find `SUPABASE_URL` and `SUPABASE_ANON_KEY` near the bottom, replace placeholders.
   - The anon/public key is intended for client apps. Never use a service-role key here.
5. In Supabase Authentication settings, configure your site's URL and redirect URLs after deployment (GitHub Pages URL).
6. Enable Realtime for the `tasks` table if needed.
7. Push the folder contents to a GitHub repository and enable Pages: Settings > Pages > Deploy from branch > main / root.
8. Open the published site on laptop and phone, create/sign in with the same account. Tasks sync through Supabase.

## PWA install
- Android: open the website in Chrome > menu > Add to Home screen / Install.
- Desktop Chrome/Edge: use the install icon in address bar or menu > Install app.
- iPhone: Safari > Share > Add to Home Screen.

## Important
- In demo mode, data is stored only in the current browser.
- Cloud mode syncs after Supabase is configured and signed in.
- Free hosted services have usage limits and may pause inactive projects. Check provider's current free-plan terms.
