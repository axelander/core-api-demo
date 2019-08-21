import { electrodeBridge } from 'react-native-electrode-bridge';
import DefaultRequests from './DefaultRequests';

const REQUESTS = new DefaultRequests(electrodeBridge);

export function requests() {
    return REQUESTS;
}


export default ({requests});


