package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §1t§.§`!B§;
   import com.rovio.assets.§&%§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §>%§ extends §2q§
   {
      
      public static const §&! §:String = "FlashGoes11State";
      
      public static const §5"§:Number = 6000;
       
      
      private var §6T§:Number = -1;
      
      private var §44§:MovieClip = null;
      
      public function §>%§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §&%§.§<7§("MovieClip_Animation");
         this.§44§ = new _loc1_();
         §=V§.addChild(this.§44§);
         this.§44§.scaleY = 1.3;
         this.§44§.scaleX = 1.3;
         this.§44§.x = (1024 - 1024 * 1.3) / 2;
         this.§44§.y = (768 - 768 * 1.3) / 2;
         this.§6T§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§44§.currentFrame == this.§44§.totalFrames)
         {
            mNextState = §'W§.§&! §;
         }
         if(mNextState.length > 0)
         {
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§&! §;
         }
      }
   }
}
