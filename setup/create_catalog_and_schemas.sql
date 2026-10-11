-- One-time setup for the NYC Taxi pipeline.
-- Prerequisite: Unity Catalog external locations already exist for the
-- landing, raw, stage, and published S3 buckets (see README, "Setup").

CREATE CATALOG IF NOT EXISTS nytaxi;

CREATE SCHEMA IF NOT EXISTS nytaxi.raw;        -- bronze: parquet copies of the source files
CREATE SCHEMA IF NOT EXISTS nytaxi.staging;    -- silver: typed, cleaned, de-duplicated
CREATE SCHEMA IF NOT EXISTS nytaxi.published;  -- gold: combined, analytics-ready tables
