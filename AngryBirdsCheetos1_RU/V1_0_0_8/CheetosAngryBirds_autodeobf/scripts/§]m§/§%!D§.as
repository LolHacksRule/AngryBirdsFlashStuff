package §]m§
{
   import §3P§.§-!3§;
   import §4!W§.§]H§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §%!D§ extends §-D§
   {
      
      public static const §7!Q§:String = "load";
      
      public static var §>!5§:uint = 4000;
       
      
      private var §9E§:Boolean = false;
      
      private var §]!Y§:uint;
      
      private var §&C§:Boolean = false;
      
      public var §6!J§:XML;
      
      public var §1!-§:XML;
      
      public var §1V§:DisplayObjectContainer;
      
      private var §#![§:String;
      
      private var §@!P§:String;
      
      public function §%!D§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§#![§ = param4;
         this.§@!P§ = param5;
         super(param1,param2);
         §1!]§ = true;
         §>!5§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §]H§.init(§]!I§("connectionProfileId"));
         if(!§-!3§.§!!8§.§>!N§())
         {
            §-!3§.§!!8§.init(§]H§.§,I§(),this.§#![§,this.§@!P§,null);
         }
         §,J§(true);
      }
      
      public function §8!-§(param1:DisplayObjectContainer) : void
      {
         this.§1V§ = param1;
      }
      
      public function §7!4§(param1:XML) : void
      {
         this.§6!J§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`K§.addChild(this.§1V§);
         this.setLoadingPercentage(0);
         this.§]!Y§ = getTimer();
      }
      
      private function §5'§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§-!3§.§!!8§.§]R§())
         {
            for each(_loc1_ in this.§6!J§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §-!3§.§!!8§.§+T§(_loc1_);
               }
            }
            for each(_loc2_ in this.§6!J§.packages.pack)
            {
               §-!3§.§!!8§.§+T§(_loc2_);
            }
            §-!3§.§!!8§.§9!M§(this.§=h§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§&C§ && this.§5'§())
         {
            this.§&C§ = true;
         }
         var _loc3_:Number = Math.min(1,§-!3§.§!!8§.§@!1§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§]!Y§) / §>!5§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§-!3§.§!!8§.§@!1§() >= 1)
         {
            §-!3§.§!!8§.§"#§();
            return §-D§.STATE_STATUS_COMPLETED;
         }
         return §-D§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §`K§.removeChild(this.§1V§);
         this.§1V§ = null;
         super.cleanup();
      }
      
      private function §=h§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§1V§)
         {
            this.§1V§.x = param1 - this.§1V§.width >> 1;
            this.§1V§.y = param2 - this.§1V§.height >> 1;
         }
      }
   }
}
