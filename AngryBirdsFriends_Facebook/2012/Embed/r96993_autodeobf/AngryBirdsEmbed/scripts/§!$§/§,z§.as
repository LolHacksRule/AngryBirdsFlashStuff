package §!$§
{
   import §!^§.§"%§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import com.rovio.assets.§''§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §,z§ extends §3!'§
   {
      
      public static const §9"§:String = "FlashGoes11State";
      
      public static const §=!>§:Number = 6000;
       
      
      private var §'!,§:Number = -1;
      
      private var §2!?§:MovieClip = null;
      
      public function §,z§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §''§.§-C§("MovieClip_Animation");
         this.§2!?§ = new _loc1_();
         §+!2§.addChild(this.§2!?§);
         this.§2!?§.scaleY = 1.3;
         this.§2!?§.scaleX = 1.3;
         this.§2!?§.x = (1024 - 1024 * 1.3) / 2;
         this.§2!?§.y = (768 - 768 * 1.3) / 2;
         this.§'!,§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§2!?§.currentFrame == this.§2!?§.totalFrames)
         {
            mNextState = § &§.§9"§;
         }
         if(mNextState.length > 0)
         {
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§9"§;
         }
      }
   }
}
