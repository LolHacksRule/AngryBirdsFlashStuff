package §8;§
{
   import §%!;§.§!L§;
   import §%"§.§ do§;
   import §<!F§.§5!+§;
   import §?!;§.§6H§;
   import §@V§.§-'§;
   import §]G§.§>G§;
   import flash.events.KeyboardEvent;
   
   public class §0L§ extends §!L§
   {
       
      
      protected var §#!H§:§>G§;
      
      protected var §4!@§:Boolean = false;
      
      protected var §+!O§:Boolean = false;
      
      private var §7!O§:Boolean = false;
      
      public function §0L§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§#!H§.init();
         this.§7!O§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §6H§.§ B§ = false;
         §5!+§.§6!§.§'!+§(true);
         §5!+§.§6!§.§2!H§(true);
         §5!+§.resume();
         if(this.§#!H§ == null)
         {
            this.§#!H§ = this.getGameLogicController(§5!+§.§6!§);
         }
         if(§5!+§.§6!§.§&!?§ == 0)
         {
            this.levelStarted();
         }
         §5!+§.§;&§(this.§#!H§);
         §5!+§.§6!§.background.§#!0§();
      }
      
      protected function getGameLogicController(param1:§ do§) : §>G§
      {
         return new §>G§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§4!@§)
         {
            this.§4!@§ = false;
            mNextState = §3!8§.§"Z§;
         }
         else
         {
            if(!§5!+§.isPaused)
            {
               this.§#!H§.update(param1);
            }
            if(this.§#!H§.§<&§() || this.§+!O§)
            {
               this.§+!O§ = false;
               if(this.§#!H§.§&f§ == §>G§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§7!O§)
                  {
                     this.§7!O§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §6H§.§ B§ = true;
               }
               else if(this.§#!H§.§&f§ == §>G§.§;o§)
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
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§5!+§.§7I§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §5!+§.§6!§.§'!&§();
                  break;
               case 66:
                  §5!+§.§6!§.§8<§();
            }
         }
         §5!+§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §5!+§.controller.keyUp(param1);
      }
      
      public function §"!,§() : void
      {
         var _loc1_:Number = §5!+§.§6!§.camera.§-Y§ - §5!+§.§6!§.camera.§#P§;
         var _loc2_:Number = (§5!+§.§6!§.camera.§=!6§ - §5!+§.§6!§.camera.§#P§) / 2;
         if(_loc1_ > _loc2_)
         {
            §-'§.§#Y§("Cursor_Zoom_Out");
         }
         else
         {
            §-'§.§#Y§("Cursor_Zoom_In");
         }
      }
   }
}
