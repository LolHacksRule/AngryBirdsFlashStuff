package §<!P§
{
   import §%!1§.§%E§;
   import §^![§.§#!F§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §[!6§ extends §>l§
   {
      
      public static const §]U§:String = "load";
      
      public static var §;!I§:uint = 4000;
       
      
      private var §^w§:Boolean = false;
      
      private var §+!]§:uint;
      
      private var §+!$§:Boolean = false;
      
      public var §#!-§:XML;
      
      public var §-[§:XML;
      
      public var §"<§:DisplayObjectContainer;
      
      private var §7!E§:String;
      
      private var §9N§:String;
      
      public function §[!6§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§7!E§ = param4;
         this.§9N§ = param5;
         super(param1,param2);
         §^[§ = true;
         §;!I§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §%E§.init(§^U§("connectionProfileId"));
         if(!§#!F§.§!5§.§ !!§())
         {
            §#!F§.§!5§.init(§%E§.§#1§(),this.§7!E§,this.§9N§,null);
         }
         §?!,§(true);
      }
      
      public function §7!-§(param1:DisplayObjectContainer) : void
      {
         this.§"<§ = param1;
      }
      
      public function §6l§(param1:XML) : void
      {
         this.§#!-§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §3!F§.addChild(this.§"<§);
         this.setLoadingPercentage(0);
         this.§+!]§ = getTimer();
      }
      
      private function §8P§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§#!F§.§!5§.§&!`§())
         {
            for each(_loc1_ in this.§#!-§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §#!F§.§!5§.§4f§(_loc1_);
               }
            }
            for each(_loc2_ in this.§#!-§.packages.pack)
            {
               §#!F§.§!5§.§4f§(_loc2_);
            }
            §#!F§.§!5§.§<3§(this.§-!R§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§+!$§ && this.§8P§())
         {
            this.§+!$§ = true;
         }
         var _loc3_:Number = Math.min(1,§#!F§.§!5§.§&b§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§+!]§) / §;!I§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§#!F§.§!5§.§&b§() >= 1)
         {
            §#!F§.§!5§.§#a§();
            return §>l§.STATE_STATUS_COMPLETED;
         }
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §3!F§.removeChild(this.§"<§);
         this.§"<§ = null;
         super.cleanup();
      }
      
      private function §-!R§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§"<§)
         {
            this.§"<§.x = param1 - this.§"<§.width >> 1;
            this.§"<§.y = param2 - this.§"<§.height >> 1;
         }
      }
   }
}
