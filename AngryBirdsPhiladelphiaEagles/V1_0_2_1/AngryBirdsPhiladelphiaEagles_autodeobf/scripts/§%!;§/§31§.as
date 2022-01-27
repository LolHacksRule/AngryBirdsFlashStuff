package §%!;§
{
   import §0!D§.§5$§;
   import §@!%§.§-!;§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §31§ extends §!L§
   {
      
      public static const §"Z§:String = "load";
      
      public static var §#v§:uint = 4000;
       
      
      private var §9+§:Boolean = false;
      
      private var §!k§:uint;
      
      private var §7T§:Boolean = false;
      
      public var §;?§:XML;
      
      public var §0C§:XML;
      
      public var §2Z§:DisplayObjectContainer;
      
      private var §"!@§:String;
      
      private var §8!,§:String;
      
      public function §31§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§"!@§ = param4;
         this.§8!,§ = param5;
         super(param1,param2);
         §^!,§ = true;
         §#v§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §-!;§.init(§=q§("connectionProfileId"));
         if(!§5$§.§&y§.§;Z§())
         {
            §5$§.§&y§.init(§-!;§.§'-§(),this.§"!@§,this.§8!,§,null);
         }
         §5w§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§2Z§ = param1;
      }
      
      public function §?a§(param1:XML) : void
      {
         this.§;?§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!"§.addChild(this.§2Z§);
         this.setLoadingPercentage(0);
         this.§!k§ = getTimer();
      }
      
      private function §2v§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§5$§.§&y§.§?!"§())
         {
            for each(_loc1_ in this.§;?§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §5$§.§&y§.§%T§(_loc1_);
               }
            }
            for each(_loc2_ in this.§;?§.packages.pack)
            {
               §5$§.§&y§.§%T§(_loc2_);
            }
            §5$§.§&y§.§,!>§(this.§8%§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§7T§ && this.§2v§())
         {
            this.§7T§ = true;
         }
         var _loc3_:Number = Math.min(1,§5$§.§&y§.§;X§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§!k§) / §#v§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§5$§.§&y§.§;X§() >= 1)
         {
            §5$§.§&y§.§45§();
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §=!"§.removeChild(this.§2Z§);
         this.§2Z§ = null;
         super.cleanup();
      }
      
      private function §8%§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§2Z§)
         {
            this.§2Z§.x = param1 - this.§2Z§.width >> 1;
            this.§2Z§.y = param2 - this.§2Z§.height >> 1;
         }
      }
   }
}
