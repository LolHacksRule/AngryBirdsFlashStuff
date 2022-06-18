package §-!O§
{
   import §9g§.§<x§;
   import §@k§.§5!D§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §7!K§ extends §7'§
   {
      
      public static const §@B§:String = "load";
      
      public static var §1!V§:uint = 4000;
       
      
      private var §6Y§:Boolean = false;
      
      private var §8!A§:uint;
      
      private var §`V§:Boolean = false;
      
      public var §#!J§:XML;
      
      public var § m§:XML;
      
      public var §0b§:DisplayObjectContainer;
      
      private var §9Q§:String;
      
      private var §02§:String;
      
      public function §7!K§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§9Q§ = param4;
         this.§02§ = param5;
         super(param1,param2);
         §'!#§ = true;
         §1!V§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §5!D§.init(§8!Z§("connectionProfileId"));
         if(!§<x§.§0E§.§!!0§())
         {
            §<x§.§0E§.init(§5!D§.§9'§(),this.§9Q§,this.§02§,null);
         }
         §<U§(true);
      }
      
      public function §6;§(param1:DisplayObjectContainer) : void
      {
         this.§0b§ = param1;
      }
      
      public function §#_§(param1:XML) : void
      {
         this.§#!J§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §6`§.addChild(this.§0b§);
         this.setLoadingPercentage(0);
         this.§8!A§ = getTimer();
      }
      
      private function §]U§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§<x§.§0E§.§1w§())
         {
            for each(_loc1_ in this.§#!J§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §<x§.§0E§.§'p§(_loc1_);
               }
            }
            for each(_loc2_ in this.§#!J§.packages.pack)
            {
               §<x§.§0E§.§'p§(_loc2_);
            }
            §<x§.§0E§.§7M§(this.§;4§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§`V§ && this.§]U§())
         {
            this.§`V§ = true;
         }
         var _loc3_:Number = Math.min(1,§<x§.§0E§.§]!M§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§8!A§) / §1!V§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§<x§.§0E§.§]!M§() >= 1)
         {
            §<x§.§0E§.§"b§();
            return §7'§.STATE_STATUS_COMPLETED;
         }
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §6`§.removeChild(this.§0b§);
         this.§0b§ = null;
         super.cleanup();
      }
      
      private function §;4§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§0b§)
         {
            this.§0b§.x = param1 - this.§0b§.width >> 1;
            this.§0b§.y = param2 - this.§0b§.height >> 1;
         }
      }
   }
}
