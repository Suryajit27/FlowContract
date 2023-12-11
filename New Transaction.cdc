import mycoding from 0x05

transaction(name: String, firstlanguage: String, secondlanguage: String, account: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        mycoding.addlanguage(name: name, firstlanguage: firstlanguage, secondlanguage: secondlanguage, account: account)
        log("We're done.")
    }
}
