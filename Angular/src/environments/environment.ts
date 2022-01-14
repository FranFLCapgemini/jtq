export const environment: {
  production: boolean;
  baseUrlRestServices: string;
  security: 'jwt' | 'csrf';
} = {
  production: false,
  baseUrlRestServices: 'https://localhost:8085/',
  security: 'csrf'
};
