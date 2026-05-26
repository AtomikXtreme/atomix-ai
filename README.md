# Atomix AI

Production-grade AI chatbot built with Next.js 15, Groq, Supabase, and Clerk.

## Features

- Streaming AI chat with Groq (Llama 3.3, DeepSeek R1)
- Markdown & syntax highlighting
- Persistent chat history (Supabase)
- Clerk authentication
- Sidebar with search, delete, new chat
- Settings: model, temperature, theme
- Landing page, admin dashboard, PWA manifest

## Quick Start

### 1. Install dependencies

```bash
npm install
```

### 2. Configure environment

Copy `.env.example` to `.env.local` and fill in your keys:

```bash
cp .env.example .env.local
```

### 3. Set up Supabase

1. Create a project at [supabase.com](https://supabase.com)
2. Run `supabase/schema.sql` in the SQL Editor
3. Add URL and keys to `.env.local`

### 4. Set up Clerk

1. Create an app at [clerk.com](https://clerk.com)
2. Add publishable + secret keys to `.env.local`
3. Set redirect URLs: `http://localhost:3000`

### 5. Add Groq API key

Get your key from [console.groq.com](https://console.groq.com/keys)

### 6. Run

```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000)

## AI Models

- `llama-3.3-70b-versatile` — default, fast general assistant
- `deepseek-r1-distill-llama-70b` — advanced reasoning

## Deploy to Vercel

1. Push to GitHub
2. Import project in Vercel
3. Add all environment variables from `.env.example`
4. Deploy

## Admin Access

Set `ADMIN_USER_IDS` in `.env.local` to your Clerk user ID (comma-separated).

## Project Structure

```
app/           # Pages & API routes
components/    # UI components
hooks/         # React hooks
lib/           # Groq, Supabase, DB helpers
types/         # TypeScript types
supabase/      # SQL schema
public/        # Static assets
```
