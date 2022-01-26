package §_-Hq§
{
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-Y-§.§_-A5§;
   import §_-d5§.§_-6Y§;
   import §_-ic§.HighscoreSidebar;
   import §_-xN§.§_-pB§;
   import dynamic.§_-8-§;
   
   public class §_-MV§ extends §_-UR§
   {
      
      public static const §_-dh§:String = "LevelEndFailState3";
       
      
      private var §_-qc§:§_-8-§;
      
      public function §_-MV§(param1:Boolean = false, param2:String = "LevelEndFailState3")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_LevelEndFail3[0]);
         this.§_-qc§ = new §_-8-§(0,0,0,0);
         §_-qE§.mMovieClip.addChildAt(this.§_-qc§,§_-qE§.mMovieClip.numChildren - 1);
      }
      
      override public function activate() : void
      {
         var _loc1_:int = 0;
         if(§_-03§)
         {
            _loc1_ = §_-03§.currentPage;
         }
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.start();
         }
         this.§_-qc§.§_-Ai§(0.7);
         if(_loc1_)
         {
            §_-03§.choosePage(_loc1_);
         }
         §_-03§.changeState(HighscoreSidebar.§_-JL§);
         §_-03§.showHighscores(§_-A5§.§_-KH§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§_-qc§.§_-2G§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-mF§.§_-YZ§();
               mNextState = §_-mF§.§_-dh§;
               break;
            case "REPLAY":
               §_-mF§.§_-4C§();
               mNextState = §_-mF§.§_-dh§;
               break;
            case "MENU":
               mNextState = §_-fR§.§_-dh§;
         }
      }
   }
}
