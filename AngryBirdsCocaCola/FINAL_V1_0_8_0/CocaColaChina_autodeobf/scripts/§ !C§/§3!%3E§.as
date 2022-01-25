package § !C§
{
   import § try§.§=h§;
   import §#!&§.§?u§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §3!>§ extends §6!W§
   {
      
      public static const § !P§:String = "load";
      
      public static var §[!`§:uint = 4000;
       
      
      private var §&>§:Boolean = false;
      
      private var §>"§:uint;
      
      private var § !3§:Boolean = false;
      
      public var §9"§:XML;
      
      public var §%!0§:XML;
      
      public var §+!a§:DisplayObjectContainer;
      
      private var §0!W§:String;
      
      private var §#%§:String;
      
      public function §3!>§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§0!W§ = param4;
         this.§#%§ = param5;
         super(param1,param2);
         §#"§ = true;
         §[!`§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §?u§.init(getApplicationParameter("connectionProfileId"));
         if(!§=h§.§]!D§.§6!Y§())
         {
            §=h§.§]!D§.init(§?u§.§-g§(),this.§0!W§,this.§#%§,null);
         }
         §8h§(true);
      }
      
      public function §4b§(param1:DisplayObjectContainer) : void
      {
         this.§+!a§ = param1;
      }
      
      public function §@[§(param1:XML) : void
      {
         this.§9"§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §@!Y§.addChild(this.§+!a§);
         this.setLoadingPercentage(0);
         this.§>"§ = getTimer();
      }
      
      private function §[+§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§=h§.§]!D§.§'!9§())
         {
            for each(_loc1_ in this.§9"§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §=h§.§]!D§.§4!V§(_loc1_);
               }
            }
            for each(_loc2_ in this.§9"§.packages.pack)
            {
               §=h§.§]!D§.§4!V§(_loc2_);
            }
            §=h§.§]!D§.§=b§(this.§-s§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§ !3§ && this.§[+§())
         {
            this.§ !3§ = true;
         }
         var _loc3_:Number = Math.min(1,§=h§.§]!D§.§`=§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§>"§) / §[!`§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§=h§.§]!D§.§`=§() >= 1)
         {
            §=h§.§]!D§.§+L§();
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §@!Y§.removeChild(this.§+!a§);
         this.§+!a§ = null;
         super.cleanup();
      }
      
      private function §-s§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§+!a§)
         {
            this.§+!a§.x = param1 - this.§+!a§.width >> 1;
            this.§+!a§.y = param2 - this.§+!a§.height >> 1;
         }
      }
   }
}
