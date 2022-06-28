package §+0§
{
   import §7X§.§^"§;
   import §[!]§.§ !#§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §;!>§ extends §,!E§
   {
      
      public static const §"!s§:String = "load";
      
      public static var §;!8§:uint = 4000;
       
      
      private var §6!3§:Boolean = false;
      
      private var §8!]§:uint;
      
      private var §!!+§:Boolean = false;
      
      public var § !+§:XML;
      
      public var §[!H§:XML;
      
      public var §3!s§:DisplayObjectContainer;
      
      private var §'O§:String;
      
      private var §1q§:String;
      
      public function §;!>§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§'O§ = param4;
         this.§1q§ = param5;
         super(param1,param2);
         §#!B§ = true;
         §;!8§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §^"§.init(§+!0§("connectionProfileId"));
         if(!§ !#§.§7!j§.§ L§())
         {
            § !#§.§7!j§.init(§^"§.§07§(),this.§'O§,this.§1q§,null);
         }
         §6k§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§3!s§ = param1;
      }
      
      public function §"!_§(param1:XML) : void
      {
         this.§ !+§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §2O§.addChild(this.§3!s§);
         this.setLoadingPercentage(0);
         this.§8!]§ = getTimer();
      }
      
      private function § z§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§ !#§.§7!j§.§'!P§())
         {
            for each(_loc1_ in this.§ !+§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  § !#§.§7!j§.§]!4§(_loc1_);
               }
            }
            for each(_loc2_ in this.§ !+§.packages.pack)
            {
               § !#§.§7!j§.§]!4§(_loc2_);
            }
            § !#§.§7!j§.§=g§(this.§2W§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§!!+§ && this.§ z§())
         {
            this.§!!+§ = true;
         }
         var _loc3_:Number = Math.min(1,§ !#§.§7!j§.§7G§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§8!]§) / §;!8§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§ !#§.§7!j§.§7G§() >= 1)
         {
            § !#§.§7!j§.§=p§();
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §2O§.removeChild(this.§3!s§);
         this.§3!s§ = null;
         super.cleanup();
      }
      
      private function §2W§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§3!s§)
         {
            this.§3!s§.x = param1 - this.§3!s§.width >> 1;
            this.§3!s§.y = param2 - this.§3!s§.height >> 1;
         }
      }
   }
}
