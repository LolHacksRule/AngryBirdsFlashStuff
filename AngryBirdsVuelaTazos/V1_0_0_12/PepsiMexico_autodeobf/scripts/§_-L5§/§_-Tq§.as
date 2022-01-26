package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-IC§.§_-Uw§;
   import §_-Su§.§_-8v§;
   import §_-TQ§.HighscoreSidebar;
   import §_-Ts§.§_-pl§;
   import §_-Ys§.§_-o-§;
   import §_-v3§.§_-G3§;
   
   public class §_-Tq§ extends §_-1Y§
   {
      
      public static const §_-Mi§:String = "LevelEndFailState3";
       
      
      private var §_-PY§:§_-pl§;
      
      public function §_-Tq§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_LevelEndFail3[0]);
         this.§_-PY§ = new §_-pl§(0,0,0,0);
         §_-Bv§.mMovieClip.addChildAt(this.§_-PY§,§_-Bv§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-1B§)
         {
            _loc1_ = §_-1B§.currentPage;
         }
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.start();
         }
         this.§_-PY§.§_-BE§(0.7);
         if(_loc1_)
         {
            §_-1B§.choosePage(_loc1_);
         }
         §_-1B§.changeState(HighscoreSidebar.§_-9d§);
         §_-1B§.showHighscores(§_-8v§.§_-rq§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-PY§.§_-Jw§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-0v§.§_-ky§();
               mNextState = §_-0v§.§_-Mi§;
               break;
            case "REPLAY":
               §_-0v§.§_-R3§();
               mNextState = §_-0v§.§_-Mi§;
               break;
            case "MENU":
               mNextState = §_-Tm§.§_-Mi§;
         }
      }
   }
}
