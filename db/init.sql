CREATE DATABASE candidate_match;

\c candidate_match;

CREATE TABLE candidates (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE resumes (
  id SERIAL PRIMARY KEY,
  candidate_id INTEGER REFERENCES candidates(id),
  file_path TEXT,
  parsed_text TEXT
);

CREATE TABLE skills (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255),
  popularity INTEGER
);

CREATE TABLE positions (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  discipline VARCHAR(255),
  weight INTEGER
);

CREATE TABLE companies (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  industry VARCHAR(255)
);

CREATE TABLE schools (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  ranking INTEGER
);

CREATE TABLE job_descriptions (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  company_id INTEGER REFERENCES companies(id),
  requirements TEXT
);

CREATE TABLE matches (
  id SERIAL PRIMARY KEY,
  candidate_id INTEGER REFERENCES candidates(id),
  job_description_id INTEGER REFERENCES job_descriptions(id),
  match_percentage DECIMAL
);