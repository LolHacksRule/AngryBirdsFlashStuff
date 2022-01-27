package §>Y§
{
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§]_§;
   import §?!=§.§<!>§;
   import com.rovio.assets.§@h§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §<&§ extends §<!>§
   {
      
      public static const §4!C§:String = "FlashGoes11State";
      
      public static const §@S§:Number = 6000;
       
      
      private var §2!M§:Number = -1;
      
      private var §0+§:MovieClip = null;
      
      public function §<&§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §@h§.§[@§("MovieClip_Animation");
         this.§0+§ = new _loc1_();
         §3g§.addChild(this.§0+§);
         this.§0+§.scaleY = 1.3;
         this.§0+§.scaleX = 1.3;
         this.§0+§.x = (1024 - 1024 * 1.3) / 2;
         this.§0+§.y = (768 - 768 * 1.3) / 2;
         this.§2!M§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§0+§.currentFrame == this.§0+§.totalFrames)
         {
            mNextState = §>8§.§4!C§;
         }
         if(mNextState.length > 0)
         {
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§4!C§;
         }
      }
   }
}
