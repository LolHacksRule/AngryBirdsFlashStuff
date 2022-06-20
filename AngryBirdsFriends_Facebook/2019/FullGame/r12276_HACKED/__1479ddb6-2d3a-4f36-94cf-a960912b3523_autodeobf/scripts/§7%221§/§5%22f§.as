package §7"1§
{
   import § h§.§-!S§;
   import § h§.§<!K§;
   import § h§.ErrorPopup;
   import §!!H§.§'#S§;
   import §9!6§.§## §;
   import flash.net.URLRequest;
   
   public class §5"f§ extends §="A§
   {
       
      
      private var §1H§:Boolean = false;
      
      public function §5"f§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
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
               AngryBirdsBase.singleton.popupManager.openPopup(new §<!K§(§-!S§.ERROR,§## §.§<#k§,data.additionalMessage || ""));
               return true;
            }
            if(data.errorCode == §'#S§.§'!k§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§0![§));
               return true;
            }
            if(data.errorCode == §'#S§.§0#O§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§6"5§));
               return true;
            }
            if(data.hasOwnProperty("errorMessage"))
            {
               if(§'#S§.§^$-§.indexOf(data.errorCode) > -1)
               {
                  return false;
               }
               _loc2_ = "";
               if(data.additionalMessage)
               {
                  _loc2_ = "\', additional message: \'" + data.additionalMessage;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Server returned error code \'" + data.errorCode + "\', message: \'" + data.errorMessage + _loc2_ + "\' for URL \'" + §1!9§.url + "\'.#CLIENT#"));
            }
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         if(this.§1H§)
         {
            this.§5!G§(param1);
         }
         super.load(param1);
      }
      
      private function §5!G§(param1:URLRequest) : void
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
