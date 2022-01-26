package §?!F§
{
   import §4!4§.§'2§;
   import §9U§.§]!W§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §&!L§ extends §0!Y§
   {
      
      public static const §1o§:String = "load";
      
      public static var §^N§:uint = 4000;
       
      
      private var §=r§:Boolean = false;
      
      private var §4R§:uint;
      
      private var §1!Z§:Boolean = false;
      
      public var §;!8§:XML;
      
      public var §<!K§:XML;
      
      public var §&!9§:DisplayObjectContainer;
      
      private var §3c§:String;
      
      private var §6!R§:String;
      
      public function §&!L§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§3c§ = param4;
         this.§6!R§ = param5;
         super(param1,param2);
         §-!-§ = true;
         §^N§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §]!W§.init(§+E§("connectionProfileId"));
         if(!§'2§.§[P§.§4@§())
         {
            §'2§.§[P§.init(§]!W§.§14§(),this.§3c§,this.§6!R§,null);
         }
         §`!U§(true);
      }
      
      public function §8!?§(param1:DisplayObjectContainer) : void
      {
         this.§&!9§ = param1;
      }
      
      public function §@<§(param1:XML) : void
      {
         this.§;!8§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §0!5§.addChild(this.§&!9§);
         this.setLoadingPercentage(0);
         this.§4R§ = getTimer();
      }
      
      private function §-!D§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§'2§.§[P§.§8Q§())
         {
            for each(_loc1_ in this.§;!8§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §'2§.§[P§.§[!T§(_loc1_);
               }
            }
            for each(_loc2_ in this.§;!8§.packages.pack)
            {
               §'2§.§[P§.§[!T§(_loc2_);
            }
            §'2§.§[P§.§;o§(this.§0!M§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§1!Z§ && this.§-!D§())
         {
            this.§1!Z§ = true;
         }
         var _loc3_:Number = Math.min(1,§'2§.§[P§.§"!H§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§4R§) / §^N§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§'2§.§[P§.§"!H§() >= 1)
         {
            §'2§.§[P§.§6!C§();
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §0!5§.removeChild(this.§&!9§);
         this.§&!9§ = null;
         super.cleanup();
      }
      
      private function §0!M§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§&!9§)
         {
            this.§&!9§.x = param1 - this.§&!9§.width >> 1;
            this.§&!9§.y = param2 - this.§&!9§.height >> 1;
         }
      }
   }
}
