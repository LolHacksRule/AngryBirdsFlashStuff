package §_-ad§
{
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-x8§.§_-nG§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-00w§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "FlashGoes11State";
      
      public static const §_-Qo§:Number = 6000;
       
      
      private var §_-bl§:Number = -1;
      
      private var §_-0BJ§:MovieClip = null;
      
      public function §_-00w§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_FlashGoes11[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:Class = §_-Fc§.§_-YE§("MovieClip_Animation");
         this.§_-0BJ§ = new _loc1_();
         §_-s0§.addChild(this.§_-0BJ§);
         this.§_-0BJ§.scaleY = 1.3;
         this.§_-0BJ§.scaleX = 1.3;
         this.§_-0BJ§.x = (1024 - 1024 * 1.3) / 2;
         this.§_-0BJ§.y = (768 - 768 * 1.3) / 2;
         this.§_-bl§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-0BJ§.currentFrame == this.§_-0BJ§.totalFrames)
         {
            mNextState = §_-05N§.§_-pk§;
         }
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         switch(param2)
         {
            case "CLOSE_FEED":
               mNextState = StatePlay.§_-pk§;
         }
      }
   }
}
