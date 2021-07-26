package §4S§
{
   import § $0§.§5R§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §?Q§.§[!z§;
   import §`"t§.§><§;
   import flash.net.URLRequest;
   
   public class §-$C§ extends §1!Y§
   {
       
      
      private var §[_§:Boolean = false;
      
      public function §-$C§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      override protected function initData() : Boolean
      {
         var _loc1_:Object = null;
         var _loc2_:String = null;
         if(data.d)
         {
            _loc1_ = data.d;
            if(!(_loc1_ is String) && data.st)
            {
               _loc1_.st = data.st;
            }
            data = _loc1_;
         }
         if(data.hasOwnProperty("errorCode"))
         {
            if(data.errorCode == 5000)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new §[!z§(§@#D§.ERROR,§5R§.§!#§,data.additionalMessage || ""));
               return true;
            }
            if(data.errorCode == §><§.§?"D§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§["0§));
               return true;
            }
            if(data.errorCode == §><§.§@i§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§7y§));
               return true;
            }
            if(data.hasOwnProperty("errorMessage"))
            {
               if(§><§.§0!^§.indexOf(data.errorCode) > -1)
               {
                  return false;
               }
               _loc2_ = "";
               if(data.additionalMessage)
               {
                  _loc2_ = "\', additional message: \'" + data.additionalMessage;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Server returned error code \'" + data.errorCode + "\', message: \'" + data.errorMessage + _loc2_ + "\' for URL \'" + §9j§.url + "\'.#CLIENT#"));
            }
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         if(this.§[_§)
         {
            this.§!"W§(param1);
         }
         super.load(param1);
      }
      
      private function §!"W§(param1:URLRequest) : void
      {
         if(param1.url.indexOf("?") == -1)
         {
            param1.url += "?v=1";
         }
         else
         {
            param1.url += "&v=1";
         }
      }
   }
}
