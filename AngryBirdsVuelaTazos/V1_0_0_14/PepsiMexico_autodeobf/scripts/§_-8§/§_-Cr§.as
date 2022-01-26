package §_-8§
{
   import §_-Jx§.§_-Ao§;
   import §_-Kn§.HighscoreSidebar;
   import §_-M0§.§_-u4§;
   import §_-PZ§.§_-3L§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-HB§;
   
   public class §_-Cr§ extends §_-1f§
   {
      
      public static const §_-7m§:String = "LevelEndFailState3";
       
      
      private var §_-NZ§:§_-3L§;
      
      public function §_-Cr§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_LevelEndFail3[0]);
         this.§_-NZ§ = new §_-3L§(0,0,0,0);
         §_-Ih§.mMovieClip.addChildAt(this.§_-NZ§,§_-Ih§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-5D§)
         {
            _loc1_ = §_-5D§.currentPage;
         }
         super.activate();
         §_-u4§.§_-40§.§_-AB§(true);
         this.§_-NZ§.§_-xX§(0.7);
         if(_loc1_)
         {
            §_-5D§.choosePage(_loc1_);
         }
         §_-5D§.changeState(HighscoreSidebar.§_-Po§);
         §_-5D§.showHighscores(§_-HB§.§_-Z-§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-NZ§.§_-7P§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-OU§.§_-U1§();
               mNextState = §_-OU§.§_-7m§;
               break;
            case "REPLAY":
               §_-OU§.§for §();
               mNextState = §_-OU§.§_-7m§;
               break;
            case "MENU":
               mNextState = §_-VD§.§_-7m§;
         }
      }
   }
}
