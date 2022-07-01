package §""6§
{
   import §+!d§.§6=§;
   import §2!O§.§,w§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §4b§ extends §,w§
   {
      
      public static const §^z§:String = "FlashGoes11State";
      
      public static const §?!8§:Number = 6000;
       
      
      private var §3A§:Number = -1;
      
      private var §5O§:MovieClip = null;
      
      public function §4b§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §]!S§.§?! §("MovieClip_Animation");
         this.§5O§ = new _loc1_();
         §%""§.addChild(this.§5O§);
         this.§5O§.scaleY = 1.3;
         this.§5O§.scaleX = 1.3;
         this.§5O§.x = (1024 - 1024 * 1.3) / 2;
         this.§5O§.y = (768 - 768 * 1.3) / 2;
         this.§3A§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§5O§.currentFrame == this.§5O§.totalFrames)
         {
            mNextState = §;!U§.§^z§;
         }
         if(mNextState.length > 0)
         {
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§^z§;
         }
      }
   }
}
