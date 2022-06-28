package §[!>§
{
   import § $§.Server;
   import §`M§.LoadManager;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class StateLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §@?§:uint = 4000;
       
      
      private var §%!d§:Boolean = false;
      
      private var §<!A§:uint;
      
      private var §<!J§:Boolean = false;
      
      public var §<K§:XML;
      
      public var §-!f§:XML;
      
      public var §%x§:DisplayObjectContainer;
      
      private var §"!`§:String;
      
      private var §#S§:String;
      
      public function StateLoad(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§"!`§ = param4;
         this.§#S§ = param5;
         super(param1,param2);
         §!!6§ = true;
         §@?§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         Server.init(§5!a§("connectionProfileId"));
         if(!LoadManager.§&!'§.§-B§())
         {
            LoadManager.§&!'§.init(Server.§ !T§(),this.§"!`§,this.§#S§,null);
         }
         §!t§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§%x§ = param1;
      }
      
      public function §'!+§(param1:XML) : void
      {
         this.§<K§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §1!J§.addChild(this.§%x§);
         this.setLoadingPercentage(0);
         this.§<!A§ = getTimer();
      }
      
      private function §!@§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(LoadManager.§&!'§.§?>§())
         {
            for each(_loc1_ in this.§<K§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  LoadManager.§&!'§.§#!T§(_loc1_);
               }
            }
            for each(_loc2_ in this.§<K§.packages.pack)
            {
               LoadManager.§&!'§.§#!T§(_loc2_);
            }
            LoadManager.§&!'§.§[!L§(this.§!L§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != StateBase.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§<!J§ && this.§!@§())
         {
            this.§<!J§ = true;
         }
         var _loc3_:Number = Math.min(1,LoadManager.§&!'§.§?!H§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§<!A§) / §@?§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(LoadManager.§&!'§.§?!H§() >= 1)
         {
            LoadManager.§&!'§.§[y§();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §1!J§.removeChild(this.§%x§);
         this.§%x§ = null;
         super.cleanup();
      }
      
      private function §!L§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§%x§)
         {
            this.§%x§.x = param1 - this.§%x§.width >> 1;
            this.§%x§.y = param2 - this.§%x§.height >> 1;
         }
      }
   }
}
