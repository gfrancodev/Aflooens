import { FC, useState } from 'react';
import { Box, Button, Center, Flex, Image, Input, Select } from '@chakra-ui/react';
import TextField from '@mui/material/TextField';
import { AdapterDateFns } from '@mui/x-date-pickers/AdapterDateFns';
import { LocalizationProvider } from '@mui/x-date-pickers/LocalizationProvider';
import { ThemeProvider } from '@emotion/react';
import { createTheme } from '@mui/system';
import { useFormik } from 'formik';
import DatePicker from "react-datepicker";
import "react-datepicker/dist/react-datepicker.css";
import ptbr from 'date-fns/locale/pt-BR';



export const Header: FC<{}> = () => {
    const [startDate, setStartDate] = useState(new Date());

    return (
        <Center width='100%' height={188} bg='#161C3D'>
            <Flex width='100%' justifyContent={'space-between'} alignItems={'center'} maxWidth={1152}>
                <Image src='./logo.png' />
                <Flex borderRadius={'35px 35px 35px 35px'} justifyContent='center' alignItems='center' bg='white' maxWidth={644} width='100%'>
                    <Input borderRadius={'35px 0px 0px 35px'} textColor='#A49595' _placeholder={{
                        borderRadius: '35px 35px 35px 35px',
                        color: '#A49595',
                    }} placeholder='Buscar locadora....' width={'100%'} />
                    <Flex css={{
                        "input": {
                          color: '#A49595',
                          border: 'none',
                          outline: 'none',
                          backgroundColor: 'transparent !important' ,
                        },
                        "&:input":{
                            border: 'none',
                        }
                    }} display={'flex'} justifyContent='center' _placeholder={{
                        color: '#A49595',
                    }} alignItems='center'>
                        <Select color='#A49595' fontSize={'14px'} width='200px' placeholder='Todos os modelos' _placeholder={{
                            textTransform: 'uppercase'
                        }} size='md'>
                            <option value='option1'>Option 1</option>
                            <option value='option2'>Option 2</option>
                            <option value='option3'>Option 3</option>        
                        </Select> 
                        <Box width='100px'>
                            <DatePicker locale={ptbr}  selected={startDate} onChange={(date:Date) => setStartDate(date)} />
                        </Box>
                    </Flex >
                    <Button width={250} fontSize='14px' borderRadius={'0px 32px 32px 0px'} bg={'#6F7794'}>
                     BUSCAR
                    </Button>
                </Flex>
                <div />
            </Flex>
        </Center>
    )
}