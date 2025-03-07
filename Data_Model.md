Used to have a data model of just nodes and edges that were completley free. Now I need to impose a semi flexible schema. 

Main idea is to have tables with core fields and then jsonB fields as extensions.

These are the current things that I am trying to store:

- Reddit Posts with images, videos and pictures
- Reddit post images, videos and pictures associated with areas/locations in the world.
- Reddit comments and users
- Trinidad and Tobago news articles and their associations with areas/roads in Trinindad.
- Satellite images and area of interests that store each of the images and the footprints (can serve as the terracotta metadata engine)
- Telegram videos, images, pictures with geo metadata.
- Instagram posts, comments and pictures with geographic information
- Facebook posts, comments and pictures with geographic information
- News posts with geographic information
- Notes that can be connected to everything (posts, images, videos, pictures, satellite images, etc)

## Table for Content Files:
| Static File Id | Spatial Extent? | Static FiletType | Timestamp (Created vs Ingested?) | S3 Location | Source Post Id | Rest of JSONB |

## Source Table:
| Source Post Id | Type | Timestamp | Rest of JSONB |

(Source)        (Content Files)
Reddit Post -> Video, Image, raw text, url.
New article online -> HTML Context, text, pictures, url, images
Instagram Posts -> Pictures, Video, Images

What about comments and other child entities from data sources?
Could just reference values in the same content table - 

Reddit Post Source file -> Video file or audio images (Source table), comment (source table).

Bad idea, comments can be recursive. 