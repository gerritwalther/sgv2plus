part of sg2o;

class SGButton extends DivElement {

    factory SGButton(String faClass, String text, fnButtonListener) {
        DivElement element = new DivElement();
        Element icon = new Element.tag('i');

        icon
            ..classes.add('fa')
            ..classes.add(faClass)
        ;

        element
            ..classes.add('form__submit-button')
            ..style.setProperty('margin-top', '10px')
            ..append(icon)
            ..appendText(' $text')
            ..onClick.listen(fnButtonListener)
        ;
        return element;
    }
}

