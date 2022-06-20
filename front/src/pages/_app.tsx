import { ChakraProvider } from '@chakra-ui/react'
import { AppProps } from 'next/app'
import { useEffect, useState } from 'react';
import { ThemeProvider } from "@material-ui/core/styles";
import { createTheme } from '@mui/system';

function MyApp({ Component, pageProps }: AppProps | any) {
  const [hydrate, setHydrate] = useState(false);

  useEffect(() => {
    if (!hydrate)
        setHydrate(true);
  }, [hydrate])
  

  if (!hydrate) return null

  return (
    <ChakraProvider>
        <ThemeProvider theme={createTheme(
            
        )}>
            <Component {...pageProps} />
      </ThemeProvider>
    </ChakraProvider>
  )
}

export default MyApp