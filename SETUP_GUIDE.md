# 🚀 Better Chatbot - Complete Setup Guide

Your Better Chatbot is **90% ready**! The project is installed and configured. You just need to add your API keys to get started.

## ✅ What's Already Done

- ✅ Project dependencies installed
- ✅ Environment file created (`.env`)
- ✅ Authentication secret generated
- ✅ All configurations set up

## 🎯 What You Need To Do (Choose Your Path)

### Path 1: Quick Start (Recommended)
**Time: 5 minutes | Cost: Free**

1. **Get Google Gemini API Key** (FREE)
   - Go to: https://aistudio.google.com/app/apikey
   - Click "Create API Key"
   - Copy the key and add it to your `.env` file:
   ```
   GOOGLE_GENERATIVE_AI_API_KEY=your_key_here
   ```

2. **Get Free Database** (FREE)
   - Go to: https://neon.tech/
   - Sign up with GitHub/Google
   - Create a new project
   - Copy the connection string and add to `.env`:
   ```
   POSTGRES_URL=your_connection_string_here
   ```

3. **Start the app**:
   ```bash
   pnpm build:local && pnpm start
   ```

### Path 2: Premium Setup
**Time: 10 minutes | Cost: ~$5-20/month**

1. **OpenAI API Key** (Best quality)
   - Go to: https://platform.openai.com/api-keys
   - Create account and add billing info
   - Create API key and add to `.env`:
   ```
   OPENAI_API_KEY=your_key_here
   ```

2. **Add Web Search** (1000 free searches/month)
   - Go to: https://dashboard.exa.ai/
   - Sign up and get API key
   - Add to `.env`:
   ```
   EXA_API_KEY=your_key_here
   ```

3. **Database** (same as Path 1)

### Path 3: Completely Free (When You Get a PC)
**Time: 15 minutes | Cost: $0**

1. **Install Ollama** locally
   - Download: https://ollama.ai/
   - Run: `ollama serve`
   - No API key needed!

2. **Local PostgreSQL**
   - Install PostgreSQL
   - Create database
   - Update `.env` with local connection

### Path 4: Deploy to Vercel (Cloud Hosting)
**Time: 3 minutes | Cost: Free**

1. **Fork this repository** on GitHub

2. **Deploy to Vercel**:
   - Go to: https://vercel.com/
   - Click "New Project"
   - Import your forked repository
   - Add environment variables:
     ```
     BETTER_AUTH_SECRET=your_generated_secret
     GOOGLE_GENERATIVE_AI_API_KEY=your_gemini_key
     POSTGRES_URL=your_neon_database_url
     ```

3. **Deploy**:
   - Vercel will automatically build and deploy
   - Your app will be available at `https://your-app.vercel.app`

## 🔑 API Key Options Explained

### LLM Providers (Pick One or More)

| Provider | Best For | Cost | Free Tier |
|----------|----------|------|-----------|
| **Google Gemini** | Beginners | Free → $0.001/1K tokens | ✅ Generous |
| **OpenAI** | Reliability | $0.002/1K tokens | ❌ No free tier |
| **Anthropic Claude** | Quality | $0.003/1K tokens | ❌ No free tier |
| **xAI Grok** | Latest models | $0.002/1K tokens | ❌ No free tier |
| **OpenRouter** | Variety | Varies | ✅ Some models |
| **Ollama** | Privacy | Free | ✅ Completely free |

### Database Options

| Service | Free Tier | Setup Time |
|---------|-----------|------------|
| **Neon** | 512MB | 2 minutes |
| **Supabase** | 500MB | 3 minutes |
| **ElephantSQL** | 20MB | 2 minutes |
| **Railway** | Usage limits | 5 minutes |

### Optional Services

| Service | Purpose | Free Tier | Monthly Cost |
|---------|---------|-----------|--------------|
| **Exa AI** | Web search | 1,000 searches | $10 |
| **OAuth** | Social login | Free | Free |

## 🚀 Launch Commands

After adding your API keys:

```bash
# Development mode (with hot reload)
pnpm dev

# Production mode (recommended)
pnpm build:local && pnpm start

# With Docker (if available)
pnpm docker-compose:up
```

## 🎮 Features You'll Get

- **Multi-Model Chat**: Switch between AI providers
- **Web Search**: Research with `@web` command
- **MCP Integration**: Connect external tools
- **Visual Workflows**: Create custom automation
- **Voice Chat**: Real-time voice assistant (with OpenAI)
- **Tool Mentions**: Use `@tool` commands
- **Data Visualization**: Charts and tables

## 🛠️ Troubleshooting

### Common Issues

1. **"No models available"**
   - Add at least one LLM API key to `.env`

2. **Database connection error**
   - Check your `POSTGRES_URL` in `.env`
   - Ensure database is accessible

3. **Port already in use**
   - Change port: `PORT=3001 pnpm start`

4. **Build errors**
   - Run: `pnpm clean && pnpm install`

5. **Vercel deployment fails**
   - Ensure all required environment variables are set
   - Check Vercel function logs for specific errors

### Need Help?

- 📖 [Full Documentation](./README.md)
- 💬 [Discord Community](https://discord.gg/gCRu69Upnp)
- 🐛 [Report Issues](https://github.com/cgoinglove/better-chatbot/issues)

## 🎯 Recommended First Setup

For the best experience with minimal cost:

1. **Google Gemini API** (free tier)
2. **Neon Database** (free tier)
3. **Exa Search** (free tier)

Total cost: **$0/month** for moderate usage!

---

## 🔧 Your Environment File

Your `.env` file is ready at `/workspace/.env`. Just fill in the values you want:

```bash
# View your environment file
cat .env

# Edit your environment file
nano .env
```

**Happy chatting! 🎉**