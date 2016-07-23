fbprofile = {
  "about" => { contact: { 
                  :name => "Grandmaster Flash",
                  :phone_number => "(324)121-6565",
                  :current_city => "Brooklyn, NY", 
                  :birthdate => "January 1, 1980" 
              },
              work_and_education: [ 
                  { employer: "Virgin Records", start: 1990, end: 1992 }, 
                  { employer: "Jefferson Industries", start: 1989, end: 1990 },
                  { college:  "Harvard University", start: 1981, end: 1985 }
              ], 
              places_youve_lived: [
                "Dusseldorf, Germany", 
                "Auckland, New Zealand",
                "Montevideo, Uruguay", 
                "Phuket, Thailand"
              ], 
              family_and_relationships: {
                :sister => " Jolene Flash",
                :brother => "Jerome Flash"
              },
  },
  :friends => [ 
    { name: "Fred Durst",
      shared_friends: [
        "May LuE Retton",
        "George Walker",
        "Mister T",
        "Gordon Gecko"
      ]
    },
    {
      name: "Mary Ellen",
      shared_friends: [
        "Fat Joe",
        "Booker T. Washington",
        "Papa Smurf",
        "George Weegee"
      ]
    },
    {
      name: "",
      shared_friends: [
        "",
        "",
        ""
      ]
    }


  ],
  "timeline" => [
    { 
      title: "Moved to California",
      date:   20160705,
    }, 
    {
      title: "Moved to Miami, FL",
      date: 20051231
    },
    {
      title: "Graduated college",
      date: 20010530,
      location: "Boston, MA"
    }

  ]

}

puts fbprofile['about'][:contact][:name]
puts fbprofile[:friends][1][:shared_friends][2]
puts fbprofile['timeline'][2][:location]
puts fbprofile["about"][:work_and_education][0][:start]