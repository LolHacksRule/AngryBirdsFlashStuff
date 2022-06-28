package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §2!?§.§case§;
   import §2!H§.LevelMain;
   import §4H§.StateBase;
   import §6b§.§3r§;
   import flash.events.KeyboardEvent;
   
   public class §9m§ extends StateBase
   {
       
      
      protected var §-;§:§case§;
      
      protected var §&!-§:Boolean = false;
      
      protected var §[!!§:Boolean = false;
      
      private var §`$§:Boolean = false;
      
      public function §9m§(initState:Boolean, name:String)
      {
         super(initState,name);
      }
      
      protected function levelStarted() : void
      {
         this.§-;§.init();
         this.§`$§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§+3§ = false;
         §]!B§.§>F§.§,>§(true);
         §]!B§.§>F§.§1F§(true);
         §]!B§.resume();
         if(this.§-;§ == null)
         {
            this.§-;§ = this.getGameLogicController(§]!B§.§>F§);
         }
         if(§]!B§.§>F§.§,6§ == 0)
         {
            this.levelStarted();
         }
         §]!B§.setController(this.§-;§);
         §]!B§.§>F§.background.§5T§();
      }
      
      protected function getGameLogicController(levelMain:LevelMain) : §case§
      {
         return new §case§(levelMain);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(this.§&!-§)
         {
            this.§&!-§ = false;
            mNextState = StatePause.STATE_NAME;
         }
         else
         {
            if(!§]!B§.isPaused)
            {
               this.§-;§.update(deltaTime);
            }
            if(this.§-;§.§?Z§() || this.§[!!§)
            {
               this.§[!!§ = false;
               if(this.§-;§.§`!#§ == §case§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§`$§)
                  {
                     this.§`$§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§+3§ = true;
               }
               else if(this.§-;§.§`!#§ == §case§.§'z§)
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
         if(§]!B§.DEBUG_MODE_ENABLED)
         {
            switch(e.keyCode)
            {
               case 87:
                  §]!B§.§>F§.§'!7§();
                  break;
               case 66:
                  §]!B§.§>F§.§[!G§();
            }
         }
         §]!B§.controller.keyDown(e);
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         super.keyUp(e);
         §]!B§.controller.keyUp(e);
      }
      
      public function §>!Q§() : void
      {
         var zoomLevel:Number = §]!B§.§>F§.camera.§^!3§ - §]!B§.§>F§.camera.§`,§;
         var borderValue:Number = (§]!B§.§>F§.camera.§5!T§ - §]!B§.§>F§.camera.§`,§) / 2;
         if(zoomLevel > borderValue)
         {
            §3r§.§#H§("Cursor_Zoom_Out");
         }
         else
         {
            §3r§.§#H§("Cursor_Zoom_In");
         }
      }
   }
}
