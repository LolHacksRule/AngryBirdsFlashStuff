package §`@§
{
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§@s§;
   import com.rovio.assets.§7!D§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §=&§ extends §0!5§
   {
      
      public static const §0!7§:String = "FlashGoes11State";
      
      public static const §=5§:Number = 6000;
       
      
      private var §?n§:Number = -1;
      
      private var §=!'§:MovieClip = null;
      
      public function §=&§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §7!D§.§?0§("MovieClip_Animation");
         this.§=!'§ = new _loc1_();
         §#Z§.addChild(this.§=!'§);
         this.§=!'§.scaleY = 1.3;
         this.§=!'§.scaleX = 1.3;
         this.§=!'§.x = (1024 - 1024 * 1.3) / 2;
         this.§=!'§.y = (768 - 768 * 1.3) / 2;
         this.§?n§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§=!'§.currentFrame == this.§=!'§.totalFrames)
         {
            mNextState = §9!@§.§0!7§;
         }
         if(mNextState.length > 0)
         {
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§0!7§;
         }
      }
   }
}
