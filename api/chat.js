// Backend connection to Xiao Yue's core AI system
import backendConnect from './backend_connect.js';

export default async function handler(req, res) {
  if (req.method === 'POST') {
    try {
      const { message } = req.body;
      
      if (!message) {
        return res.status(400).json({ error: 'Message is required' });
      }
      
      // Connect to Xiao Yue's core AI
      const result = await backendConnect(req, res);
      
      res.status(result.success ? 200 : 500).json(result);
    } catch (error) {
      console.error('Error in chat handler:', error);
      res.status(500).json({ 
        error: 'Internal server error',
        response: '我现在有点忙，稍后再和你聊吧。',
        success: false
      });
    }
  } else {
    res.status(405).json({ error: 'Method not allowed' });
  }
}