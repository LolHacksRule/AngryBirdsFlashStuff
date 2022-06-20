package §2E§
{
   import § h§.ErrorPopup;
   import §&§.Starling;
   import §+!n§.§+!p§;
   import §7"1§.§!"`§;
   import §9!6§.§?!y§;
   import §?o§.§4#?§;
   import flash.events.IOErrorEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §^u§ extends §%";§
   {
       
      
      protected var mLevelManager:§4#?§;
      
      protected var §'H§:String;
      
      public function §^u§(param1:String, param2:UncaughtErrorEvents, param3:String, param4:String)
      {
         this.§'H§ = param4;
         super(param1,param2,param3);
      }
      
      public function §2"O§(param1:§4#?§) : void
      {
         this.mLevelManager = param1;
      }
      
      override protected function onError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:§?!y§ = null;
         var _loc6_:String = null;
         super.onError(param1);
         if(AngryBirdsBase.singleton && AngryBirdsBase.singleton.popupManager)
         {
            _loc2_ = §5p§(param1.error);
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
            _loc5_ = new ErrorPopup(ErrorPopup.§ !I§,_loc3_);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
         }
      }
      
      private function §%! §(param1:IOErrorEvent) : void
      {
      }
      
      override protected function reportError(param1:UncaughtErrorEvent) : void
      {
         super.reportError(param1);
         var _loc2_:String = "";
         if(§+!p§.§;"-§ != null)
         {
            _loc2_ = §+!p§.§;"-§.§1"Z§();
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
         if(Starling.§%!q§ == null)
         {
            _loc4_ = "NULL";
         }
         else if(Starling.§," §)
         {
            _loc4_ = "CPU";
         }
         var _loc5_:String = §5p§(param1.error).toString() + "::" + _loc2_ + "::" + this.§=$?§(param1.error) + "::" + _loc4_ + "::" + _loc3_ + "::" + §6-§;
         this.§-"Q§(_loc5_,§4A§(),getStackTrace(param1.error));
      }
      
      override protected function reportErrorToOwnServers(param1:int, param2:String) : void
      {
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §!"`§.§@!A§(this.getErrorReportPath(param1))).method = URLRequestMethod.POST;
         var _loc5_:Object = {
            "clientType":"WEB_FLASH",
            "facebookUserId":this.§'H§,
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
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
         _loc3_.load(_loc4_);
      }
      
      protected function §=$?§(param1:*) : String
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
         §'@§.§`@§(param1,param2,this.§'H§,param3);
      }
      
      protected function §-"Q§(param1:String, param2:int, param3:String) : void
      {
         var _loc4_:String = null;
         if(!§'@§.§6$§)
         {
            return;
         }
         if(param3)
         {
            _loc4_ = param1 + "::" + param3;
            §'@§.§4"x§(§7J§.§6!5§,_loc4_,param2);
         }
         else
         {
            §'@§.§4"x§(§7J§.§;!r§,param1,param2);
         }
      }
      
      override protected function getErrorReportPath(param1:int) : String
      {
         return §1$$§ + "/clienterror";
      }
   }
}
