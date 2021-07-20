package §7t§
{
   import §1N§.StateBase;
   import §91§.§[!d§;
   import §<u§.§%c§;
   import §>!_§.LevelManager;
   import §?!Y§.§`S§;
   import §]!@§.LevelMain;
   import flash.events.KeyboardEvent;
   
   public class §"!Q§ extends StateBase
   {
       
      
      protected var §1!<§:§[!d§;
      
      protected var §^!>§:Boolean = false;
      
      protected var §"`§:Boolean = false;
      
      private var §3!k§:Boolean = false;
      
      public function §"!Q§(initState:Boolean, name:String)
      {
         super(initState,name);
      }
      
      protected function levelStarted() : void
      {
         this.§1!<§.init();
         this.§3!k§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§+A§ = false;
         §`S§.§[o§.§#!$§(true);
         §`S§.§[o§.§9H§(true);
         §`S§.resume();
         if(this.§1!<§ == null)
         {
            this.§1!<§ = this.getGameLogicController(§`S§.§[o§);
         }
         if(§`S§.§[o§.§`!>§ == 0)
         {
            this.levelStarted();
         }
         §`S§.setController(this.§1!<§);
         §`S§.§[o§.background.§8a§();
      }
      
      protected function getGameLogicController(levelMain:LevelMain) : §[!d§
      {
         return new §[!d§(levelMain);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(this.§^!>§)
         {
            this.§^!>§ = false;
            mNextState = StatePause.STATE_NAME;
         }
         else
         {
            if(!§`S§.isPaused)
            {
               this.§1!<§.update(deltaTime);
            }
            if(this.§1!<§.§9x§() || this.§"`§)
            {
               this.§"`§ = false;
               if(this.§1!<§.§#2§ == §[!d§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§3!k§)
                  {
                     this.§3!k§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§+A§ = true;
               }
               else if(this.§1!<§.§#2§ == §[!d§.§@W§)
               {
                  mNextState = this.getLoserState();
               }
            }
         }
         return superReturn;
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
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(e:KeyboardEvent) : void
      {
         super.keyDown(e);
         if(§`S§.DEBUG_MODE_ENABLED)
         {
            switch(e.keyCode)
            {
               case 87:
                  §`S§.§[o§.§3!h§();
                  break;
               case 66:
                  §`S§.§[o§.§]!`§();
            }
         }
         §`S§.controller.keyDown(e);
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         super.keyUp(e);
         §`S§.controller.keyUp(e);
      }
      
      public function §9!P§() : void
      {
         var zoomLevel:Number = §`S§.§[o§.camera.§"R§ - §`S§.§[o§.camera.§#!'§;
         var borderValue:Number = (§`S§.§[o§.camera.§+D§ - §`S§.§[o§.camera.§#!'§) / 2;
         if(zoomLevel > borderValue)
         {
            §%c§.§^@§("Cursor_Zoom_Out");
         }
         else
         {
            §%c§.§^@§("Cursor_Zoom_In");
         }
      }
   }
}
