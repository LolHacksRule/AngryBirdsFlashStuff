package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §'!?§ extends §#!,§
   {
      
      public static const §?x§:String = "FlashGoes11State";
      
      public static const §&P§:Number = 6000;
       
      
      private var §7]§:Number = -1;
      
      private var §;&§:MovieClip = null;
      
      public function §'!?§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §'!H§.§&!G§("MovieClip_Animation");
         this.§;&§ = new _loc1_();
         §[=§.addChild(this.§;&§);
         this.§;&§.scaleY = 1.3;
         this.§;&§.scaleX = 1.3;
         this.§;&§.x = (1024 - 1024 * 1.3) / 2;
         this.§;&§.y = (768 - 768 * 1.3) / 2;
         this.§7]§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§;&§.currentFrame == this.§;&§.totalFrames)
         {
            mNextState = §!!=§.§?x§;
         }
         if(mNextState.length > 0)
         {
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§?x§;
         }
      }
   }
}
