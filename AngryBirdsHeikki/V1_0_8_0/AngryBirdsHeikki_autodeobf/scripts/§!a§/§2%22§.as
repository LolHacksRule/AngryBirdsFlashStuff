package §!a§
{
   import §%!c§.§3h§;
   import §-Y§.§>!'§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §2"§ extends §&6§
   {
      
      public static const §+Z§:String = "load";
      
      public static var §>U§:uint = 4000;
       
      
      private var §8O§:Boolean = false;
      
      private var §'!E§:uint;
      
      private var §=!=§:Boolean = false;
      
      public var §'! §:XML;
      
      public var §4!0§:XML;
      
      public var §3;§:DisplayObjectContainer;
      
      private var §>!T§:String;
      
      private var §40§:String;
      
      public function §2"§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§>!T§ = param4;
         this.§40§ = param5;
         super(param1,param2);
         §<!Z§ = true;
         §>U§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §>!'§.init(§&I§("connectionProfileId"));
         if(!§3h§.§=,§.§,0§())
         {
            §3h§.§=,§.init(§>!'§.§>?§(),this.§>!T§,this.§40§,null);
         }
         § M§(true);
      }
      
      public function §6!5§(param1:DisplayObjectContainer) : void
      {
         this.§3;§ = param1;
      }
      
      public function §2&§(param1:XML) : void
      {
         this.§'! § = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!B§.addChild(this.§3;§);
         this.setLoadingPercentage(0);
         this.§'!E§ = getTimer();
      }
      
      private function §7H§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§3h§.§=,§.§>!9§())
         {
            for each(_loc1_ in this.§'! §.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §3h§.§=,§.§8!7§(_loc1_);
               }
            }
            for each(_loc1_ in this.§'! §.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §3h§.§=,§.§8!7§(_loc1_);
               }
            }
            for each(_loc2_ in this.§'! §.packages.pack)
            {
               §3h§.§=,§.§8!7§(_loc2_);
            }
            §3h§.§=,§.§;!E§(this.§+"§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§=!=§ && this.§7H§())
         {
            this.§=!=§ = true;
         }
         var _loc3_:Number = Math.min(1,§3h§.§=,§.§=7§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§'!E§) / §>U§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§3h§.§=,§.§=7§() >= 1)
         {
            §3h§.§=,§.§?!Z§();
            return §&6§.STATE_STATUS_COMPLETED;
         }
         return §&6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §"!B§.removeChild(this.§3;§);
         this.§3;§ = null;
         super.cleanup();
      }
      
      private function §+"§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§3;§)
         {
            this.§3;§.x = param1 - this.§3;§.width >> 1;
            this.§3;§.y = param2 - this.§3;§.height >> 1;
         }
      }
   }
}
