package § true§
{
   import §<!A§.§,!?§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§;!6§;
   import com.rovio.assets.§%!?§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §&^§ extends §,!?§
   {
      
      public static const §`W§:String = "FlashGoes11State";
      
      public static const §7L§:Number = 6000;
       
      
      private var §2C§:Number = -1;
      
      private var §>A§:MovieClip = null;
      
      public function §&^§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §%!?§.§4"§("MovieClip_Animation");
         this.§>A§ = new _loc1_();
         §while§.addChild(this.§>A§);
         this.§>A§.scaleY = 1.3;
         this.§>A§.scaleX = 1.3;
         this.§>A§.x = (1024 - 1024 * 1.3) / 2;
         this.§>A§.y = (768 - 768 * 1.3) / 2;
         this.§2C§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§>A§.currentFrame == this.§>A§.totalFrames)
         {
            mNextState = §?,§.§`W§;
         }
         if(mNextState.length > 0)
         {
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§`W§;
         }
      }
   }
}
