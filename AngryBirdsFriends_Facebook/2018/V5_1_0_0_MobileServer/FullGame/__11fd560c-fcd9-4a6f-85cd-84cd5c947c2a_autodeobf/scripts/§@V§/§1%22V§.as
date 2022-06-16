package §@V§
{
   import §1!=§.§^"U§;
   import §?P§.§3"m§;
   import §?P§.ErrorPopup;
   import §?P§.§]"$§;
   import §[#[§.§[$;§;
   import flash.net.URLRequest;
   
   public class §1"V§ extends §!"j§
   {
       
      
      private var §?X§:Boolean = false;
      
      public function §1"V§(param1:URLRequest = null, param2:int = 3, param3:Number = 0)
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
               AngryBirdsBase.singleton.popupManager.openPopup(new §3"m§(§]"$§.ERROR,§^"U§.§-#s§,data.additionalMessage || ""));
               return true;
            }
            if(data.errorCode == §[$;§.§!"X§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§!M§));
               return true;
            }
            if(data.errorCode == §[$;§.§7!4§)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§7z§));
               return true;
            }
            if(data.hasOwnProperty("errorMessage"))
            {
               if(§[$;§.§3#x§.indexOf(data.errorCode) > -1)
               {
                  return false;
               }
               _loc2_ = "";
               if(data.additionalMessage)
               {
                  _loc2_ = "\', additional message: \'" + data.additionalMessage;
               }
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Server returned error code \'" + data.errorCode + "\', message: \'" + data.errorMessage + _loc2_ + "\' for URL \'" + §"C§.url + "\'.#CLIENT#"));
            }
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         if(this.§?X§)
         {
            this.§8;§(param1);
         }
         super.load(param1);
      }
      
      private function §8;§(param1:URLRequest) : void
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
