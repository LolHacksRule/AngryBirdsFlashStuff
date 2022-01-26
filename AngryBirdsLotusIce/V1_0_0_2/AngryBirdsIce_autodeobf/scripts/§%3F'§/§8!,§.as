package §?'§
{
   import §87§.§2-§;
   import §87§.§]T§;
   import §`<§.§,!6§;
   import com.rovio.assets.§-!1§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   import §in§.§%K§;
   
   public class §8!,§ extends §,!6§
   {
      
      public static const §`%§:String = "FlashGoes11State";
      
      public static const §-K§:Number = 6000;
       
      
      private var §4a§:Number = -1;
      
      private var §6!E§:MovieClip = null;
      
      public function §8!,§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §-!1§.§-T§("MovieClip_Animation");
         this.§6!E§ = new _loc1_();
         §<o§.addChild(this.§6!E§);
         this.§6!E§.scaleY = 1.3;
         this.§6!E§.scaleX = 1.3;
         this.§6!E§.x = (1024 - 1024 * 1.3) / 2;
         this.§6!E§.y = (768 - 768 * 1.3) / 2;
         this.§4a§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§6!E§.currentFrame == this.§6!E§.totalFrames)
         {
            mNextState = § 1§.§`%§;
         }
         if(mNextState.length > 0)
         {
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
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§`%§;
         }
      }
   }
}
