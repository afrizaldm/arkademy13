function biodata(name, age) {
    return {
        name: name,
        age: age,
        address: "ds. Mlorah Rejoso kab. Nganjuk",
        hobbies: [
            "belajar hal-hal baru",
            "musik",
            "kuliner"
        ],
        is_married: false,
        list_school: [
            { name: "SDN MLORAH 2", year_in: 2002, year_out: 2008, major: null },
            { name: "SMP NEGERI 4 NGANJUK", year_in: 2008, year_out: 2011, major: null },
            { name: "SMK NEGERI 1 NGANJUK", year_in: 2011, year_out: 2014, major: "Teknik Audio Video" },
            { name: "WEARNES EDUCATION CENTER", year_in: 2015, year_out: 2016, major: "Teknik Informatika, Android & Game Developer" },
        ],
        skills: [
            { skill_name: "C# Console", level: "expert" },
            { skill_name: "C# windows form aplication", level: "expert" },
            { skill_name: "mysql", level: "expert" },
            { skill_name: "speed typing ( using 10 fingers )", level: "expert" },
            { skill_name: "ms excel", level: "expert" },
            { skill_name: "ms access", level: "expert" },
            { skill_name: "ms word", level: "expert" },
            { skill_name: "html", level: "advanced" },
            { skill_name: "css/css3", level: "advanced" },
            { skill_name: "javascript", level: "advanced" },
            { skill_name: "typescript", level: "advanced" },
            { skill_name: "firebase", level: "advanced" },
            { skill_name: "git", level: "advanced" },
            { skill_name: "php", level: "advanced" },
            { skill_name: "laravel", level: "advanced" },
            { skill_name: "ionic", level: "advanced" },
            { skill_name: "vue", level: "advanced" },
            { skill_name: "angular", level: "advanced" },
            { skill_name: "laravel", level: "advanced" },
            { skill_name: "react", level: "beginner" },
            { skill_name: "react-native", level: "beginner" },
            { skill_name: "flutter", level: "beginner" },
            { skill_name: "appgamekit", level: "beginner" },
            { skill_name: "python", level: "beginner" },
            { skill_name: "python for arduino ( pyfirmata )", level: "beginner" },
            { skill_name: "c/c++", level: "beginner" },
            { skill_name: "c/c++ for arduino", level: "beginner" },
            { skill_name: "myob", level: "beginner" },
        ],
        interest_in_coding: true
    }
}

let data = biodata("Afrizal Dian Mahendra", 23)
data