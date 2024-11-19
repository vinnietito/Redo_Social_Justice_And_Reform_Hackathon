import MySQLdb
from flask import Flask, request, jsonify

app = Flask(__name__)

# Connect to MySQL
def get_db_connection():
    try:
        # Connect to MySQL Database
        connection = MySQLdb.connect(
            host="localhost",      
            user="root",            
            passwd="V@38080135k", 
            db="reports"            
        )
        return connection
    except MySQLdb.Error as err:
        # Print MySQL connection error to the console for debugging
        print(f"Error: {err}")
        return None

# Route to handle report submission
@app.route('/submit-report', methods=['POST'])
def submit_report():
    data = request.json  # Get JSON data from the request

    # Extract data from JSON payload
    title = data.get('title')
    description = data.get('description')
    location = data.get('location')
    media = data.get('media')
    verified = data.get('verified')
    user_id = data.get('user_id')
    date_submitted = data.get('date_submitted')
    status = data.get('status')
    email = data.get('email')

    # Check if data is missing or invalid
    if not title or not description or not location or not email:
        return jsonify({'message': 'Missing required fields'}), 400

    # Connect to the database
    connection = get_db_connection()
    if connection is None:
        return jsonify({'message': 'Database connection error'}), 500

    try:
        # Prepare and execute the insert query to add the report
        cursor = connection.cursor()
        cursor.execute(
            'INSERT INTO reports (title, description, location, media, verified, user_id, date_submitted, status, email) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)',
            (title, description, location, media, verified, user_id, date_submitted, status, email)
        )

        # Commit the transaction
        connection.commit()
        cursor.close()
        connection.close()

        # Return success message
        return jsonify({'message': 'Report submitted successfully'}), 201

    except MySQLdb.Error as err:
        # Catch MySQL error, log it, and return an error message
        print(f"Database Error: {err}")
        return jsonify({'message': 'Failed to submit report, database error'}), 500

    except Exception as e:
        # Catch any other unexpected errors
        print(f"Unexpected Error: {e}")
        return jsonify({'message': 'Unexpected error occurred while submitting the report'}), 500

if __name__ == '__main__':
    # Run the Flask application in debug mode
    app.run(debug=True)
