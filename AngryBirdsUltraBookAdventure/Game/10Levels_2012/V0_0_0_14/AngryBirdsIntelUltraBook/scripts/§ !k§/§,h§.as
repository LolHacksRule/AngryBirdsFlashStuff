package § !k§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §,h§ extends §+_§
   {
      
      public static const §3F§:String = "FlashGoes11State";
      
      public static const §"b§:Number = 6000;
       
      
      private var §"!C§:Number = -1;
      
      private var §?I§:MovieClip = null;
      
      public function §,h§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §9!N§.§0!k§("MovieClip_Animation");
         this.§?I§ = new _loc1_();
         §`-§.addChild(this.§?I§);
         this.§?I§.scaleY = 1.3;
         this.§?I§.scaleX = 1.3;
         this.§?I§.x = (1024 - 1024 * 1.3) / 2;
         this.§?I§.y = (768 - 768 * 1.3) / 2;
         this.§"!C§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§?I§.currentFrame == this.§?I§.totalFrames)
         {
            mNextState = §4A§.§3F§;
         }
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§3F§;
         }
      }
   }
}
