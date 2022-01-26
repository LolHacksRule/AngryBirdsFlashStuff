package §_-JB§
{
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-PS§.§_-Xz§;
   import §_-bj§.§_-l§;
   import §_-cu§.§_-UO§;
   import §_-m7§.HighscoreSidebar;
   
   public class §_-6F§ extends §_-bH§
   {
      
      public static const §_-1h§:String = "LevelEndFailState3";
       
      
      private var §_-gk§:§_-l§;
      
      public function §_-6F§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_LevelEndFail3[0]);
         this.§_-gk§ = new §_-l§(0,0,0,0);
         §_-kl§.mMovieClip.addChildAt(this.§_-gk§,§_-kl§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-dM§)
         {
            _loc1_ = §_-dM§.currentPage;
         }
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.start();
         }
         this.§_-gk§.§_-OT§(0.7);
         if(_loc1_)
         {
            §_-dM§.choosePage(_loc1_);
         }
         §_-dM§.changeState(HighscoreSidebar.§_-Zk§);
         §_-dM§.showHighscores(§_-Xz§.§_-AP§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-gk§.§_-Om§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-gc§.§_-e7§();
               mNextState = §_-gc§.§_-1h§;
               break;
            case "REPLAY":
               §_-gc§.§_-hG§();
               mNextState = §_-gc§.§_-1h§;
               break;
            case "MENU":
               mNextState = §_-Sp§.§_-1h§;
         }
      }
   }
}
