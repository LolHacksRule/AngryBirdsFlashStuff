package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §=!3§.§;!!§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §1!f§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const §2!K§:Number = 6000;
       
      
      private var §^!A§:Number = -1;
      
      private var §#!M§:MovieClip = null;
      
      public function §1!f§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §1F§.§"!_§("MovieClip_Animation");
         this.§#!M§ = new _loc1_();
         §+!$§.addChild(this.§#!M§);
         this.§#!M§.scaleY = 1.3;
         this.§#!M§.scaleX = 1.3;
         this.§#!M§.x = (1024 - 1024 * 1.3) / 2;
         this.§#!M§.y = (768 - 768 * 1.3) / 2;
         this.§^!A§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§#!M§.currentFrame == this.§#!M§.totalFrames)
         {
            mNextState = §#!@§.STATE_NAME;
         }
         if(mNextState.length > 0)
         {
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
