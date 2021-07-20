package §8!H§
{
   import §-^§.§?7§;
   import §-o§.§4w§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §"_§ extends §9![§
   {
      
      public static const §'!q§:String = "load";
      
      public static var §-[§:uint = 4000;
       
      
      private var §4!V§:Boolean = false;
      
      private var §^O§:uint;
      
      private var §,!%§:Boolean = false;
      
      public var §=K§:XML;
      
      public var § ]§:XML;
      
      public var §1!W§:DisplayObjectContainer;
      
      protected var §"!p§:String;
      
      protected var §`!f§:String;
      
      public function §"_§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§"!p§ = param4;
         this.§`!f§ = param5;
         super(param1,param2);
         §-O§ = true;
         §-[§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §?7§.init(§+!1§("connectionProfileId"));
         if(!§4w§.§[U§.§`q§())
         {
            this.§#!?§();
         }
         §8^§(true);
      }
      
      protected function §#!?§() : void
      {
         §4w§.§[U§.init(§?7§.§7h§(),this.§"!p§,this.§`!f§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§1!W§ = param1;
      }
      
      public function §<M§(param1:XML) : void
      {
         this.§=K§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §]2§.addChild(this.§1!W§);
         this.setLoadingPercentage(0);
         this.§^O§ = getTimer();
      }
      
      private function §3i§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§4w§.§[U§.§5@§())
         {
            for each(_loc1_ in this.§=K§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §4w§.§[U§.§&!D§(_loc1_);
               }
            }
            for each(_loc1_ in this.§=K§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §4w§.§[U§.§&!D§(_loc1_);
               }
            }
            for each(_loc2_ in this.§=K§.config.xml)
            {
               §4w§.§[U§.§&!D§(_loc2_);
            }
            for each(_loc3_ in this.§=K§.packages.pack)
            {
               §4w§.§[U§.§&!D§(_loc3_);
            }
            §4w§.§[U§.§!e§(this.§46§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§,!%§ && this.§3i§())
         {
            this.§,!%§ = true;
         }
         var _loc3_:Number = Math.min(1,§4w§.§[U§.§=!^§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§^O§) / §-[§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§4w§.§[U§.§=!^§() >= 1)
         {
            §4w§.§[U§.§]!@§();
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §]2§.removeChild(this.§1!W§);
         this.§1!W§ = null;
         super.cleanup();
      }
      
      private function §46§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§1!W§)
         {
            this.§1!W§.x = param1 - this.§1!W§.width >> 1;
            this.§1!W§.y = param2 - this.§1!W§.height >> 1;
         }
      }
   }
}
