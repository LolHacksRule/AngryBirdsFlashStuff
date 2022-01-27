package §1N§
{
   import § !§.LoadManager;
   import §^!7§.Server;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class StateLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §2g§:uint = 4000;
       
      
      private var §^'§:Boolean = false;
      
      private var §9^§:uint;
      
      private var §1!?§:Boolean = false;
      
      public var §!U§:XML;
      
      public var §6V§:XML;
      
      public var §6!W§:DisplayObjectContainer;
      
      private var §+&§:String;
      
      private var §#!B§:String;
      
      public function StateLoad(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§+&§ = param4;
         this.§#!B§ = param5;
         super(param1,param2);
         §1!O§ = true;
         §2g§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         Server.init(§!!Z§("connectionProfileId"));
         if(!LoadManager.§7!E§.§]L§())
         {
            LoadManager.§7!E§.init(Server.§'!%§(),this.§+&§,this.§#!B§,null);
         }
         §,!]§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§6!W§ = param1;
      }
      
      public function §'e§(param1:XML) : void
      {
         this.§!U§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!,§.addChild(this.§6!W§);
         this.setLoadingPercentage(0);
         this.§9^§ = getTimer();
      }
      
      private function §=!§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(LoadManager.§7!E§.§ n§())
         {
            for each(_loc1_ in this.§!U§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  LoadManager.§7!E§.§1!=§(_loc1_);
               }
            }
            for each(_loc2_ in this.§!U§.packages.pack)
            {
               LoadManager.§7!E§.§1!=§(_loc2_);
            }
            LoadManager.§7!E§.§,!H§(this.§0!i§);
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
         if(!this.§1!?§ && this.§=!§())
         {
            this.§1!?§ = true;
         }
         var _loc3_:Number = Math.min(1,LoadManager.§7!E§.§"U§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§9^§) / §2g§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(LoadManager.§7!E§.§"U§() >= 1)
         {
            LoadManager.§7!E§.§<L§();
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
         §"!,§.removeChild(this.§6!W§);
         this.§6!W§ = null;
         super.cleanup();
      }
      
      private function §0!i§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§6!W§)
         {
            this.§6!W§.x = param1 - this.§6!W§.width >> 1;
            this.§6!W§.y = param2 - this.§6!W§.height >> 1;
         }
      }
   }
}
