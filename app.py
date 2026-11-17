from flask import Flask, jsonify, request, render_template, redirect, url_for, flash

app = Flask(__name__)
app.secret_key = "classroom-demo-key"
donations = []
requests_list = []

@app.get("/")
def home():
    return render_template("index.html", donations=donations)

@app.get("/health")
def health():
    return jsonify({"status": "ok", "message": "API is running"}), 200

@app.route("/login", methods=["GET", "POST"])
def login():
    if request.method == "POST":
        flash("Demo login submitted")
        return redirect(url_for("home"))
    return render_template("login.html")

@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "POST":
        flash("Registration form submitted")
        return redirect(url_for("login"))
    return render_template("register.html")

@app.route("/donate", methods=["GET", "POST"])
def donate():
    if request.method == "POST":
        name = request.form.get("food_name", "").strip()
        location = request.form.get("location", "").strip()
        try:
            quantity = int(request.form.get("quantity", "0"))
        except ValueError:
            quantity = 0
        if not name or not location or quantity < 1:
            flash("Please enter valid donation details")
        else:
            donations.append({"id": len(donations)+1, "food_name": name, "quantity": quantity, "location": location})
            flash("Donation submitted successfully")
            return redirect(url_for("home"))
    return render_template("donate.html")

@app.get("/api/donations")
def get_donations():
    return jsonify(donations), 200

@app.post("/api/donations")
def create_donation():
    data = request.get_json(silent=True) or {}
    name = str(data.get("food_name", "")).strip()
    location = str(data.get("location", "")).strip()
    try:
        quantity = int(data.get("quantity", 0))
    except (ValueError, TypeError):
        quantity = 0
    if not name or not location or quantity < 1:
        return jsonify({"error": "food_name, location and positive quantity are required"}), 400
    item = {"id": len(donations)+1, "food_name": name, "quantity": quantity, "location": location}
    donations.append(item)
    return jsonify({"message": "Donation created", "donation": item}), 201

@app.get("/api/requests")
def get_requests():
    return jsonify(requests_list), 200

@app.post("/api/requests")
def create_request():
    data = request.get_json(silent=True) or {}
    name = str(data.get("food_name", "")).strip()
    try:
        quantity = int(data.get("quantity", 0))
    except (ValueError, TypeError):
        quantity = 0
    if not name or quantity < 1:
        return jsonify({"error": "food_name and positive quantity are required"}), 400
    item = {"id": len(requests_list)+1, "food_name": name, "quantity": quantity}
    requests_list.append(item)
    return jsonify({"message": "Food request created", "request": item}), 201

if __name__ == "__main__":
    app.run(host="127.0.0.1", port=5000, debug=True)
