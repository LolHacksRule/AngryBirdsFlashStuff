package §-H§
{
   import §9!=§.§[!6§;
   import §?p§.§@d§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §@!-§ extends §&c§
   {
      
      public static const §9!P§:String = "load";
      
      public static var §#!,§:uint = 4000;
       
      
      private var §9Q§:Boolean = false;
      
      private var §#!P§:uint;
      
      private var §&K§:Boolean = false;
      
      public var §!J§:XML;
      
      public var §;!M§:XML;
      
      public var §2L§:DisplayObjectContainer;
      
      private var §7!E§:String;
      
      private var §",§:String;
      
      public function §@!-§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§7!E§ = param4;
         this.§",§ = param5;
         super(param1,param2);
         §=!I§ = true;
         §#!,§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §[!6§.init(§ !%§("connectionProfileId"));
         if(!§@d§.§%!O§.§&"§())
         {
            §@d§.§%!O§.init(§[!6§.§]Z§(),this.§7!E§,this.§",§,null);
         }
         §^!A§(true);
      }
      
      public function §3!U§(param1:DisplayObjectContainer) : void
      {
         this.§2L§ = param1;
      }
      
      public function §<!!§(param1:XML) : void
      {
         this.§!J§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §?!N§.addChild(this.§2L§);
         this.setLoadingPercentage(0);
         this.§#!P§ = getTimer();
      }
      
      private function §1!J§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§@d§.§%!O§.§@K§())
         {
            for each(_loc1_ in this.§!J§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §@d§.§%!O§.§%!9§(_loc1_);
               }
            }
            for each(_loc2_ in this.§!J§.packages.pack)
            {
               §@d§.§%!O§.§%!9§(_loc2_);
            }
            §@d§.§%!O§.§;z§(this.§'@§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§&K§ && this.§1!J§())
         {
            this.§&K§ = true;
         }
         var _loc3_:Number = Math.min(1,§@d§.§%!O§.§ O§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§#!P§) / §#!,§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§@d§.§%!O§.§ O§() >= 1)
         {
            §@d§.§%!O§.§3T§();
            return §&c§.STATE_STATUS_COMPLETED;
         }
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §?!N§.removeChild(this.§2L§);
         this.§2L§ = null;
         super.cleanup();
      }
      
      private function §'@§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§2L§)
         {
            this.§2L§.x = param1 - this.§2L§.width >> 1;
            this.§2L§.y = param2 - this.§2L§.height >> 1;
         }
      }
   }
}
