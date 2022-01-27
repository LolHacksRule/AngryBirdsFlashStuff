package §8!A§
{
   import §!!0§.§ true§;
   import §4M§.;
   import §4M§.§^'§;
   import §;!!§.§0H§;
   import com.rovio.assets.§^3§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §=L§ extends §0H§
   {
      
      public static const §2`§:String = "FlashGoes11State";
      
      public static const §60§:Number = 6000;
       
      
      private var §>!H§:Number = -1;
      
      private var §"h§:MovieClip = null;
      
      public function §=L§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §^3§.§+_§("MovieClip_Animation");
         this.§"h§ = new _loc1_();
         §<A§.addChild(this.§"h§);
         this.§"h§.scaleY = 1.3;
         this.§"h§.scaleX = 1.3;
         this.§"h§.x = (1024 - 1024 * 1.3) / 2;
         this.§"h§.y = (768 - 768 * 1.3) / 2;
         this.§>!H§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§"h§.currentFrame == this.§"h§.totalFrames)
         {
            mNextState = §-h§.§2`§;
         }
         if(mNextState.length > 0)
         {
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§2`§;
         }
      }
   }
}
