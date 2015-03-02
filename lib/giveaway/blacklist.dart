part of sg2o;

/// This class is used for the old blacklist entries from SG+.
class BlackList {

    Map blackList;

    /// Constructor that reads the list from local storage and parses the json element to a map.
    BlackList() {
        String jsonString = storage.getForeign(oldFilterKey);
        if (jsonString == '') {
            jsonString = '{}';
        }
        blackList = JSON.decode(jsonString);
    }

    /// Returns [true] if [game] is on the blacklist.
    bool isOnBlackList(String game) {
        return blackList.containsKey(game);
    }
}