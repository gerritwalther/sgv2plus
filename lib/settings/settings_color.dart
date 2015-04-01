part of sg2o;

class SettingsColor implements SettingsTab {

    ParagraphElement pageContainer;

    ColorSetting wishlistColorSetting = new ColorSetting('Wishlist border color: ', wishListColorKey);
    ColorSetting groupColorSetting = new ColorSetting('Group border color: ', groupColorKey);
    ColorSetting whitelistColorSetting = new ColorSetting('Whitelist border color: ', whiteListColorKey);
    ColorSetting contributorAboveLevelColorSetting = new ColorSetting('Contributor (above own level) border color: ', contributorAboveLevelColorKey);
    ColorSetting contributorBelowLevelColorSetting = new ColorSetting('Contributor (below own level) border color: ', contributorBelowLevelColorKey);

    Element createPage() {
        SGButton saveButton = new SGButton('fa-arrow-circle-right', 'Save colors!', this.storeColors);

        saveButton
            ..style.setProperty('margin-right', '5px')
        ;

        SGButton restoreDefaultsButton = new SGButton('fa-trash', 'Restore defaults', this.restoreDefaultColors);

        pageContainer = new ParagraphElement();

        pageContainer
            ..append(wishlistColorSetting.getContainer())
            ..append(groupColorSetting.getContainer())
            ..append(whitelistColorSetting.getContainer())
            ..append(contributorAboveLevelColorSetting.getContainer())
            ..append(contributorBelowLevelColorSetting.getContainer())
            ..append(saveButton)
            ..append(restoreDefaultsButton)
        ;

        return pageContainer;
    }

    void storeColors(MouseEvent e) {
        wishlistColorSetting.store();
        groupColorSetting.store();
        whitelistColorSetting.store();
        contributorAboveLevelColorSetting.store();
        contributorBelowLevelColorSetting.store();

        pageContainer.append(new InfoElement('Colors stored!'));
    }

    void restoreDefaultColors(MouseEvent e) {
        wishlistColorSetting.restoreDefault();
        groupColorSetting.restoreDefault();
        whitelistColorSetting.restoreDefault();
        contributorAboveLevelColorSetting.restoreDefault();
        contributorBelowLevelColorSetting.restoreDefault();

        pageContainer.append(new InfoElement('Default values restored!'));
    }

    /// Called when the tab for this settings page is clicked.
    void select() {
        pageContainer.parent.classes.add(classSettingsTabSelected);
    }

}