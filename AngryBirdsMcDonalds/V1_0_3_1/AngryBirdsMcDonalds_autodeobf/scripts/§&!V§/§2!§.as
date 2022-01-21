package §&!V§
{
   import §"J§.§0I§;
   import §%!B§.§`+§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §2!§ extends §=O§
   {
      
      public static const §<@§:String = "load";
      
      public static var §2]§:uint = 4000;
       
      
      private var §6!k§:Boolean = false;
      
      private var §`h§:uint;
      
      private var §5B§:Boolean = false;
      
      public var §9e§:XML;
      
      public var §#!d§:XML;
      
      public var §;!h§:DisplayObjectContainer;
      
      private var §%!!§:String;
      
      private var §9`§:String;
      
      public function §2!§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§%!!§ = param4;
         this.§9`§ = param5;
         super(param1,param2);
         §2!^§ = true;
         §2]§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §`+§.init(§7#§("connectionProfileId"));
         if(!§0I§.§@!7§.§9p§())
         {
            §0I§.§@!7§.init(§`+§.§-!%§(),this.§%!!§,this.§9`§,null);
         }
         §@!f§(true);
      }
      
      public function §`!R§(param1:DisplayObjectContainer) : void
      {
         this.§;!h§ = param1;
      }
      
      public function §]!I§(param1:XML) : void
      {
         this.§9e§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §7U§.addChild(this.§;!h§);
         this.setLoadingPercentage(0);
         this.§`h§ = getTimer();
      }
      
      private function §!!b§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§0I§.§@!7§.§0!J§())
         {
            for each(_loc1_ in this.§9e§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §0I§.§@!7§.§+;§(_loc1_);
               }
            }
            for each(_loc1_ in this.§9e§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §0I§.§@!7§.§+;§(_loc1_);
               }
            }
            for each(_loc2_ in this.§9e§.packages.pack)
            {
               §0I§.§@!7§.§+;§(_loc2_);
            }
            §0I§.§@!7§.§8G§(this.§?p§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§5B§ && this.§!!b§())
         {
            this.§5B§ = true;
         }
         var _loc3_:Number = Math.min(1,§0I§.§@!7§.§&!+§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§`h§) / §2]§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§0I§.§@!7§.§&!+§() >= 1)
         {
            §0I§.§@!7§.§'!§();
            return §=O§.STATE_STATUS_COMPLETED;
         }
         return §=O§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §7U§.removeChild(this.§;!h§);
         this.§;!h§ = null;
         super.cleanup();
      }
      
      private function §?p§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§;!h§)
         {
            this.§;!h§.x = param1 - this.§;!h§.width >> 1;
            this.§;!h§.y = param2 - this.§;!h§.height >> 1;
         }
      }
   }
}
