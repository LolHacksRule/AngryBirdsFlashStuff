package §2x§
{
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§0p§;
   import §>!5§.§>!T§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class § !]§ extends §>!T§
   {
      
      public static const §>H§:String = "FlashGoes11State";
      
      public static const §9D§:Number = 6000;
       
      
      private var §;!x§:Number = -1;
      
      private var §&]§:MovieClip = null;
      
      public function § !]§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §=#§.§1v§("MovieClip_Animation");
         this.§&]§ = new _loc1_();
         §3?§.addChild(this.§&]§);
         this.§&]§.scaleY = 1.3;
         this.§&]§.scaleX = 1.3;
         this.§&]§.x = (1024 - 1024 * 1.3) / 2;
         this.§&]§.y = (768 - 768 * 1.3) / 2;
         this.§;!x§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§&]§.currentFrame == this.§&]§.totalFrames)
         {
            mNextState = §'5§.§>H§;
         }
         if(mNextState.length > 0)
         {
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§>H§;
         }
      }
   }
}
