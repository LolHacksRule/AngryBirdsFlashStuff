package §<!>§
{
   import §;!5§.§5>§;
   import §^;§.§6!S§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §,?§ extends §?Y§
   {
      
      public static const §?h§:String = "load";
      
      public static var §&!7§:uint = 4000;
       
      
      private var §`S§:Boolean = false;
      
      private var §5!m§:uint;
      
      private var §9V§:Boolean = false;
      
      public var §5h§:XML;
      
      public var §7y§:XML;
      
      public var §0!0§:DisplayObjectContainer;
      
      private var §>_§:String;
      
      private var §6!4§:String;
      
      public function §,?§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§>_§ = param4;
         this.§6!4§ = param5;
         super(param1,param2);
         §8g§ = true;
         §&!7§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §5>§.init(§&!I§("connectionProfileId"));
         if(!§6!S§.§<d§.§?!H§())
         {
            §6!S§.§<d§.init(§5>§.§?T§(),this.§>_§,this.§6!4§,null);
         }
         §62§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§0!0§ = param1;
      }
      
      public function §;w§(param1:XML) : void
      {
         this.§5h§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8X§.addChild(this.§0!0§);
         this.setLoadingPercentage(0);
         this.§5!m§ = getTimer();
      }
      
      private function §5x§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§6!S§.§<d§.§%G§())
         {
            for each(_loc1_ in this.§5h§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §6!S§.§<d§.§]!$§(_loc1_);
               }
            }
            for each(_loc2_ in this.§5h§.packages.pack)
            {
               §6!S§.§<d§.§]!$§(_loc2_);
            }
            §6!S§.§<d§.§7![§(this.§7>§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§9V§ && this.§5x§())
         {
            this.§9V§ = true;
         }
         var _loc3_:Number = Math.min(1,§6!S§.§<d§.§4!C§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§5!m§) / §&!7§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§6!S§.§<d§.§4!C§() >= 1)
         {
            §6!S§.§<d§.§4!B§();
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §8X§.removeChild(this.§0!0§);
         this.§0!0§ = null;
         super.cleanup();
      }
      
      private function §7>§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§0!0§)
         {
            this.§0!0§.x = param1 - this.§0!0§.width >> 1;
            this.§0!0§.y = param2 - this.§0!0§.height >> 1;
         }
      }
   }
}
