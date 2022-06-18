package §?7§
{
   import §"V§.§true§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§6!9§;
   import com.rovio.assets.§0v§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §+A§ extends §true§
   {
      
      public static const §4!&§:String = "FlashGoes11State";
      
      public static const §3!E§:Number = 6000;
       
      
      private var §;!5§:Number = -1;
      
      private var § d§:MovieClip = null;
      
      public function §+A§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §0v§.§#w§("MovieClip_Animation");
         this.§ d§ = new _loc1_();
         §6!$§.addChild(this.§ d§);
         this.§ d§.scaleY = 1.3;
         this.§ d§.scaleX = 1.3;
         this.§ d§.x = (1024 - 1024 * 1.3) / 2;
         this.§ d§.y = (768 - 768 * 1.3) / 2;
         this.§;!5§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§ d§.currentFrame == this.§ d§.totalFrames)
         {
            mNextState = §&M§.§4!&§;
         }
         if(mNextState.length > 0)
         {
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
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§4!&§;
         }
      }
   }
}
