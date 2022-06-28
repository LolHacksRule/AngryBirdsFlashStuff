package §'X§
{
   import §"X§.§^!;§;
   import §[H§.§7P§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §8s§ extends §9[§
   {
      
      public static const §0!7§:String = "load";
      
      public static var §"!,§:uint = 4000;
       
      
      private var §&Y§:Boolean = false;
      
      private var §%u§:uint;
      
      private var §;h§:Boolean = false;
      
      public var §8y§:XML;
      
      public var § ;§:XML;
      
      public var §<x§:DisplayObjectContainer;
      
      private var §#!@§:String;
      
      private var §?M§:String;
      
      public function §8s§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§#!@§ = param4;
         this.§?M§ = param5;
         super(param1,param2);
         § each§ = true;
         §"!,§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §7P§.init(§while§("connectionProfileId"));
         if(!§^!;§.§-]§.§;d§())
         {
            §^!;§.§-]§.init(§7P§.§#§(),this.§#!@§,this.§?M§,null);
         }
         §<Q§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§<x§ = param1;
      }
      
      public function §@c§(param1:XML) : void
      {
         this.§8y§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §0W§.addChild(this.§<x§);
         this.setLoadingPercentage(0);
         this.§%u§ = getTimer();
      }
      
      private function §25§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§^!;§.§-]§.§9y§())
         {
            for each(_loc1_ in this.§8y§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §^!;§.§-]§.§6j§(_loc1_);
               }
            }
            for each(_loc2_ in this.§8y§.packages.pack)
            {
               §^!;§.§-]§.§6j§(_loc2_);
            }
            §^!;§.§-]§.§7s§(this.§5K§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§;h§ && this.§25§())
         {
            this.§;h§ = true;
         }
         var _loc3_:Number = Math.min(1,§^!;§.§-]§.§5x§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§%u§) / §"!,§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§^!;§.§-]§.§5x§() >= 1)
         {
            §^!;§.§-]§.§;,§();
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §0W§.removeChild(this.§<x§);
         this.§<x§ = null;
         super.cleanup();
      }
      
      private function §5K§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§<x§)
         {
            this.§<x§.x = param1 - this.§<x§.width >> 1;
            this.§<x§.y = param2 - this.§<x§.height >> 1;
         }
      }
   }
}
