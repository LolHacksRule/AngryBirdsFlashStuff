package §^w§
{
   import §&-§.§<h§;
   import §'8§.§5!H§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §3!"§ extends §-!,§
   {
      
      public static const §@§:String = "load";
      
      public static var §,s§:uint = 4000;
       
      
      private var §9!!§:Boolean = false;
      
      private var §,5§:uint;
      
      private var §,!B§:Boolean = false;
      
      public var §=Z§:XML;
      
      public var § r§:XML;
      
      public var §!!@§:DisplayObjectContainer;
      
      private var §5R§:String;
      
      private var §6a§:String;
      
      public function §3!"§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§5R§ = param4;
         this.§6a§ = param5;
         super(param1,param2);
         §2E§ = true;
         §,s§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §5!H§.init(§2!6§("connectionProfileId"));
         if(!§<h§.§@!&§.§=!I§())
         {
            §<h§.§@!&§.init(§5!H§.§"! §(),this.§5R§,this.§6a§,null);
         }
         § !D§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§!!@§ = param1;
      }
      
      public function §1]§(param1:XML) : void
      {
         this.§=Z§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §46§.addChild(this.§!!@§);
         this.setLoadingPercentage(0);
         this.§,5§ = getTimer();
      }
      
      private function §@!§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§<h§.§@!&§.§&!P§())
         {
            for each(_loc1_ in this.§=Z§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §<h§.§@!&§.§6%§(_loc1_);
               }
            }
            for each(_loc2_ in this.§=Z§.packages.pack)
            {
               §<h§.§@!&§.§6%§(_loc2_);
            }
            §<h§.§@!&§.§1!§(this.§,!,§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§,!B§ && this.§@!§())
         {
            this.§,!B§ = true;
         }
         var _loc3_:Number = Math.min(1,§<h§.§@!&§.§6c§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§,5§) / §,s§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§<h§.§@!&§.§6c§() >= 1)
         {
            §<h§.§@!&§.§&M§();
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §46§.removeChild(this.§!!@§);
         this.§!!@§ = null;
         super.cleanup();
      }
      
      private function §,!,§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§!!@§)
         {
            this.§!!@§.x = param1 - this.§!!@§.width >> 1;
            this.§!!@§.y = param2 - this.§!!@§.height >> 1;
         }
      }
   }
}
