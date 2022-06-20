import { Center, Flex, Text } from '@chakra-ui/react'
import type { NextPage } from 'next'
import { Header } from '../components/Header'
import { Item } from '../components/Item'

const Home: NextPage = () => {
  return (
    <>
    <Header />
    <Center width="100%" height={100} bg='#D9D9D9'>
      <Text textTransform={'uppercase'}  color='#161C3D'>Estes são os resultados disponíveis para sua pesquisa</Text>
    </Center>
    <Flex  width='100%' height='74vh' bg='#D9D9D9'>
      <Item />
    </Flex>
    </>
  )
}

export default Home
