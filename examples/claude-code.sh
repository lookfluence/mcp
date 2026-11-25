#!/bin/sh
# Replace <token> with a personal token from https://lookfluence.com/mcp
claude mcp add --transport http lookfluence https://mcp.lookfluence.com/mcp --header "Authorization: Bearer <token>"
