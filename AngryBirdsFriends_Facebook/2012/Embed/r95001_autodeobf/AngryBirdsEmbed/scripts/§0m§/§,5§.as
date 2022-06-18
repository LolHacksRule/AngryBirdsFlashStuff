package §0m§
{
   import §`X§.§%!5§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   import §null §.§;i§;
   
   public class §,5§ extends §1!,§
   {
      
      public static const §5%§:String = "load";
      
      public static var §=p§:uint = 4000;
       
      
      private var §21§:Boolean = false;
      
      private var §=4§:uint;
      
      private var §`;§:Boolean = false;
      
      public var §]! §:XML;
      
      public var §5u§:XML;
      
      public var §'l§:DisplayObjectContainer;
      
      private var §'$§:String;
      
      private var §!! §:String;
      
      public function §,5§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§'$§ = param4;
         this.§!! § = param5;
         super(param1,param2);
         §6!#§ = true;
         §=p§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §%!5§.init(§`-§("connectionProfileId"));
         if(!§;i§.§+S§.§'7§())
         {
            §;i§.§+S§.init(§%!5§.§!&§(),this.§'$§,this.§!! §,null);
         }
         §,!6§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§'l§ = param1;
      }
      
      public function §<a§(param1:XML) : void
      {
         this.§]! § = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!!§.addChild(this.§'l§);
         this.setLoadingPercentage(0);
         this.§=4§ = getTimer();
      }
      
      private function §+G§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§;i§.§+S§.§if§())
         {
            for each(_loc1_ in this.§]! §.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §;i§.§+S§.§'O§(_loc1_);
               }
            }
            for each(_loc2_ in this.§]! §.packages.pack)
            {
               §;i§.§+S§.§'O§(_loc2_);
            }
            §;i§.§+S§.§-Y§(this.§1!+§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§`;§ && this.§+G§())
         {
            this.§`;§ = true;
         }
         var _loc3_:Number = Math.min(1,§;i§.§+S§.§!M§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§=4§) / §=p§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§;i§.§+S§.§!M§() >= 1)
         {
            §;i§.§+S§.§<!8§();
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §8!!§.removeChild(this.§'l§);
         this.§'l§ = null;
         super.cleanup();
      }
      
      private function §1!+§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§'l§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§'l§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§'l§)
         {
            this.§'l§.x = param1 - this.§'l§.width >> 1;
            this.§'l§.y = param2 - this.§'l§.height >> 1;
         }
      }
   }
}
