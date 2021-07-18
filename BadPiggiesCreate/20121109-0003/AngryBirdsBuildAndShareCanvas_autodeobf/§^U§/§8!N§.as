package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §;<§.§'B§;
   import §@y§.§0=§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §8!N§ extends §'B§
   {
      
      public static const §%!Q§:String = "FlashGoes11State";
      
      public static const §=!A§:Number = 6000;
       
      
      private var §6L§:Number = -1;
      
      private var §,0§:MovieClip = null;
      
      public function §8!N§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §69§.§ 0§("MovieClip_Animation");
         this.§,0§ = new _loc1_();
         §`!v§.addChild(this.§,0§);
         this.§,0§.scaleY = 1.3;
         this.§,0§.scaleX = 1.3;
         this.§,0§.x = (1024 - 1024 * 1.3) / 2;
         this.§,0§.y = (768 - 768 * 1.3) / 2;
         this.§6L§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§,0§.currentFrame == this.§,0§.totalFrames)
         {
            mNextState = §7!X§.§%!Q§;
         }
         if(mNextState.length > 0)
         {
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§%!Q§;
         }
      }
   }
}
