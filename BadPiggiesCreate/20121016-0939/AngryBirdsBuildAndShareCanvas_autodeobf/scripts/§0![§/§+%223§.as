package §0![§
{
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §+"3§ extends §5y§
   {
      
      public static const §'=§:String = "FlashGoes11State";
      
      public static const § !p§:Number = 6000;
       
      
      private var §1!z§:Number = -1;
      
      private var §<!1§:MovieClip = null;
      
      public function §+"3§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §>!]§.§1!8§("MovieClip_Animation");
         this.§<!1§ = new _loc1_();
         §?E§.addChild(this.§<!1§);
         this.§<!1§.scaleY = 1.3;
         this.§<!1§.scaleX = 1.3;
         this.§<!1§.x = (1024 - 1024 * 1.3) / 2;
         this.§<!1§.y = (768 - 768 * 1.3) / 2;
         this.§1!z§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§<!1§.currentFrame == this.§<!1§.totalFrames)
         {
            mNextState = §]x§.§'=§;
         }
         if(mNextState.length > 0)
         {
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§'=§;
         }
      }
   }
}
