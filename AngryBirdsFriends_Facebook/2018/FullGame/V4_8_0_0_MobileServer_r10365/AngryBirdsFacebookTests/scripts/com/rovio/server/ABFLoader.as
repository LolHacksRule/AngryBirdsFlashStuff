package com.rovio.server
{
   import com.angrybirds.popups.ErrorPopup;
   import com.angrybirds.popups.MaintenanceModePopup;
   import com.angrybirds.popups.PopupLayerIndexFacebook;
   import com.angrybirds.utils.ServerErrorCodes;
   import com.rovio.ui.popup.PopupPriorityType;
   import flash.net.URLRequest;
   
   public class ABFLoader extends SessionRetryingURLLoader
   {
       
      
      private var ADD_VERSION_TO_REQUEST:Boolean = false;
      
      public function ABFLoader(request:URLRequest = null, retryCount:int = 3, debugDelay:Number = 0)
      {
         super(request,retryCount,debugDelay);
      }
      
      override protected function initData() : Boolean
      {
         var dataObject:Object = null;
         var additionalMessage:String = null;
         if(data.d)
         {
            dataObject = data.d;
            if(!(dataObject is String) && data.st)
            {
               dataObject.st = data.st;
            }
            data = dataObject;
         }
         if(data.hasOwnProperty("errorCode"))
         {
            if(data.errorCode == 5000)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new MaintenanceModePopup(PopupLayerIndexFacebook.ERROR,PopupPriorityType.OVERRIDE,data.additionalMessage || ""));
               return true;
            }
            if(data.errorCode == ServerErrorCodes.INVALID_FB_ACCESS_TOKEN)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_INVALID_ACCESSTOKEN));
               return true;
            }
            if(data.errorCode == ServerErrorCodes.PRODUCT_WAS_NOT_FOUND)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_PRODUCT_NOT_FOUND));
               return true;
            }
            if(data.hasOwnProperty("errorMessage"))
            {
               if(ServerErrorCodes.ERROR_CODES_HANDLED_BY_CLIENT.indexOf(data.errorCode) > -1)
               {
                  return false;
               }
               additionalMessage = "";
               if(data.additionalMessage)
               {
                  additionalMessage = "\', additional message: \'" + data.additionalMessage;
               }
               throw new Error("Server returned error code \'" + data.errorCode + "\', message: \'" + data.errorMessage + additionalMessage + "\' for URL \'" + mRequest.url + "\'.#CLIENT#");
            }
         }
         return false;
      }
      
      override public function load(request:URLRequest) : void
      {
         if(this.ADD_VERSION_TO_REQUEST)
         {
            this.addVersionToRequest(request);
         }
         super.load(request);
      }
      
      private function addVersionToRequest(request:URLRequest) : void
      {
         if(request.url.indexOf("?") == -1)
         {
            request.url += "?v=1";
         }
         else
         {
            request.url += "&v=1";
         }
      }
   }
}
