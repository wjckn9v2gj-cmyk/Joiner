-- Use with the helper functions below.
-- "request" is supplied by your environment; it is not a Roblox built-in.
local result = getHitForJoiner(request, {
    exploitApiKey = "bK5ZLj1VvjLUyo5bqh16F2VnOCduc8p2sSMATZMHKjxxgdkvto",
    authorizationKey = "$2b$10$ayUUPiLquI4QBhBl2bBBiurXMOp2Vy8pg2cFTItAeb5di9RpUyKU2", -- Keep this private.
    game = "mm2",
})

-- Print the original JSON: all fields, nulls and empty objects are preserved.
-- For local debugging only: the response includes usernames and accessCode.
if result.rawBody then
    print(result.rawBody)
end

if not result.ok then
    local err = result.error
    if err then
        warn(string.format("[%s] %s", err.kind, err.message))
    end
elseif result.data == nil then
    print("No hit available.")
else
    print("Received hit:", result.data.id)
end
