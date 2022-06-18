package § =§
{
   import §9!6§.§-!7§;
   import §`y§.§4!T§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §,!R§ extends § x§
   {
      
      public static const §="§:String = "load";
      
      public static var §7!V§:uint = 4000;
       
      
      private var §0!4§:Boolean = false;
      
      private var §]e§:uint;
      
      private var §7!!§:Boolean = false;
      
      public var §!!,§:XML;
      
      public var §-!%§:XML;
      
      public var §-!J§:DisplayObjectContainer;
      
      private var §?7§:String;
      
      private var §?]§:String;
      
      public function §,!R§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§?7§ = param4;
         this.§?]§ = param5;
         super(param1,param2);
         §[4§ = true;
         §7!V§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §4!T§.init(§0!X§("connectionProfileId"));
         if(!§-!7§.§,§.§%!^§())
         {
            §-!7§.§,§.init(§4!T§.§5!!§(),this.§?7§,this.§?]§,null);
         }
         §@!R§(true);
      }
      
      public function §'!<§(param1:DisplayObjectContainer) : void
      {
         this.§-!J§ = param1;
      }
      
      public function §?q§(param1:XML) : void
      {
         this.§!!,§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §&!C§.addChild(this.§-!J§);
         this.setLoadingPercentage(0);
         this.§]e§ = getTimer();
      }
      
      private function §!!'§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§-!7§.§,§.§@!T§())
         {
            for each(_loc1_ in this.§!!,§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §-!7§.§,§.§,F§(_loc1_);
               }
            }
            for each(_loc2_ in this.§!!,§.packages.pack)
            {
               §-!7§.§,§.§,F§(_loc2_);
            }
            §-!7§.§,§.§3L§(this.§[!?§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§7!!§ && this.§!!'§())
         {
            this.§7!!§ = true;
         }
         var _loc3_:Number = Math.min(1,§-!7§.§,§.§ !F§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§]e§) / §7!V§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§-!7§.§,§.§ !F§() >= 1)
         {
            §-!7§.§,§.§7!O§();
            return § x§.STATE_STATUS_COMPLETED;
         }
         return § x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §&!C§.removeChild(this.§-!J§);
         this.§-!J§ = null;
         super.cleanup();
      }
      
      private function §[!?§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§-!J§)
         {
            this.§-!J§.x = param1 - this.§-!J§.width >> 1;
            this.§-!J§.y = param2 - this.§-!J§.height >> 1;
         }
      }
   }
}
