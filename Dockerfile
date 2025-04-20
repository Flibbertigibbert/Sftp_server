# Use the official atmoz/sftp image
FROM atmoz/sftp

# Add your SFTP user in this format:
# user:password:UID:GID:directory
# Leave UID and GID blank to use defaults
CMD ["newage:89372937:::upload"]
