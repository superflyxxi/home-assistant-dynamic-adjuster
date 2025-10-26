import axios from 'axios';
import config from 'config';

const ha = config.get('homeAssistant');
const res = await axios.get(`${ha.baseUrl}/api/`, {
	headers: {
		authorization: `Bearer ${ha.token}`,
	},
});
console.log('Response', res.data);
