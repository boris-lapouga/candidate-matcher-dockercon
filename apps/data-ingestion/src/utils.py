import PyPDF2

def read_pdf(file_path):
    with open(file_path, 'rb') as f:
        reader = PyPDF2.PdfFileReader(f)
        text = ''
        for i in range(reader.numPages):
            page = reader.getPage(i)
            text += page.extractText()
    return text

# Similar function for read_docx using python-docx
