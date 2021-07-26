package §=#§
{
   import §9!I§.§6!J§;
   import §[!-§.§4-§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §`!@§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §4`§:uint = 4000;
       
      
      private var §4"6§:Boolean = false;
      
      private var §8f§:uint;
      
      private var §,f§:Boolean = false;
      
      public var §<U§:XML;
      
      public var §=7§:XML;
      
      public var §&!r§:DisplayObjectContainer;
      
      protected var §-!-§:String;
      
      protected var §"0§:String;
      
      public function §`!@§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§-!-§ = param4;
         this.§"0§ = param5;
         super(param1,param2);
         §2!C§ = true;
         §4`§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §4-§.init(§4n§("connectionProfileId"));
         if(!§6!J§.§1[§.§?"B§())
         {
            this.§&!$§();
         }
         §["G§(true);
      }
      
      protected function §&!$§() : void
      {
         §6!J§.§1[§.init(§4-§.§ 5§(),this.§-!-§,this.§"0§,null);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§&!r§ = param1;
      }
      
      public function §=!v§(param1:XML) : void
      {
         this.§<U§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`b§.addChild(this.§&!r§);
         this.setLoadingPercentage(0);
         this.§8f§ = getTimer();
      }
      
      private function §@!v§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(§6!J§.§1[§.§@!%§())
         {
            for each(_loc1_ in this.§<U§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §6!J§.§1[§.§1!u§(_loc1_);
               }
            }
            for each(_loc1_ in this.§<U§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §6!J§.§1[§.§1!u§(_loc1_);
               }
            }
            for each(_loc2_ in this.§<U§.config.xml)
            {
               §6!J§.§1[§.§1!u§(_loc2_);
            }
            for each(_loc3_ in this.§<U§.packages.pack)
            {
               §6!J§.§1[§.§1!u§(_loc3_);
            }
            §6!J§.§1[§.§;!'§(this.§-"L§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§,f§ && this.§@!v§())
         {
            this.§,f§ = true;
         }
         var _loc3_:Number = Math.min(1,§6!J§.§1[§.§;"$§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§8f§) / §4`§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§6!J§.§1[§.§;"$§() >= 1)
         {
            §6!J§.§1[§.§8,§();
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §`b§.removeChild(this.§&!r§);
         this.§&!r§ = null;
         super.cleanup();
      }
      
      private function §-"L§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§&!r§)
         {
            this.§&!r§.x = param1 - this.§&!r§.width >> 1;
            this.§&!r§.y = param2 - this.§&!r§.height >> 1;
         }
      }
   }
}
