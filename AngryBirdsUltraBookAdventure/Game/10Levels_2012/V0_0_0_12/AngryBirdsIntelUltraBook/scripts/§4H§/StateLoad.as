package §4H§
{
   import §%!T§.LoadManager;
   import §6!a§.Server;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class StateLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §8J§:uint = 4000;
       
      
      private var §@D§:Boolean = false;
      
      private var §06§:uint;
      
      private var §"!6§:Boolean = false;
      
      public var §^b§:XML;
      
      public var §0!^§:XML;
      
      public var §0!T§:DisplayObjectContainer;
      
      private var §3>§:String;
      
      private var §-!C§:String;
      
      public function StateLoad(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§3>§ = param4;
         this.§-!C§ = param5;
         super(param1,param2);
         §@V§ = true;
         §8J§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         Server.init(§#1§("connectionProfileId"));
         if(!LoadManager.§8!X§.§#3§())
         {
            LoadManager.§8!X§.init(Server.§&7§(),this.§3>§,this.§-!C§,null);
         }
         §+l§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§0!T§ = param1;
      }
      
      public function §=!d§(param1:XML) : void
      {
         this.§^b§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'6§.addChild(this.§0!T§);
         this.setLoadingPercentage(0);
         this.§06§ = getTimer();
      }
      
      private function §'O§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(LoadManager.§8!X§.§]I§())
         {
            for each(_loc1_ in this.§^b§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  LoadManager.§8!X§.§`w§(_loc1_);
               }
            }
            for each(_loc2_ in this.§^b§.packages.pack)
            {
               LoadManager.§8!X§.§`w§(_loc2_);
            }
            LoadManager.§8!X§.§ !L§(this.§9K§);
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
         if(!this.§"!6§ && this.§'O§())
         {
            this.§"!6§ = true;
         }
         var _loc3_:Number = Math.min(1,LoadManager.§8!X§.§'!F§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§06§) / §8J§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(LoadManager.§8!X§.§'!F§() >= 1)
         {
            LoadManager.§8!X§.§%!]§();
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
         §'6§.removeChild(this.§0!T§);
         this.§0!T§ = null;
         super.cleanup();
      }
      
      private function §9K§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§0!T§)
         {
            this.§0!T§.x = param1 - this.§0!T§.width >> 1;
            this.§0!T§.y = param2 - this.§0!T§.height >> 1;
         }
      }
   }
}
