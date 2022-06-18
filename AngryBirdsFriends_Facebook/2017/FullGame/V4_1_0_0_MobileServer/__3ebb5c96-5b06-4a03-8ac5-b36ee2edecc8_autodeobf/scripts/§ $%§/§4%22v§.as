package § $%§
{
   import § o§.§%"!§;
   import § o§.§3%§;
   import § o§.ErrorPopup;
   import §<#m§.§^#o§;
   import §^#]§.§;!&§;
   import flash.net.URLRequest;
   
   public class §4"v§ extends §5h§
   {
       
      
      private var §[&§:Boolean = false;
      
      public function §4"v§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
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
               AngryBirdsBase.singleton.popupManager.openPopup(new §3%§(§%"!§.ERROR,§^#o§.§#!K§,data.additionalMessage || ""));
               return true;
            }
            if(data.errorCode == §;!&§.§5!=§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(§%"!§.ERROR,§^#o§.§#!K§,ErrorPopup.§-"'§));
               return true;
            }
            if(data.errorCode == §;!&§.§,!<§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(§%"!§.ERROR,§^#o§.§#!K§,ErrorPopup.§5"-§));
               return true;
            }
            if(data.hasOwnProperty("errorMessage"))
            {
               if(§;!&§.§?$<§.indexOf(data.errorCode) > -1)
               {
                  return false;
               }
               _loc2_ = "";
               if(data.additionalMessage)
               {
                  _loc2_ = "\', additional message: \'" + data.additionalMessage;
               }
               throw new Error("Server returned error code \'" + data.errorCode + "\', message: \'" + data.errorMessage + _loc2_ + "\' for URL \'" + §'d§.url + "\'.#CLIENT#");
            }
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         if(this.§[&§)
         {
            this.§3N§(param1);
         }
         super.load(param1);
      }
      
      private function §3N§(param1:URLRequest) : void
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
