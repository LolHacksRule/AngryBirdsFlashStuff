package §`<§
{
   import §#!2§.§0T§;
   import §?[§.§7f§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §;a§ extends §,!6§
   {
      
      public static const §`%§:String = "load";
      
      public static var §<!0§:uint = 4000;
       
      
      private var §94§:Boolean = false;
      
      private var §!!@§:uint;
      
      private var §[y§:Boolean = false;
      
      public var §6n§:XML;
      
      public var § @§:XML;
      
      public var include:DisplayObjectContainer;
      
      private var §8!4§:String;
      
      private var § $§:String;
      
      public function §;a§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§8!4§ = param4;
         this.§ $§ = param5;
         super(param1,param2);
         §8H§ = true;
         §<!0§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §0T§.init(§`e§("connectionProfileId"));
         if(!§7f§.§5!B§.§5!#§())
         {
            §7f§.§5!B§.init(§0T§.§@!&§(),this.§8!4§,this.§ $§,null);
         }
         §;k§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.include = param1;
      }
      
      public function §&^§(param1:XML) : void
      {
         this.§6n§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §+x§.addChild(this.include);
         this.setLoadingPercentage(0);
         this.§!!@§ = getTimer();
      }
      
      private function dynamic() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§7f§.§5!B§.§&o§())
         {
            for each(_loc1_ in this.§6n§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §7f§.§5!B§.§!E§(_loc1_);
               }
            }
            for each(_loc2_ in this.§6n§.packages.pack)
            {
               §7f§.§5!B§.§!E§(_loc2_);
            }
            §7f§.§5!B§.§[V§(this.§@H§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§[y§ && this.dynamic())
         {
            this.§[y§ = true;
         }
         var _loc3_:Number = Math.min(1,§7f§.§5!B§.§;O§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§!!@§) / §<!0§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§7f§.§5!B§.§;O§() >= 1)
         {
            §7f§.§5!B§.§`7§();
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §+x§.removeChild(this.include);
         this.include = null;
         super.cleanup();
      }
      
      private function §@H§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.include.getChildByName("Bar") as MovieClip).totalFrames;
         (this.include.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.include)
         {
            this.include.x = param1 - this.include.width >> 1;
            this.include.y = param2 - this.include.height >> 1;
         }
      }
   }
}
