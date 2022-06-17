package §7"@§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §6"5§ extends §1-§
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const §7!7§:Number = 6000;
       
      
      private var §,1§:Number = -1;
      
      private var §,s§:MovieClip = null;
      
      public function §6"5§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §8B§.§6"C§("MovieClip_Animation");
         this.§,s§ = new _loc1_();
         §6w§.addChild(this.§,s§);
         this.§,s§.scaleY = 1.3;
         this.§,s§.scaleX = 1.3;
         this.§,s§.x = (1024 - 1024 * 1.3) / 2;
         this.§,s§.y = (768 - 768 * 1.3) / 2;
         this.§,1§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§,s§.currentFrame == this.§,s§.totalFrames)
         {
            mNextState = §#;§.STATE_NAME;
         }
         if(mNextState.length > 0)
         {
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.STATE_NAME;
         }
      }
   }
}
