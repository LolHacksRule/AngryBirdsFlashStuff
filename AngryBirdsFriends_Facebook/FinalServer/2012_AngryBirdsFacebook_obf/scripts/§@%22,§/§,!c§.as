package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §;n§.§^!;§;
   import §=#§.§5!S§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §,!c§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const §9!1§:Number = 6000;
       
      
      private var §4!X§:Number = -1;
      
      private var §8"H§:MovieClip = null;
      
      public function §,!c§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §>"5§.§6s§("MovieClip_Animation");
         this.§8"H§ = new _loc1_();
         §2!K§.addChild(this.§8"H§);
         this.§8"H§.scaleY = 1.3;
         this.§8"H§.scaleX = 1.3;
         this.§8"H§.x = (1024 - 1024 * 1.3) / 2;
         this.§8"H§.y = (768 - 768 * 1.3) / 2;
         this.§4!X§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§8"H§.currentFrame == this.§8"H§.totalFrames)
         {
            mNextState = §5"7§.STATE_NAME;
         }
         if(mNextState.length > 0)
         {
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
