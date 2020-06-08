1. resp.write is just like puts in ruby but when for working with rack
2. need resp.finish for anything to happen

3. use rackup config.ru to run application in browser

4. INFO  WEBrick::HTTPServer#start: pid=1751 port=9292 =http://localhost:9292/

5. Ctrl - C to get out of current running server and to make any changes to files, you need to stop the current server, make changes and the run it again with rackup config.ru


