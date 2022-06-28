package §8,§
{
   import §"i§.§5V§;
   import §4!C§.§,!l§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §5T§ extends §+_§
   {
      
      public static const §3F§:String = "load";
      
      public static var §+3§:uint = 4000;
       
      
      private var §+d§:Boolean = false;
      
      private var §7!%§:uint;
      
      private var §%!K§:Boolean = false;
      
      public var §,!j§:XML;
      
      public var §6x§:XML;
      
      public var §,!4§:DisplayObjectContainer;
      
      private var §5!i§:String;
      
      private var §6!u§:String;
      
      public function §5T§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§5!i§ = param4;
         this.§6!u§ = param5;
         super(param1,param2);
         §39§ = true;
         §+3§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §,!l§.init(§`!g§("connectionProfileId"));
         if(!§5V§.§^Z§.§@!h§())
         {
            §5V§.§^Z§.init(§,!l§.§"!D§(),this.§5!i§,this.§6!u§,null);
         }
         §!u§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§,!4§ = param1;
      }
      
      public function §9l§(param1:XML) : void
      {
         this.§,!j§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!9§.addChild(this.§,!4§);
         this.setLoadingPercentage(0);
         this.§7!%§ = getTimer();
      }
      
      private function §?!Z§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§5V§.§^Z§.§?r§())
         {
            for each(_loc1_ in this.§,!j§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §5V§.§^Z§.§@e§(_loc1_);
               }
            }
            for each(_loc2_ in this.§,!j§.packages.pack)
            {
               §5V§.§^Z§.§@e§(_loc2_);
            }
            §5V§.§^Z§.§-u§(this.§-!B§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§%!K§ && this.§?!Z§())
         {
            this.§%!K§ = true;
         }
         var _loc3_:Number = Math.min(1,§5V§.§^Z§.§#Y§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§7!%§) / §+3§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§5V§.§^Z§.§#Y§() >= 1)
         {
            §5V§.§^Z§.§?!^§();
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §8!9§.removeChild(this.§,!4§);
         this.§,!4§ = null;
         super.cleanup();
      }
      
      private function §-!B§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§,!4§)
         {
            this.§,!4§.x = param1 - this.§,!4§.width >> 1;
            this.§,!4§.y = param2 - this.§,!4§.height >> 1;
         }
      }
   }
}
