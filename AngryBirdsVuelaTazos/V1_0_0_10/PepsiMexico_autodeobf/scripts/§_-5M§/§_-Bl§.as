package §_-5M§
{
   import §_-0y§.§_-Y4§;
   import §_-3P§.§_-dN§;
   import §_-B2§.§_-H4§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-LL§.HighscoreSidebar;
   import §_-m6§.§case§;
   import §_-ot§.§_-UQ§;
   import flash.events.KeyboardEvent;
   
   public class §_-Bl§ extends §_-7C§
   {
       
      
      protected var §_-QO§:§case§;
      
      protected var §_-Bc§:Boolean = false;
      
      protected var §_-N6§:Boolean = false;
      
      public function §_-Bl§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-QO§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-dN§.§_-k5§ = false;
         §_-2N§.§_-iP§.§_-jx§(true);
         §_-2N§.§_-iP§.§_-xN§(true);
         if(this.§_-QO§ == null)
         {
            this.§_-QO§ = new §case§(§_-2N§.§_-iP§);
         }
         if(§_-2N§.§_-iP§.§_-pt§ == 0)
         {
            this.levelStarted();
         }
         §_-6B§.changeState(HighscoreSidebar.§_-uf§);
         §_-6B§.showHighscores(§_-dN§.§_-fy§);
         §_-2N§.§_-Uk§(this.§_-QO§);
         §_-2N§.§_-iP§.§_-Ms§.§_-tL§();
         §_-H4§.§_-5y§.§_-Jq§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-Bc§)
         {
            this.§_-Bc§ = false;
            mNextState = §_-0j§.§_-7J§;
         }
         else
         {
            this.§_-QO§.update(param1);
            if(this.§_-QO§.§_-nr§() || this.§_-N6§)
            {
               this.§_-N6§ = false;
               if(this.§_-QO§.§_-r9§ == §case§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-dN§.§_-k5§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-QO§.§_-r9§ == §case§.§_-aX§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return _loc2_;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryState() : String
      {
         return null;
      }
      
      public function getLoserState() : String
      {
         return null;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §_-2N§.§_-iP§.§_-Ms§.§_-4Q§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-2N§.§_-gT§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-2N§.§_-gT§.keyUp(param1);
      }
      
      public function §_-gC§() : void
      {
         var _loc1_:Number = §_-2N§.§_-iP§.camera.mManualScale - §_-Y4§.§_-H-§;
         var _loc2_:Number = (§_-Y4§.§_-9D§ - §_-Y4§.§_-H-§) / 2;
         if(_loc1_ > _loc2_)
         {
            §_-UQ§.§_-Jy§("Cursor_Zoom_Out");
         }
         else
         {
            §_-UQ§.§_-Jy§("Cursor_Zoom_In");
         }
      }
   }
}
