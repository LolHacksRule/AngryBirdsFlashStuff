package §0!§
{
   import §"X§.§^!;§;
   import §[H§.§7P§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §while§ extends §0!5§
   {
      
      public static const §0!7§:String = "load";
      
      public static var §5K§:uint = 4000;
       
      
      private var §8s§:Boolean = false;
      
      private var §&Y§:uint;
      
      private var §%u§:Boolean = false;
      
      public var §;h§:XML;
      
      public var §8y§:XML;
      
      public var § ;§:DisplayObjectContainer;
      
      private var §<x§:String;
      
      private var §?M§:String;
      
      public function §while§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§<x§ = param4;
         this.§?M§ = param5;
         super(param1,param2);
         § !G§ = true;
         §5K§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §7P§.init(§=l§("connectionProfileId"));
         if(!§^!;§.§-]§.§;d§())
         {
            §^!;§.§-]§.init(§7P§.§#§(),this.§<x§,this.§?M§,null);
         }
         §,!G§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§ ;§ = param1;
      }
      
      public function §#!@§(param1:XML) : void
      {
         this.§;h§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §0W§.addChild(this.§ ;§);
         this.setLoadingPercentage(0);
         this.§&Y§ = getTimer();
      }
      
      private function §@c§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§^!;§.§-]§.§9y§())
         {
            for each(_loc1_ in this.§;h§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §^!;§.§-]§.§6j§(_loc1_);
               }
            }
            for each(_loc2_ in this.§;h§.packages.pack)
            {
               §^!;§.§-]§.§6j§(_loc2_);
            }
            §^!;§.§-]§.§7s§(this.§25§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§%u§ && this.§@c§())
         {
            this.§%u§ = true;
         }
         var _loc3_:Number = Math.min(1,§^!;§.§-]§.§5x§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§&Y§) / §5K§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§^!;§.§-]§.§5x§() >= 1)
         {
            §^!;§.§-]§.§;,§();
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §0W§.removeChild(this.§ ;§);
         this.§ ;§ = null;
         super.cleanup();
      }
      
      private function §25§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§ ;§)
         {
            this.§ ;§.x = param1 - this.§ ;§.width >> 1;
            this.§ ;§.y = param2 - this.§ ;§.height >> 1;
         }
      }
   }
}
