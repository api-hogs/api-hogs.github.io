module.exports = (server) ->

  # Create an API namespace, so that the root does not
  # have to be repeated for each end point.
  server.namespace "/api", ->

    server.get '/projects', (req, res) ->
      projects = [{id: 1, title: 'one'},
        {id: 2, title: 'two'},
        {id: 3, title: '3'}
      ]
      res.send projects: projects

    server.get '/commits', (req, res) ->
      commits = [
          {
            "id": 1,
            "name": "Test",
            "title": "for now, emit a keyframe-event on the skrollr instance",
            "date": "24.03.2014",
            "author_avatar": "http://c.tadst.com/gfx/600x400/international-programmer-day.jpg?1"
          },
          {
            "id": 2,
            "name": "O.W. Grant",
            "title": "for now, emit a keyframe-event on the skrollr instance",
            "date": "24.03.2014",
            "author_avatar": "http://www.huongnghiep-sinhvien.com/static/upload/articles/_1394622096.jpg"
          },
          {
            "id": 3,
            "name": "O.W. Grant",
            "title": "for now, emit a keyframe-event on the skrollr instance",
            "date": "29.03.2014",
            "author_avatar": "http://www.lawyersandsettlements.com/images/it_sleeping.jpg"
          },
          {
            "id": 4,
            "name": "O.W. Grant",
            "title": "for now, emit a keyframe-event",
            "date": "17.03.2014",
            "author_avatar": "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQTFxHKBte66lrisdwmwpa4oqSDNLKYpTmlWA4OWkrGvKXtq8CSaQ"
          },
          {
            "id": 5,
            "name": "Noodles",
            "title": "skrollr instance",
            "date": "14.03.2014",
            "author_avatar": "http://blog.codinghorror.com/content/images/uploads/2006/03/6a0120a85dcdae970b0128776fd6eb970c-pi.jpg"
          },
          {
            "id": 6,
            "name": "Patsy Goldberg",
            "title": "for now, emit a keyframe-event on the skrollr instance",
            "date": "4.03.2014",
            "author_avatar": "http://abdtechnology.com/wp-content/uploads/2013/01/Programmers-Day.jpg"
          },
          {
            "id": 7,
            "name": "O.W. Grant",
            "title": "for now, emit a keyframe-event on the skrollr instance",
            "date": "29.03.2014",
            "author_avatar": "http://russianwomenblog.hotrussianbrides.com/image.axd?picture=2012%2F9%2Fnattalochka092412.jpg"
          }
      ]
      res.send commits: commits