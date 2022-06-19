package §[!K§
{
   import §!!t§.§,-§;
   import §1"2§.§,!]§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §3y§ extends §,-§
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const §9",§:Number = 6000;
       
      
      private var §"!V§:Number = -1;
      
      private var §0!§:MovieClip = null;
      
      public function §3y§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §#!J§.§1!Y§("MovieClip_Animation");
         this.§0!§ = new _loc1_();
         §2"-§.addChild(this.§0!§);
         this.§0!§.scaleY = 1.3;
         this.§0!§.scaleX = 1.3;
         this.§0!§.x = (1024 - 1024 * 1.3) / 2;
         this.§0!§.y = (768 - 768 * 1.3) / 2;
         this.§"!V§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§0!§.currentFrame == this.§0!§.totalFrames)
         {
            mNextState = §&!x§.STATE_NAME;
         }
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
