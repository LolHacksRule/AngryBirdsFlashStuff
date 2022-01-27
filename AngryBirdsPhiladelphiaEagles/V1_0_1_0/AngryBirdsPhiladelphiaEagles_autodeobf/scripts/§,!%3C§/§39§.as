package §,!<§
{
   import §+T§.§@!?§;
   import §break§.§8!B§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §39§ extends §6!M§
   {
      
      public static const §=,§:String = "load";
      
      public static var §;e§:uint = 4000;
       
      
      private var §>o§:Boolean = false;
      
      private var §1@§:uint;
      
      private var §;!$§:Boolean = false;
      
      public var §5C§:XML;
      
      public var §8a§:XML;
      
      public var §3! §:DisplayObjectContainer;
      
      private var §8v§:String;
      
      private var §^!J§:String;
      
      public function §39§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§8v§ = param4;
         this.§^!J§ = param5;
         super(param1,param2);
         §%[§ = true;
         §;e§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §8!B§.init(§ D§("connectionProfileId"));
         if(!§@!?§.§4J§.§[!%§())
         {
            §@!?§.§4J§.init(§8!B§.§1Z§(),this.§8v§,this.§^!J§,null);
         }
         §]!D§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§3! § = param1;
      }
      
      public function §<^§(param1:XML) : void
      {
         this.§5C§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5+§.addChild(this.§3! §);
         this.setLoadingPercentage(0);
         this.§1@§ = getTimer();
      }
      
      private function §6<§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§@!?§.§4J§.§6!5§())
         {
            for each(_loc1_ in this.§5C§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §@!?§.§4J§.§>3§(_loc1_);
               }
            }
            for each(_loc2_ in this.§5C§.packages.pack)
            {
               §@!?§.§4J§.§>3§(_loc2_);
            }
            §@!?§.§4J§.§>`§(this.§58§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§;!$§ && this.§6<§())
         {
            this.§;!$§ = true;
         }
         var _loc3_:Number = Math.min(1,§@!?§.§4J§.§&!%§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§1@§) / §;e§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§@!?§.§4J§.§&!%§() >= 1)
         {
            §@!?§.§4J§.§7!G§();
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §5+§.removeChild(this.§3! §);
         this.§3! § = null;
         super.cleanup();
      }
      
      private function §58§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§3! §)
         {
            this.§3! §.x = param1 - this.§3! §.width >> 1;
            this.§3! §.y = param2 - this.§3! §.height >> 1;
         }
      }
   }
}
