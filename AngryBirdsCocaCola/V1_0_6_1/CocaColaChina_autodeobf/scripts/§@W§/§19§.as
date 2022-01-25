package §@W§
{
   import §<!T§.§^!]§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   import §set §.§[!;§;
   
   public class §19§ extends §2!_§
   {
      
      public static const §^!O§:String = "load";
      
      public static var §#!4§:uint = 4000;
       
      
      private var §#Z§:Boolean = false;
      
      private var §5C§:uint;
      
      private var §4O§:Boolean = false;
      
      public var §6?§:XML;
      
      public var §0!?§:XML;
      
      public var §0L§:DisplayObjectContainer;
      
      private var §?-§:String;
      
      private var §=]§:String;
      
      public function §19§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§?-§ = param4;
         this.§=]§ = param5;
         super(param1,param2);
         §#i§ = true;
         §#!4§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §[!;§.init(getApplicationParameter("connectionProfileId"));
         if(!§^!]§.§0%§.§"-§())
         {
            §^!]§.§0%§.init(§[!;§.§#!O§(),this.§?-§,this.§=]§,null);
         }
         §;t§(true);
      }
      
      public function §`F§(param1:DisplayObjectContainer) : void
      {
         this.§0L§ = param1;
      }
      
      public function §3!#§(param1:XML) : void
      {
         this.§6?§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §1!?§.addChild(this.§0L§);
         this.setLoadingPercentage(0);
         this.§5C§ = getTimer();
      }
      
      private function §]x§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§^!]§.§0%§.§%L§())
         {
            for each(_loc1_ in this.§6?§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §^!]§.§0%§.§#!6§(_loc1_);
               }
            }
            for each(_loc2_ in this.§6?§.packages.pack)
            {
               §^!]§.§0%§.§#!6§(_loc2_);
            }
            §^!]§.§0%§.§[!P§(this.§2l§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§4O§ && this.§]x§())
         {
            this.§4O§ = true;
         }
         var _loc3_:Number = Math.min(1,§^!]§.§0%§.§0!-§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§5C§) / §#!4§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§^!]§.§0%§.§0!-§() >= 1)
         {
            §^!]§.§0%§.§`!b§();
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §1!?§.removeChild(this.§0L§);
         this.§0L§ = null;
         super.cleanup();
      }
      
      private function §2l§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§0L§)
         {
            this.§0L§.x = param1 - this.§0L§.width >> 1;
            this.§0L§.y = param2 - this.§0L§.height >> 1;
         }
      }
   }
}
