WITH BASE AS (
    SELECT
        FROM_HOME, 
        CAPTION, 
        SHARES, 
        FROM_EXPLORE, 
        FROM_OTHER, 
        IMPRESSIONS, 
        LIKES, 
        FOLLOWS, 
        HASHTAGS, 
        FROM_HASHTAGS, 
        COMMENTS, 
        PROFILE_VISITS, 
        SAVES, 
        _FIVETRAN_DELETED AS IS_DELETED,
        _FIVETRAN_SYNCED AS SNF_UPDATE_DATE
    FROM {{ source('insta','insta_data') }}
)
SELECT * FROM BASE 