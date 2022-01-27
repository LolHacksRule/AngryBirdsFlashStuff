package §2!U§
{
   import §8!H§.§9![§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §5!i§ extends §9![§
   {
      
      public static const §'!q§:String = "FlashGoes11State";
      
      public static const §;!<§:Number = 6000;
       
      
      private var §>!R§:Number = -1;
      
      private var §0"$§:MovieClip = null;
      
      public function §5!i§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §,!j§.§!!N§("MovieClip_Animation");
         this.§0"$§ = new _loc1_();
         §'!Q§.addChild(this.§0"$§);
         this.§0"$§.scaleY = 1.3;
         this.§0"$§.scaleX = 1.3;
         this.§0"$§.x = (1024 - 1024 * 1.3) / 2;
         this.§0"$§.y = (768 - 768 * 1.3) / 2;
         this.§>!R§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§0"$§.currentFrame == this.§0"$§.totalFrames)
         {
            mNextState = §&i§.§'!q§;
         }
         if(mNextState.length > 0)
         {
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§'!q§;
         }
      }
   }
}
