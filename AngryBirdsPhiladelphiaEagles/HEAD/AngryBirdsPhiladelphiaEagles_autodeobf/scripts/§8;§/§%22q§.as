package §8;§
{
   import §%!;§.§!L§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §9c§.§,x§;
   import com.rovio.assets.§<x§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §"q§ extends §!L§
   {
      
      public static const §"Z§:String = "FlashGoes11State";
      
      public static const §function§:Number = 6000;
       
      
      private var §`F§:Number = -1;
      
      private var §"-§:MovieClip = null;
      
      public function §"q§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §<x§.§,! §("MovieClip_Animation");
         this.§"-§ = new _loc1_();
         §>2§.addChild(this.§"-§);
         this.§"-§.scaleY = 1.3;
         this.§"-§.scaleX = 1.3;
         this.§"-§.x = (1024 - 1024 * 1.3) / 2;
         this.§"-§.y = (768 - 768 * 1.3) / 2;
         this.§`F§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§"-§.currentFrame == this.§"-§.totalFrames)
         {
            mNextState = §6!F§.§"Z§;
         }
         if(mNextState.length > 0)
         {
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§"Z§;
         }
      }
   }
}
