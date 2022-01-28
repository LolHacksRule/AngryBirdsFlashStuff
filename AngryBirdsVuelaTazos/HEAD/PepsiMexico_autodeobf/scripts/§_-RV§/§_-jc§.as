package §_-RV§
{
   import §_-3c§.§_-5S§;
   import §_-7V§.§_-Gs§;
   import §_-7x§.§_-4O§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-iZ§.HighscoreSidebar;
   import §_-pm§.§_-gb§;
   
   public class §_-jc§ extends §_-oI§
   {
      
      public static const §_-8r§:String = "LevelEndFailState3";
       
      
      private var §_-C8§:§_-5S§;
      
      public function §_-jc§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_LevelEndFail3[0]);
         this.§_-C8§ = new §_-5S§(0,0,0,0);
         §_-MF§.mMovieClip.addChildAt(this.§_-C8§,§_-MF§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-e0§)
         {
            _loc1_ = §_-e0§.currentPage;
         }
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(true);
         this.§_-C8§.§_-AV§(0.7);
         if(_loc1_)
         {
            §_-e0§.choosePage(_loc1_);
         }
         §_-e0§.changeState(HighscoreSidebar.§_-LI§);
         §_-e0§.showHighscores(§_-4O§.§_-FH§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-C8§.§_-fr§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-Py§.§_-op§();
               mNextState = §_-Py§.§_-8r§;
               break;
            case "REPLAY":
               §_-Py§.§_-vF§();
               mNextState = §_-Py§.§_-8r§;
               break;
            case "MENU":
               mNextState = §_-V9§.§_-8r§;
         }
      }
   }
}
