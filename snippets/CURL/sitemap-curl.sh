
# URL of main Sitemap
sitemap_url="https://deb.ovh/remote/test/1/1.xml"

# Extract all Sitemap URLs
#sitemap_urls=$(curl -s "$sitemap_url" | grep -oP '(?<=<loc>)[^<]+')

# Loop over and retrieve the individual URLs
#for sitemap in $sitemap_urls; do
    urls=$(curl -s "$sitemap_url" | grep -oP '(?<=<loc>)[^<]+')
    for url in $urls; do

        curl  -O -J $url
    done
#done
