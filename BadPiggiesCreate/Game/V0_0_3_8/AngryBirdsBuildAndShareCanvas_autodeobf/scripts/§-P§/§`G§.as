package §-P§
{
   import §9!7§.§#p§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import com.rovio.assets.§%"4§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §`G§ extends §4E§
   {
      
      public static const §#!w§:String = "FlashGoes11State";
      
      public static const §+"%§:Number = 6000;
       
      
      private var §>q§:Number = -1;
      
      private var §="%§:MovieClip = null;
      
      public function §`G§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §%"4§.§>!v§("MovieClip_Animation");
         this.§="%§ = new _loc1_();
         §1!j§.addChild(this.§="%§);
         this.§="%§.scaleY = 1.3;
         this.§="%§.scaleX = 1.3;
         this.§="%§.x = (1024 - 1024 * 1.3) / 2;
         this.§="%§.y = (768 - 768 * 1.3) / 2;
         this.§>q§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§="%§.currentFrame == this.§="%§.totalFrames)
         {
            mNextState = §3" §.§#!w§;
         }
         if(mNextState.length > 0)
         {
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§#!w§;
         }
      }
   }
}
