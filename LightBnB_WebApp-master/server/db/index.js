const { Pool } = require('pg');
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'lightbnb'
});

pool.connect(() => {
  console.log("connected");
});

module.exports = {
  query: (queryString, queryParams) => {
    return pool.query(queryString, queryParams);
  }
};