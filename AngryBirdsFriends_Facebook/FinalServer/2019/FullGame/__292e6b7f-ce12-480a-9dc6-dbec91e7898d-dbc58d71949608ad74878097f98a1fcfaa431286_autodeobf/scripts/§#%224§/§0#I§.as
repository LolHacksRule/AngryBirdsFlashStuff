package §#"4§
{
   import § $0§.§,#@§;
   import §"#k§.Starling;
   import §4S§.§?#l§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §?Q§.ErrorPopup;
   import flash.events.IOErrorEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §0#I§ extends §!"j§
   {
       
      
      protected var mLevelManager:§]#q§;
      
      protected var §5"U§:String;
      
      public function §0#I§(param1:String, param2:UncaughtErrorEvents, param3:String, param4:String)
      {
         this.§5"U§ = param4;
         super(param1,param2,param3);
      }
      
      public function § !0§(param1:§]#q§) : void
      {
         this.mLevelManager = param1;
      }
      
      override protected function onError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§,#@§ = null;
         var _loc6_:String = null;
         super.onError(param1);
         if(AngryBirdsBase.singleton && AngryBirdsBase.singleton.popupManager)
         {
            _loc2_ = §'Q§(param1.error);
            _loc3_ = "Uncaught error.\n";
            if(_loc2_ != 0)
            {
               _loc3_ += "Error ID: " + _loc2_ + "\n";
            }
            else
            {
               _loc3_ += "Event errorID: " + param1.errorID + "\n";
            }
            if((_loc4_ = param1.toString()) && _loc4_ != "")
            {
               _loc3_ += "Info: " + _loc4_ + "\n";
            }
            else if(_loc6_ = getStackTrace(param1.error))
            {
               _loc3_ += "Stacktrace: " + _loc6_;
            }
            _loc5_ = new ErrorPopup(ErrorPopup.§[#w§,_loc3_);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
         }
      }
      
      private function §4"v§(param1:IOErrorEvent) : void
      {
      }
      
      override protected function reportError(param1:UncaughtErrorEvent) : void
      {
         super.reportError(param1);
         var _loc2_:String = "";
         if(§]$?§.§;u§ != null)
         {
            _loc2_ = §]$?§.§;u§.§%#7§();
         }
         if(_loc2_ == null || _loc2_.length == 0)
         {
            _loc2_ = "NoState";
         }
         var _loc3_:String = "";
         if(this.mLevelManager && this.mLevelManager.currentLevel != null)
         {
            _loc3_ = this.mLevelManager.currentLevel;
         }
         var _loc4_:String = "GPU";
         if(Starling.§4$#§ == null)
         {
            _loc4_ = "NULL";
         }
         else if(Starling.§1""§)
         {
            _loc4_ = "CPU";
         }
         var _loc5_:String = §'Q§(param1.error).toString() + "::" + _loc2_ + "::" + this.§-]§(param1.error) + "::" + _loc4_ + "::" + _loc3_ + "::" + §^$9§;
         this.§!#'§(_loc5_,§9"D§(),getStackTrace(param1.error));
      }
      
      override protected function reportErrorToOwnServers(param1:int, param2:String) : void
      {
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §?#l§.§2#=§(this.getErrorReportPath(param1))).method = URLRequestMethod.POST;
         var _loc5_:Object = {
            "clientType":"WEB_FLASH",
            "facebookUserId":this.§5"U§,
            "errorCode":param1
         };
         if(!param2)
         {
            param2 = "";
         }
         else
         {
            _loc7_ = param2.split("#CLIENT#");
            _loc8_ = "";
            _loc9_ = "";
            if(_loc7_.length > 1)
            {
               _loc8_ = _loc7_[0];
               _loc9_ = _loc7_[1];
            }
            else
            {
               _loc9_ = _loc7_[0];
            }
            _loc5_.s = _loc8_;
            _loc5_.c = _loc9_;
         }
         var _loc6_:String = JSON.stringify(_loc5_);
         _loc4_.contentType = "application/json";
         _loc4_.data = _loc6_;
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
         _loc3_.load(_loc4_);
      }
      
      protected function §-]§(param1:*) : String
      {
         var _loc2_:String = "-";
         if(param1 is Error)
         {
            _loc2_ = Error(param1).message;
         }
         return _loc2_;
      }
      
      override protected function trackErrorID(param1:int, param2:int, param3:String = null) : void
      {
         §<"G§.§-A§(param1,param2,this.§5"U§,param3);
      }
      
      protected function §!#'§(param1:String, param2:int, param3:String) : void
      {
         var _loc4_:String = null;
         if(!§<"G§.§+$A§)
         {
            return;
         }
         if(param3)
         {
            _loc4_ = param1 + "::" + param3;
            §<"G§.§[#]§(§"!o§.§9p§,_loc4_,param2);
         }
         else
         {
            §<"G§.§[#]§(§"!o§.§>!=§,param1,param2);
         }
      }
      
      override protected function getErrorReportPath(param1:int) : String
      {
         return §!#s§ + "/clienterror";
      }
   }
}
