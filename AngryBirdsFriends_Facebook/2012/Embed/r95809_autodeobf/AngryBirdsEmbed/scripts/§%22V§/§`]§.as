package §"V§
{
   import §9S§.§!!§;
   import §^<§.§`p§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §`]§ extends §true§
   {
      
      public static const §4!&§:String = "load";
      
      public static var §9Q§:uint = 4000;
       
      
      private var § H§:Boolean = false;
      
      private var §,!@§:uint;
      
      private var § 2§:Boolean = false;
      
      public var §]u§:XML;
      
      public var §7!;§:XML;
      
      public var §&! §:DisplayObjectContainer;
      
      private var §9!4§:String;
      
      private var §6Z§:String;
      
      public function §`]§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§9!4§ = param4;
         this.§6Z§ = param5;
         super(param1,param2);
         §"l§ = true;
         §9Q§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §`p§.init(§`!&§("connectionProfileId"));
         if(!§!!§.§^7§.§>k§())
         {
            §!!§.§^7§.init(§`p§.§8Y§(),this.§9!4§,this.§6Z§,null);
         }
         §?!$§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§&! § = param1;
      }
      
      public function §-Q§(param1:XML) : void
      {
         this.§]u§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'M§.addChild(this.§&! §);
         this.setLoadingPercentage(0);
         this.§,!@§ = getTimer();
      }
      
      private function §62§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§!!§.§^7§.§+H§())
         {
            for each(_loc1_ in this.§]u§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §!!§.§^7§.§`G§(_loc1_);
               }
            }
            for each(_loc2_ in this.§]u§.packages.pack)
            {
               §!!§.§^7§.§`G§(_loc2_);
            }
            §!!§.§^7§.§3S§(this.§1!2§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§ 2§ && this.§62§())
         {
            this.§ 2§ = true;
         }
         var _loc3_:Number = Math.min(1,§!!§.§^7§.§"5§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§,!@§) / §9Q§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§!!§.§^7§.§"5§() >= 1)
         {
            §!!§.§^7§.§]!"§();
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §'M§.removeChild(this.§&! §);
         this.§&! § = null;
         super.cleanup();
      }
      
      private function §1!2§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§&! §.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§&! §.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§&! §)
         {
            this.§&! §.x = param1 - this.§&! §.width >> 1;
            this.§&! §.y = param2 - this.§&! §.height >> 1;
         }
      }
   }
}
