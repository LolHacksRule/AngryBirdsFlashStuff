package §&h§
{
   import §,!A§.§+!2§;
   import §<-§.§]!%§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §-!B§ extends §+Y§
   {
      
      public static const §+!a§:String = "load";
      
      public static var §'!J§:uint = 4000;
       
      
      private var §0!6§:Boolean = false;
      
      private var §^`§:uint;
      
      private var §6!§:Boolean = false;
      
      public var §9N§:XML;
      
      public var §#!U§:XML;
      
      public var §7z§:DisplayObjectContainer;
      
      private var §7!V§:String;
      
      private var §0!L§:String;
      
      public function §-!B§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§7!V§ = param4;
         this.§0!L§ = param5;
         super(param1,param2);
         §%!W§ = true;
         §'!J§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§.init(§@O§("connectionProfileId"));
         if(!§]!%§.§%b§.§]!$§())
         {
            §]!%§.§%b§.init(§+!2§.§1! §(),this.§7!V§,this.§0!L§,null);
         }
         §-9§(true);
      }
      
      public function §]!K§(param1:DisplayObjectContainer) : void
      {
         this.§7z§ = param1;
      }
      
      public function § !K§(param1:XML) : void
      {
         this.§9N§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §;!5§.addChild(this.§7z§);
         this.setLoadingPercentage(0);
         this.§^`§ = getTimer();
      }
      
      private function §6=§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§]!%§.§%b§.§+Q§())
         {
            for each(_loc1_ in this.§9N§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §]!%§.§%b§.§#!7§(_loc1_);
               }
            }
            for each(_loc1_ in this.§9N§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §]!%§.§%b§.§#!7§(_loc1_);
               }
            }
            for each(_loc2_ in this.§9N§.packages.pack)
            {
               §]!%§.§%b§.§#!7§(_loc2_);
            }
            §]!%§.§%b§.§-!"§(this.§5x§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§6!§ && this.§6=§())
         {
            this.§6!§ = true;
         }
         var _loc3_:Number = Math.min(1,§]!%§.§%b§.§0!Q§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§^`§) / §'!J§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§]!%§.§%b§.§0!Q§() >= 1)
         {
            §]!%§.§%b§.§-n§();
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §;!5§.removeChild(this.§7z§);
         this.§7z§ = null;
         super.cleanup();
      }
      
      private function §5x§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§7z§)
         {
            this.§7z§.x = param1 - this.§7z§.width >> 1;
            this.§7z§.y = param2 - this.§7z§.height >> 1;
         }
      }
   }
}
