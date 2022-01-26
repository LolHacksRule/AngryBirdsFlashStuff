package §_-5M§
{
   import §_-3P§.§_-dN§;
   import §_-8A§.§_-Ip§;
   import §_-B2§.§_-H4§;
   import §_-Je§.§_-RH§;
   import §_-LL§.HighscoreSidebar;
   import §_-PK§.§_-Jb§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   
   public class §_-TK§ extends §_-7C§
   {
      
      public static const §_-7J§:String = "LevelEndFailState3";
       
      
      private var §_-9P§:§_-Ip§;
      
      public function §_-TK§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_LevelEndFail3[0]);
         this.§_-9P§ = new §_-Ip§(0,0,0,0);
         §_-wB§.mMovieClip.addChildAt(this.§_-9P§,§_-wB§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-6B§)
         {
            _loc1_ = §_-6B§.currentPage;
         }
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.start();
         }
         this.§_-9P§.§_-Do§(0.7);
         if(_loc1_)
         {
            §_-6B§.choosePage(_loc1_);
         }
         §_-6B§.changeState(HighscoreSidebar.§_-uf§);
         §_-6B§.showHighscores(§_-dN§.§_-fy§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-9P§.§_-gv§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-G§.§_-oz§();
               mNextState = §_-G§.§_-7J§;
               break;
            case "REPLAY":
               §_-G§.§_-pN§();
               mNextState = §_-G§.§_-7J§;
               break;
            case "MENU":
               mNextState = §_-Vn§.§_-7J§;
         }
      }
   }
}
