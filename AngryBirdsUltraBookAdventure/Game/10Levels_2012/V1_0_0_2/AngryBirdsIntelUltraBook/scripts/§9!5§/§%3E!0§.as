package §9!5§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §>!0§ extends §?Y§
   {
      
      public static const §?h§:String = "FlashGoes11State";
      
      public static const § !x§:Number = 6000;
       
      
      private var §^![§:Number = -1;
      
      private var §8x§:MovieClip = null;
      
      public function §>!0§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §%!G§.§^!B§("MovieClip_Animation");
         this.§8x§ = new _loc1_();
         §5!P§.addChild(this.§8x§);
         this.§8x§.scaleY = 1.3;
         this.§8x§.scaleX = 1.3;
         this.§8x§.x = (1024 - 1024 * 1.3) / 2;
         this.§8x§.y = (768 - 768 * 1.3) / 2;
         this.§^![§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§8x§.currentFrame == this.§8x§.totalFrames)
         {
            mNextState = §!i§.§?h§;
         }
         if(mNextState.length > 0)
         {
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§?h§;
         }
      }
   }
}
