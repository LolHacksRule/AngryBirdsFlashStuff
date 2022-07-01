package §=!3§
{
   import §&!0§.§%!`§;
   import §7v§.§%!M§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §<!=§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §[!W§:uint = 4000;
       
      
      private var §?D§:Boolean = false;
      
      private var §,!8§:uint;
      
      private var §<!9§:Boolean = false;
      
      public var §-j§:XML;
      
      public var §[i§:XML;
      
      public var §^U§:DisplayObjectContainer;
      
      private var §]?§:String;
      
      private var §&V§:String;
      
      public function §<!=§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         this.§]?§ = param4;
         this.§&V§ = param5;
         super(param1,param2);
         §=u§ = true;
         §[!W§ = param3;
      }
      
      override public function init() : void
      {
         super.init();
         §%!`§.init(§ !<§("connectionProfileId"));
         if(!§%!M§.§`!t§.§7! §())
         {
            §%!M§.§`!t§.init(§%!`§.§[!6§(),this.§]?§,this.§&V§,null);
         }
         §5!e§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         this.§^U§ = param1;
      }
      
      public function §4f§(param1:XML) : void
      {
         this.§-j§ = param1;
      }
      
      override public function activate() : void
      {
         super.activate();
         §>E§.addChild(this.§^U§);
         this.setLoadingPercentage(0);
         this.§,!8§ = getTimer();
      }
      
      private function §;!l§() : Boolean
      {
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(§%!M§.§`!t§.§<C§())
         {
            for each(_loc1_ in this.§-j§.Library)
            {
               if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
               {
                  §%!M§.§`!t§.§^!K§(_loc1_);
               }
            }
            for each(_loc2_ in this.§-j§.packages.pack)
            {
               §%!M§.§`!t§.§^!K§(_loc2_);
            }
            §%!M§.§`!t§.§7S§(this.§9!m§);
            return true;
         }
         return false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§<!9§ && this.§;!l§())
         {
            this.§<!9§ = true;
         }
         var _loc3_:Number = Math.min(1,§%!M§.§`!t§.§ %§()) * 9;
         var _loc4_:Number = Math.min(1,(getTimer() - this.§,!8§) / §[!W§);
         var _loc5_:Number = (_loc3_ + _loc4_) / 10;
         this.setLoadingPercentage(_loc5_);
         if(§%!M§.§`!t§.§ %§() >= 1)
         {
            §%!M§.§`!t§.§`g§();
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         §>E§.removeChild(this.§^U§);
         this.§^U§ = null;
         super.cleanup();
      }
      
      private function §9!m§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:int = param1 * (this.§^U§.getChildByName("Bar") as MovieClip).totalFrames;
         (this.§^U§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         if(this.§^U§)
         {
            this.§^U§.x = param1 - this.§^U§.width >> 1;
            this.§^U§.y = param2 - this.§^U§.height >> 1;
         }
      }
   }
}
