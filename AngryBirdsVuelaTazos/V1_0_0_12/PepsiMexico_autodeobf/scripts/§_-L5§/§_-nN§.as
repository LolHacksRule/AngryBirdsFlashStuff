package §_-L5§
{
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-RG§.§_-TC§;
   import §_-Su§.§_-8v§;
   import §_-TQ§.HighscoreSidebar;
   import §_-Tf§.§_-V6§;
   import §_-rp§.§_-Hz§;
   import §_-v3§.§_-G3§;
   import flash.events.KeyboardEvent;
   
   public class §_-nN§ extends §_-1Y§
   {
       
      
      protected var §_-8a§:§_-V6§;
      
      protected var §_-mp§:Boolean = false;
      
      protected var §_-Dz§:Boolean = false;
      
      public function §_-nN§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-8a§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-8v§.§_-cy§ = false;
         §_-3C§.§_-bz§.§_-cZ§(true);
         §_-3C§.§_-bz§.§_-ea§(true);
         if(this.§_-8a§ == null)
         {
            this.§_-8a§ = new §_-V6§(§_-3C§.§_-bz§);
         }
         if(§_-3C§.§_-bz§.§_-PW§ == 0)
         {
            this.levelStarted();
         }
         §_-1B§.changeState(HighscoreSidebar.§_-9d§);
         §_-1B§.showHighscores(§_-8v§.§_-rq§);
         §_-3C§.§_-dV§(this.§_-8a§);
         §_-3C§.§_-bz§.§_-Hu§.§_-ry§();
         §_-G3§.§_-gw§.§_-be§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-mp§)
         {
            this.§_-mp§ = false;
            mNextState = §_-2u§.§_-Mi§;
         }
         else
         {
            this.§_-8a§.update(param1);
            if(this.§_-8a§.§_-In§() || this.§_-Dz§)
            {
               this.§_-Dz§ = false;
               if(this.§_-8a§.§_-wE§ == §_-V6§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-8v§.§_-cy§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-8a§.§_-wE§ == §_-V6§.§_-Is§)
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
         §_-3C§.§_-bz§.§_-Hu§.§_-Uo§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-3C§.§_-0A§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-3C§.§_-0A§.keyUp(param1);
      }
      
      public function §_-en§() : void
      {
         var _loc1_:Number = §_-3C§.§_-bz§.camera.mManualScale - §_-Hz§.§_-Tc§;
         var _loc2_:Number = (§_-Hz§.§_-1H§ - §_-Hz§.§_-Tc§) / 2;
         if(_loc1_ > _loc2_)
         {
            §_-TC§.§_-mm§("Cursor_Zoom_Out");
         }
         else
         {
            §_-TC§.§_-mm§("Cursor_Zoom_In");
         }
      }
   }
}
