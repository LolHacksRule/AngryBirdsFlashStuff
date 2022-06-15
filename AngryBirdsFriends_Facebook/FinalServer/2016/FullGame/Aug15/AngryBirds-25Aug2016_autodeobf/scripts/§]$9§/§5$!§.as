package §]$9§
{
   import §1!@§.§#"5§;
   import §?"R§.ErrorPopup;
   import §?"R§.§[W§;
   import §?"R§.§^"y§;
   import §^!,§.§<d§;
   import flash.net.URLRequest;
   
   public class §5$!§ extends §9"+§
   {
       
      
      private var §-!O§:Boolean = false;
      
      public function §5$!§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
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
               AngryBirdsBase.singleton.popupManager.openPopup(new §^"y§(§[W§.ERROR,§<d§.§8"K§,data.additionalMessage || ""));
               return true;
            }
            if(data.errorCode == §#"5§.§=6§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(§[W§.ERROR,§<d§.§8"K§,ErrorPopup.§8#4§));
               return true;
            }
            if(data.errorCode == §#"5§.§@#d§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(§[W§.ERROR,§<d§.§8"K§,ErrorPopup.§]!f§));
               return true;
            }
            if(data.hasOwnProperty("errorMessage"))
            {
               if(§#"5§.§`#q§.indexOf(data.errorCode) > -1)
               {
                  return false;
               }
               _loc2_ = "";
               if(data.additionalMessage)
               {
                  _loc2_ = "\', additional message: \'" + data.additionalMessage;
               }
               throw new Error("Server returned error code \'" + data.errorCode + "\', message: \'" + data.errorMessage + _loc2_ + "\' for URL \'" + §6#y§.url + "\'.#CLIENT#");
            }
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         if(this.§-!O§)
         {
            this.§?1§(param1);
         }
         super.load(param1);
      }
      
      private function §?1§(param1:URLRequest) : void
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
