import { FC } from 'react';
import { Box, Container, Flex, Text } from '@chakra-ui/react'
import { MdDirectionsCarFilled } from 'react-icons/md'

export const Item: FC<{}> = () => {
    return (
        <Container  width="100%" maxWidth={1152} borderRadius={6} bg="white" height='180px' paddingX={35}>
            <Box>
                <Box display='flex' justifyContent='flex-start' alignItems='center' gap='10px' width='100%' borderBottom={1} borderBottomColor={'#D9D9D9'}>
                    <MdDirectionsCarFilled color='#161C3D' size={56} />
                    <Text textColor='#161C3D' fontSize='32px' fontWeight='bold'>TOYOTA</Text>
                    <Text textColor='#0B1B77' fontSize='32px' fontWeight='bold'>COROLLA</Text>
                    <Text textColor='#484848' fontSize='32px' fontWeight='bold'>2020</Text>
                    <Text textColor='#000' fontSize='32px' fontWeight='bold'>PRETO</Text>
                </Box>
                <Box>
                    <Flex justifyContent='space-between' width='90%'>
                        <Flex  gap='10px'>
                            <Text textColor='#000' fontWeight='bold'>Nº CHASSI</Text>
                            <Text textColor='#000'>1239871213</Text>
                        </Flex>
                        <Flex gap='10px'>
                            <Text textColor='#000' fontWeight='bold'>PLACA</Text>
                            <Text textColor='#000'>1239871213</Text>
                        </Flex>
                        <Flex  gap='10px'>
                            <Text textColor='#000' fontWeight='bold'>DATA DE CRIAÇÃO</Text>
                            <Text textColor='#000'>02/20/2019</Text>                           
                        </Flex>  
                        
                    </Flex>
                    <Flex width='100%' justifyContent='space-between' paddingY={4} paddingX={2} borderRadius={10} borderColor='#D9D9D9' border='1px solid #D9D9D9'>
                        <Box>
                            <Text textColor='#000' fontWeight='bold'>LOCADORA</Text>
                            <Text textColor='#000'>ALOCADO</Text>
                        </Box>

                        <Flex justifyContent='center' alignItems='center' gap={1}>
                            <Box bg="#03BC16" borderRadius={35} width="10px" height="10px"></Box>
                            <Text fontWeight='500' fontSize={'14px'} ml={'1px'} color="#03BC16">ESTE MOMENTO</Text>
                        </Flex>

                        <Flex flexDirection='column'>
                            <Flex justifyContent={'flex-end'} gap='20px'>
                                <Text color="#979090">DATA INICIO</Text>
                                <Text color="#979090">25/11/2000</Text>
                            </Flex>
                            <Flex justifyContent={'flex-end'} gap='20px'>
                                <Text color="#979090">DATA FIM</Text>
                                <Text color="#979090">25/11/2000</Text>
                            </Flex>
                        </Flex>
                    </Flex>
                </Box>
            </Box>
        </Container>
    )
}