import express from 'express';
import mysql from 'mysql2/promise';

const app = express();
const port = 3000;

// MySQL Connection Setup
const pool = mysql.createPool({
    host: 'localhost',
    user: '<user-username>',
    password: '<user-password>',
    port: 3306,
    database: 'icecream_parlor'
});

app.use(express.json());

// Get all flavors
app.get('/api/flavors', async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM flavors');
        res.json(rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// Get all sizes
app.get('/api/sizes', async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM sizes');
        res.json(rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

// Get all orders
app.get('/api/orders', async (req, res) => {
    try {
        const [rows] = await pool.query('SELECT * FROM orders');
        res.json(rows);
    } catch (err) {
        res.status(500).json({ error: err.message });
    }
});

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});