/** @type {import('next').NextConfig} */
const nextConfig = {
	images: {
		remotePatterns: [
			{
				hostname: "localhost",
			},
			{
				hostname: "digitalhippo-production.up.railway.app",
			},
			{
				hostname: "digitalhippo.azurewebsites.net",
			},
		],
	},
};

module.exports = nextConfig;
