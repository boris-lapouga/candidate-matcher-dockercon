from utils import read_pdf, read_docx

def main():
    # Your logic for fetching CVs and job descriptions
    # For example, from an S3 bucket or a database
    file_path = "path/to/file"

    if file_path.endswith('.pdf'):
        text = read_pdf(file_path)
    elif file_path.endswith('.docx'):
        text = read_docx(file_path)
    else:
        print("Unsupported file format")

    # Further processing or saving to a database

if __name__ == "__main__":
    main()
