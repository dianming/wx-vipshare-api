package soul

class SuggestService {

    def serviceMethod() {

    }

    def save(SoSuggest suggest) {
        suggest.save(flush: true, failOnError: true);
    }
}
