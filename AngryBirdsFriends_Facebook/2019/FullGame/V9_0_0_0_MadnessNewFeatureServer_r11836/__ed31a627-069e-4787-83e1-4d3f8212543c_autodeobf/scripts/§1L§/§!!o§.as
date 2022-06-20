package §1L§
{
   import §"!n§.§2#f§;
   import §0!s§.§]"Y§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §>z§.§`"J§;
   import flash.net.URLRequest;
   
   public class §!!o§ extends §0#=§
   {
       
      
      private var §?"T§:Boolean = false;
      
      public function §!!o§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
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
               AngryBirdsBase.singleton.popupManager.openPopup(new §`"J§(§#"l§.ERROR,§]"Y§.§]a§,data.additionalMessage || ""));
               return true;
            }
            if(data.errorCode == §2#f§.§>"p§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§4!Y§));
               return true;
            }
            if(data.errorCode == §2#f§.§`#;§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!j§));
               return true;
            }
            if(data.hasOwnProperty("errorMessage"))
            {
               if(§2#f§.§5#7§.indexOf(data.errorCode) > -1)
               {
                  return false;
               }
               _loc2_ = "";
               if(data.additionalMessage)
               {
                  _loc2_ = "\', additional message: \'" + data.additionalMessage;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Server returned error code \'" + data.errorCode + "\', message: \'" + data.errorMessage + _loc2_ + "\' for URL \'" + §4#m§.url + "\'.#CLIENT#"));
            }
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         if(this.§?"T§)
         {
            this.§"!_§(param1);
         }
         super.load(param1);
      }
      
      private function §"!_§(param1:URLRequest) : void
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
