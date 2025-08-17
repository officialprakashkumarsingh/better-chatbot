#!/bin/bash

# 🚀 Better Chatbot Quick Start Script
echo "🚀 Better Chatbot Quick Start"
echo "=============================="

# Check if .env file exists
if [ ! -f ".env" ]; then
    echo "❌ .env file not found!"
    exit 1
fi

echo "✅ Environment file found"

# Check for required variables
check_env_var() {
    local var_name=$1
    local var_value=$(grep "^$var_name=" .env | cut -d'=' -f2)
    
    if [ -z "$var_value" ] || [ "$var_value" = "" ]; then
        echo "⚠️  $var_name is not set"
        return 1
    else
        echo "✅ $var_name is configured"
        return 0
    fi
}

echo ""
echo "🔍 Checking configuration..."

# Check auth secret
check_env_var "BETTER_AUTH_SECRET"

# Check database
if ! check_env_var "POSTGRES_URL"; then
    echo "   💡 Get free database at: https://neon.tech/"
fi

# Check for at least one LLM provider
llm_found=false
if check_env_var "OPENAI_API_KEY"; then llm_found=true; fi
if check_env_var "GOOGLE_GENERATIVE_AI_API_KEY"; then llm_found=true; fi
if check_env_var "ANTHROPIC_API_KEY"; then llm_found=true; fi
if check_env_var "XAI_API_KEY"; then llm_found=true; fi
if check_env_var "OPENROUTER_API_KEY"; then llm_found=true; fi

if [ "$llm_found" = false ]; then
    echo "⚠️  No LLM provider configured"
    echo "   💡 Add at least one API key:"
    echo "   • Google Gemini (FREE): https://aistudio.google.com/app/apikey"
    echo "   • OpenAI: https://platform.openai.com/api-keys"
fi

# Optional services
echo ""
echo "🔧 Optional services:"
if ! check_env_var "EXA_API_KEY"; then
    echo "   💡 Web search: https://dashboard.exa.ai/ (1000 free searches)"
fi

echo ""
echo "📋 Setup Summary:"
echo "=================="

if [ "$llm_found" = true ] && check_env_var "POSTGRES_URL" > /dev/null 2>&1; then
    echo "🎉 Ready to launch!"
    echo ""
    echo "🚀 Start commands:"
    echo "   pnpm dev          # Development mode"
    echo "   pnpm build:local && pnpm start  # Production mode"
    echo ""
    echo "🌐 App will be available at: http://localhost:3000"
else
    echo "⚠️  Setup incomplete. Please add missing API keys to .env file"
    echo ""
    echo "📖 See SETUP_GUIDE.md for detailed instructions"
fi

echo ""
echo "🔧 Useful commands:"
echo "   cat .env              # View current config"
echo "   nano .env             # Edit config"
echo "   ./quick-start.sh      # Run this check again"