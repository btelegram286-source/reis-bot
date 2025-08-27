#!/bin/bash

# Render build script for yt-dlp dependencies
echo "Installing system dependencies for yt-dlp..."

# Update package list and install required packages
apt-get update
apt-get install -y \
    ffmpeg \
    python3-pip \
    python3-dev \
    build-essential \
    libssl-dev \
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    curl \
    wget \
    git

# Install Python dependencies from requirements.txt
pip3 install --upgrade pip
pip3 install --no-cache-dir -r requirements.txt

# Install yt-dlp with all extractors
pip3 install --no-cache-dir "yt-dlp[default]"

# Check if ffmpeg is available
echo "Checking for ffmpeg..."
ffmpeg -version

echo "Build completed successfully!"
