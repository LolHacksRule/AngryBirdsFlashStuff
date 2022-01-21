package §7E§
{
   import §-$§.§!!h§;
   import §=!m§.§4T§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §&]§ extends § =§
   {
      
      public static const §[!1§:String = "load";
      
      public static var §,3§:uint = 4000;
       
      
      private var §]=§:Boolean = false;
      
      private var §6!-§:uint;
      
      private var §0!E§:Boolean = false;
      
      public var §;8§:XML;
      
      public var §%s§:XML;
      
      public var §-8§:DisplayObjectContainer;
      
      private var §`!U§:String;
      
      private var §,!p§:String;
      
      public function §&]§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§`!U§ = param4;
         this.§,!p§ = param5;
         super(param1,param2);
         get = true;
         §,3§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §4T§.init(§56§("connectionProfileId"));
         if(!§!!h§.§9$§.§^+§())
         {
            §!!h§.§9$§.init(§4T§.§^n§(),this.§`!U§,this.§,!p§,null);
         }
         § !_§(true);
      }
      
      public function §7^§(param1:DisplayObjectContainer) : void
      {
         this.§-8§ = param1;
      }
      
      public function §9!1§(param1:XML) : void
      {
         this.§;8§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §#Y§.addChild(this.§-8§);
         this.setLoadingPercentage(0);
         this.§6!-§ = getTimer();
      }
      
      private function §1>§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§!!h§.§9$§.§]!V§())
         {
            for each(_loc1_ in this.§;8§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §!!h§.§9$§.§?!F§(_loc1_);
               }
            }
            for each(_loc1_ in this.§;8§.libraries.library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §!!h§.§9$§.§?!F§(_loc1_);
               }
            }
            for each(_loc2_ in this.§;8§.packages.pack)
            {
               §!!h§.§9$§.§?!F§(_loc2_);
            }
            §!!h§.§9$§.§?2§(this.§5!T§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§0!E§ && this.§1>§())
         {
            this.§0!E§ = true;
         }
         var _loc3_:Number = Math.min(1,§!!h§.§9$§.§<!Z§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§6!-§) / §,3§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§!!h§.§9$§.§<!Z§() >= 1)
         {
            §!!h§.§9$§.§=a§();
            return § =§.STATE_STATUS_COMPLETED;
         }
         return § =§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §#Y§.removeChild(this.§-8§);
         this.§-8§ = null;
         super.cleanup();
      }
      
      private function §5!T§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§-8§)
         {
            this.§-8§.x = param1 - this.§-8§.width >> 1;
            this.§-8§.y = param2 - this.§-8§.height >> 1;
         }
      }
   }
}
