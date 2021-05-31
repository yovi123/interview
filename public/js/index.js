var moduleCommon = function () {

    var self = this;
    

    self.init = function () {


    }
    this.makeWebApiCall = function (url, data, callback, dataType = 'json', formType = "default", requestType = "POST") {
        // showLoader();
        console.log(APP_URL + url);
        var configObject = {
            url: APP_URL + url,
            type: requestType,
            data: data,
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            dataType: 'json',
            success: function (response) {

                callback(response);
            },
            error: function (response) {
                response = response.responseJSON;
                callback(response)
            }
        };

        if (formType == 'noProcessData') {
            configObject["async"] = false;
            configObject["cache"] = false;
            configObject["contentType"] = false;
            configObject["processData"] = false;
        }

        $.ajax(configObject);
    }
    self.init();

}

moduleCommon();
