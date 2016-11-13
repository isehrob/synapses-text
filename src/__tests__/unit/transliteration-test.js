import transliteration from '../../transliteration';

describe('transliteration function', () => {

    it("transliterates correctly special characters of uzbek ltn", () => {
        expect(transliteration('ltn', 'O‘zbek')).toEqual('Ўзбек');
    });

    it("transliterates correctly the names of the months", () => {
        expect(transliteration('crl', 'Ноябрь')).toEqual('Noyabr');
    });
});
