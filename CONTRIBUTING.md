# Contributing to Foodbanks Web

We welcome contributions! Please follow these guidelines:

## How to Contribute

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Development

### Local Testing

To test the page locally:
```bash
# Using Python
python3 -m http.server 8000

# Using Node.js
npx serve .

# Using Docker
docker run -p 8080:80 -v $(pwd):/usr/share/nginx/html nginx:alpine
```

Then visit `http://localhost:8000` or `http://localhost:8080` to see the page.

### Making Changes

- Keep the design clean and professional
- Ensure mobile responsiveness
- Test on multiple browsers
- Update documentation if needed

## Code Style

- Use semantic HTML5
- Follow responsive design principles
- Keep CSS organized and commented
- Maintain accessibility standards
