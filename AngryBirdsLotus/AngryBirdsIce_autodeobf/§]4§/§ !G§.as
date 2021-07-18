package §]4§
{
   import §&N§.§[-§;
   import §'V§.§>!8§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class § !G§ extends §-§
   {
      
      public static const §?B§:String = "load";
      
      public static var §;P§:uint = 4000;
       
      
      private var §8!D§:Boolean = false;
      
      private var §?!D§:uint;
      
      private var §]2§:Boolean = false;
      
      public var §;q§:XML;
      
      public var §>!'§:XML;
      
      public var §=Z§:DisplayObjectContainer;
      
      private var §@3§:String;
      
      private var §!!1§:String;
      
      public function § !G§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§@3§ = param4;
         this.§!!1§ = param5;
         super(param1,param2);
         §%3§ = true;
         §;P§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §[-§.init(§8!1§("connectionProfileId"));
         if(!§>!8§.§[8§.§73§())
         {
            §>!8§.§[8§.init(§[-§.§]B§(),this.§@3§,this.§!!1§,null);
         }
         §?y§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§=Z§ = param1;
      }
      
      public function §=T§(param1:XML) : void
      {
         this.§;q§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §1-§.addChild(this.§=Z§);
         this.setLoadingPercentage(0);
         this.§?!D§ = getTimer();
      }
      
      private function §;y§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§>!8§.§[8§.§9R§())
         {
            for each(_loc1_ in this.§;q§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §>!8§.§[8§.§34§(_loc1_);
               }
            }
            for each(_loc2_ in this.§;q§.packages.pack)
            {
               §>!8§.§[8§.§34§(_loc2_);
            }
            §>!8§.§[8§.§&q§(this.§<]§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§]2§ && this.§;y§())
         {
            this.§]2§ = true;
         }
         var _loc3_:Number = Math.min(1,§>!8§.§[8§.§^1§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§?!D§) / §;P§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§>!8§.§[8§.§^1§() >= 1)
         {
            §>!8§.§[8§.§2O§();
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §1-§.removeChild(this.§=Z§);
         this.§=Z§ = null;
         super.cleanup();
      }
      
      private function §<]§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§=Z§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§=Z§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§=Z§)
         {
            this.§=Z§.x = param1 - this.§=Z§.width >> 1;
            this.§=Z§.y = param2 - this.§=Z§.height >> 1;
         }
      }
   }
}
