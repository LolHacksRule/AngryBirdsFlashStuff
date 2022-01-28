package §_-RV§
{
   import §_-7x§.§_-4O§;
   import §_-Ku§.§_-Ha§;
   import §_-QG§.§_-t6§;
   import §_-gM§.§_-oq§;
   import §_-iZ§.HighscoreSidebar;
   import §_-pm§.§_-gb§;
   import §_-qb§.§_-Kt§;
   import §_-ym§.§_-7s§;
   import flash.events.KeyboardEvent;
   
   public class §_-0j§ extends §_-oI§
   {
       
      
      protected var §_-4r§:§_-Kt§;
      
      protected var §_-hJ§:Boolean = false;
      
      protected var §_-lY§:Boolean = false;
      
      public function §_-0j§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§_-4r§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-4O§.§_-XE§ = false;
         §_-gb§.§_-ls§.§_-2L§(true);
         §_-gb§.§_-ls§.§_-gS§(true);
         if(this.§_-4r§ == null)
         {
            this.§_-4r§ = new §_-Kt§(§_-gb§.§_-ls§);
         }
         if(§_-gb§.§_-ls§.§_-hS§ == 0)
         {
            this.levelStarted();
         }
         §_-e0§.changeState(HighscoreSidebar.§_-LI§);
         §_-e0§.showHighscores(§_-4O§.§_-FH§);
         §_-gb§.§_-A§(this.§_-4r§);
         §_-gb§.§_-ls§.background.§_-i6§();
         §_-Ha§.§for §.§_-vd§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§_-hJ§)
         {
            this.§_-hJ§ = false;
            mNextState = §_-yZ§.§_-8r§;
         }
         else
         {
            this.§_-4r§.update(param1);
            if(this.§_-4r§.§_-Vd§() || this.§_-lY§)
            {
               this.§_-lY§ = false;
               if(this.§_-4r§.§_-Zg§ == §_-Kt§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §_-4O§.§_-XE§ = true;
                  this.levelCompleted();
               }
               else if(this.§_-4r§.§_-Zg§ == §_-Kt§.§_-3-§)
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
         §_-gb§.§_-ls§.background.§_-wW§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §_-gb§.§_-6j§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §_-gb§.§_-6j§.keyUp(param1);
      }
      
      public function §_-9s§() : void
      {
         var _loc1_:Number = §_-gb§.§_-ls§.camera.manualScale - §_-7s§.§_-hd§;
         var _loc2_:Number = (§_-7s§.§_-Wp§ - §_-7s§.§_-hd§) / 2;
         if(_loc1_ > _loc2_)
         {
            §_-oq§.§_-4s§("Cursor_Zoom_Out");
         }
         else
         {
            §_-oq§.§_-4s§("Cursor_Zoom_In");
         }
      }
   }
}
