package §>!#§
{
   import §#v§.§#!?§;
   import §?"R§.ErrorPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §]$9§.§>J§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §^a§.Starling;
   import flash.events.IOErrorEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §%e§ extends §6!W§
   {
       
      
      protected var mLevelManager:§#!?§;
      
      protected var §%"6§:String;
      
      public function §%e§(param1:String, param2:UncaughtErrorEvents, param3:String, param4:String)
      {
         this.§%"6§ = param4;
         super(param1,param2,param3);
      }
      
      public function §#$§(param1:§#!?§) : void
      {
         this.mLevelManager = param1;
      }
      
      override protected function onError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:§8!H§ = null;
         super.onError(param1);
         if(AngryBirdsBase.singleton && AngryBirdsBase.singleton.popupManager)
         {
            _loc2_ = new ErrorPopup(§[W§.ERROR,§<d§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         }
      }
      
      private function §5"R§(param1:IOErrorEvent) : void
      {
      }
      
      override protected function reportError(param1:UncaughtErrorEvent) : void
      {
         super.reportError(param1);
         var _loc2_:String = "";
         if(§>"$§.§<_§ != null)
         {
            _loc2_ = §>"$§.§<_§.§^!X§();
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
         if(Starling.§<#`§ == null)
         {
            _loc4_ = "NULL";
         }
         else if(Starling.§ #4§)
         {
            _loc4_ = "CPU";
         }
         var _loc5_:String = §6#?§(param1.error).toString() + "::" + _loc2_ + "::" + this.§;!5§(param1.error) + "::" + _loc4_ + "::" + _loc3_ + "::" + §3w§;
         this.§0#'§(_loc5_,getTime(),getStackTrace(param1.error));
      }
      
      override protected function reportErrorToOwnServers(param1:int, param2:String) : void
      {
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest;
         (_loc4_ = §>J§.§'[§(this.getErrorReportPath(param1))).method = URLRequestMethod.POST;
         var _loc5_:Object = {
            "clientType":"WEB_FLASH",
            "facebookUserId":this.§%"6§,
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
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
         _loc3_.load(_loc4_);
      }
      
      protected function §;!5§(param1:*) : String
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
         §,"W§.§<!&§(param1,param2,this.§%"6§,param3);
      }
      
      protected function §0#'§(param1:String, param2:int, param3:String) : void
      {
         var _loc4_:String = null;
         if(!§,"W§.§=!R§)
         {
            return;
         }
         if(param3)
         {
            _loc4_ = param1 + "::" + param3;
            §,"W§.§`#f§(§;-§.§5F§,_loc4_,param2);
         }
         else
         {
            §,"W§.§`#f§(§;-§.§;#l§,param1,param2);
         }
      }
      
      override protected function getErrorReportPath(param1:int) : String
      {
         return §3"=§ + "/clienterror";
      }
   }
}
