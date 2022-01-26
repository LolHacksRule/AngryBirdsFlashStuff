package § C§
{
   import §2]§.§#H§;
   import §2]§.§set §;
   import §]4§.§-§;
   import §`W§.§-[§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §]!'§ extends §-§
   {
      
      public static const §?B§:String = "FlashGoes11State";
      
      public static const §%V§:Number = 6000;
       
      
      private var §`3§:Number = -1;
      
      private var §,k§:MovieClip = null;
      
      public function §]!'§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §>D§.§`C§("MovieClip_Animation");
         this.§,k§ = new _loc1_();
         §,R§.addChild(this.§,k§);
         this.§,k§.scaleY = 1.3;
         this.§,k§.scaleX = 1.3;
         this.§,k§.x = (1024 - 1024 * 1.3) / 2;
         this.§,k§.y = (768 - 768 * 1.3) / 2;
         this.§`3§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§,k§.currentFrame == this.§,k§.totalFrames)
         {
            mNextState = §,!?§.§?B§;
         }
         if(mNextState.length > 0)
         {
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§?B§;
         }
      }
   }
}
