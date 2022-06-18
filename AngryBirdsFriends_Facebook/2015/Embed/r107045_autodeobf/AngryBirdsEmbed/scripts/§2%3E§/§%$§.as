package §2>§
{
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import com.rovio.assets.§5R§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §%$§ extends §9Y§
   {
      
      public static const §]! §:String = "FlashGoes11State";
      
      public static const §+!M§:Number = 6000;
       
      
      private var §#!&§:Number = -1;
      
      private var §%!-§:MovieClip = null;
      
      public function §%$§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §5R§.§6+§("MovieClip_Animation");
         this.§%!-§ = new _loc1_();
         §!s§.addChild(this.§%!-§);
         this.§%!-§.scaleY = 1.3;
         this.§%!-§.scaleX = 1.3;
         this.§%!-§.x = (1024 - 1024 * 1.3) / 2;
         this.§%!-§.y = (768 - 768 * 1.3) / 2;
         this.§#!&§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§%!-§.currentFrame == this.§%!-§.totalFrames)
         {
            mNextState = §&!8§.§]! §;
         }
         if(mNextState.length > 0)
         {
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§]! §;
         }
      }
   }
}
