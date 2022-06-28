package §9c§
{
   import §#!X§.LevelManager;
   import §'N§.§'!6§;
   import §-!>§.§4!T§;
   import §9!H§.§7k§;
   import §?A§.LevelMain;
   import §[!>§.StateBase;
   import flash.events.KeyboardEvent;
   
   public class §&x§ extends StateBase
   {
       
      
      protected var §-!,§:§7k§;
      
      protected var §&9§:Boolean = false;
      
      protected var §+J§:Boolean = false;
      
      private var §7!+§:Boolean = false;
      
      public function §&x§(initState:Boolean, name:String)
      {
         super(initState,name);
      }
      
      protected function levelStarted() : void
      {
         this.§-!,§.init();
         this.§7!+§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§ @§ = false;
         §4!T§.§1t§.§@!F§(true);
         §4!T§.§1t§.§;!1§(true);
         §4!T§.resume();
         if(this.§-!,§ == null)
         {
            this.§-!,§ = this.getGameLogicController(§4!T§.§1t§);
         }
         if(§4!T§.§1t§.§"!-§ == 0)
         {
            this.levelStarted();
         }
         §4!T§.setController(this.§-!,§);
         §4!T§.§1t§.background.§9J§();
      }
      
      protected function getGameLogicController(levelMain:LevelMain) : §7k§
      {
         return new §7k§(levelMain);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(this.§&9§)
         {
            this.§&9§ = false;
            mNextState = StatePause.STATE_NAME;
         }
         else
         {
            if(!§4!T§.isPaused)
            {
               this.§-!,§.update(deltaTime);
            }
            if(this.§-!,§.§#x§() || this.§+J§)
            {
               this.§+J§ = false;
               if(this.§-!,§.§6$§ == §7k§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§7!+§)
                  {
                     this.§7!+§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§ @§ = true;
               }
               else if(this.§-!,§.§6$§ == §7k§.§@!`§)
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
         if(§4!T§.DEBUG_MODE_ENABLED)
         {
            switch(e.keyCode)
            {
               case 87:
                  §4!T§.§1t§.§"!b§();
                  break;
               case 66:
                  §4!T§.§1t§.§=-§();
            }
         }
         §4!T§.controller.keyDown(e);
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         super.keyUp(e);
         §4!T§.controller.keyUp(e);
      }
      
      public function §'7§() : void
      {
         var zoomLevel:Number = §4!T§.§1t§.camera.§+!1§ - §4!T§.§1t§.camera.§<!T§;
         var borderValue:Number = (§4!T§.§1t§.camera.§0%§ - §4!T§.§1t§.camera.§<!T§) / 2;
         if(zoomLevel > borderValue)
         {
            §'!6§.§!7§("Cursor_Zoom_Out");
         }
         else
         {
            §'!6§.§!7§("Cursor_Zoom_In");
         }
      }
   }
}
