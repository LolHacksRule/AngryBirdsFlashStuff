package §else§
{
   import §_-6r§.§_-7P§;
   import §_-PD§.HighscoreSidebar;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-hU§.§_-MB§;
   import §_-sT§.§_-Da§;
   import §_-y7§.§_-VA§;
   
   public class §_-nZ§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LevelEndFailState3";
       
      
      private var §_-4W§:§_-Da§;
      
      public function §_-nZ§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_LevelEndFail3[0]);
         this.§_-4W§ = new §_-Da§(0,0,0,0);
         §_-NY§.mMovieClip.addChildAt(this.§_-4W§,§_-NY§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-1S§)
         {
            _loc1_ = §_-1S§.currentPage;
         }
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(true);
         this.§_-4W§.§_-Mv§(0.7);
         if(_loc1_)
         {
            §_-1S§.choosePage(_loc1_);
         }
         §_-1S§.changeState(HighscoreSidebar.§_-Jf§);
         §_-1S§.showHighscores(§_-Sf§.§_-vj§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-4W§.§_-wk§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-Jw§.§_-GL§();
               mNextState = §_-Jw§.§_-Az§;
               break;
            case "REPLAY":
               §_-Jw§.§_-h5§();
               mNextState = §_-Jw§.§_-Az§;
               break;
            case "MENU":
               mNextState = §_-pX§.§_-Az§;
         }
      }
   }
}
