package § !@§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §7g§.§1Q§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §8A§ extends §1Q§
   {
      
      public static const §>9§:String = "FlashGoes11State";
      
      public static const §const§:Number = 6000;
       
      
      private var §5!?§:Number = -1;
      
      private var §>!%§:MovieClip = null;
      
      public function §8A§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §]!>§.§8!@§("MovieClip_Animation");
         this.§>!%§ = new _loc1_();
         §]F§.addChild(this.§>!%§);
         this.§>!%§.scaleY = 1.3;
         this.§>!%§.scaleX = 1.3;
         this.§>!%§.x = (1024 - 1024 * 1.3) / 2;
         this.§>!%§.y = (768 - 768 * 1.3) / 2;
         this.§5!?§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§>!%§.currentFrame == this.§>!%§.totalFrames)
         {
            mNextState = §5!#§.§>9§;
         }
         if(mNextState.length > 0)
         {
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§>9§;
         }
      }
   }
}
