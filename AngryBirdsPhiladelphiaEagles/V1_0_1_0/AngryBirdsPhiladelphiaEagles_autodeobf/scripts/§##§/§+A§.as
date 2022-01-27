package §##§
{
   import §'!N§.§%!E§;
   import §,!<§.§6!M§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import com.rovio.assets.§4D§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §+A§ extends §6!M§
   {
      
      public static const §=,§:String = "FlashGoes11State";
      
      public static const §0!8§:Number = 6000;
       
      
      private var §<S§:Number = -1;
      
      private var §3A§:MovieClip = null;
      
      public function §+A§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §4D§.§,!O§("MovieClip_Animation");
         this.§3A§ = new _loc1_();
         § §.addChild(this.§3A§);
         this.§3A§.scaleY = 1.3;
         this.§3A§.scaleX = 1.3;
         this.§3A§.x = (1024 - 1024 * 1.3) / 2;
         this.§3A§.y = (768 - 768 * 1.3) / 2;
         this.§<S§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§3A§.currentFrame == this.§3A§.totalFrames)
         {
            mNextState = §,r§.§=,§;
         }
         if(mNextState.length > 0)
         {
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§=,§;
         }
      }
   }
}
