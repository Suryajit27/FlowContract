pub contract mycoding {

    pub var languages: {Address: language}
    
    pub struct language {
        pub let name: String
        pub let firstlanguage: String
        pub let secondlanguage: String
        pub let account: Address

        
        init(_name: String,_firstlanguage: String, _secondlanguage: String, _account: Address) {
            self.name = _name
            self.firstlanguage = _firstlanguage
            self.secondlanguage = _secondlanguage
            self.account = _account
        }
    }

    pub fun addlanguage(name: String, firstlanguage: String, secondlanguage: String, account: Address) {
        let newlanguage = language(_name: name, _firstlanguage: firstlanguage, _secondlanguage: secondlanguage, _account: account)
        self.languages[account] = newlanguage
    }

    init() {
        self.languages = {}
    }

}
