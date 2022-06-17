package §>"Q§
{
   import §8"b§.§?$8§;
   import §;$5§.§9§;
   import §?!N§.§%#§;
   import §?!N§.§&!T§;
   import §?!N§.ErrorPopup;
   import flash.net.URLRequest;
   
   public class §'!n§ extends §]Q§
   {
       
      
      private var §!$1§:Boolean = false;
      
      public function §'!n§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
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
               AngryBirdsBase.singleton.popupManager.openPopup(new §&!T§(§%#§.ERROR,§9#5§.§;!!§,data.additionalMessage || ""));
               return true;
            }
            if(data.errorCode == §?$8§.§`"[§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§,l§));
               return true;
            }
            if(data.errorCode == §?$8§.§+>§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§;"[§));
               return true;
            }
            if(data.hasOwnProperty("errorMessage"))
            {
               if(§?$8§.§0#4§.indexOf(data.errorCode) > -1)
               {
                  return false;
               }
               _loc2_ = "";
               if(data.additionalMessage)
               {
                  _loc2_ = "\', additional message: \'" + data.additionalMessage;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Server returned error code \'" + data.errorCode + "\', message: \'" + data.errorMessage + _loc2_ + "\' for URL \'" + §use§.url + "\'.#CLIENT#"));
            }
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         if(this.§!$1§)
         {
            this.§&T§(param1);
         }
         super.load(param1);
      }
      
      private function §&T§(param1:URLRequest) : void
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
