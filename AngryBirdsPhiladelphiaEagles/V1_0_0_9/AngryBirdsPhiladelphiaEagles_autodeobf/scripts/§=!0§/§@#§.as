package §=!0§
{
   import §"1§.§>I§;
   import §,T§.§[-§;
   import §6!L§.§&u§;
   import §=!1§.§"!D§;
   import §=z§.§0!E§;
   import §^w§.§-!,§;
   import flash.events.KeyboardEvent;
   
   public class §@#§ extends §-!,§
   {
       
      
      protected var §8!0§:§"!D§;
      
      protected var §%!%§:Boolean = false;
      
      protected var §!!+§:Boolean = false;
      
      private var §=d§:Boolean = false;
      
      public function §@#§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§8!0§.init();
         this.§=d§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §&u§.§6!E§ = false;
         §0!E§.§9!B§.§5!3§(true);
         §0!E§.§9!B§.§7U§(true);
         §0!E§.resume();
         if(this.§8!0§ == null)
         {
            this.§8!0§ = this.getGameLogicController(§0!E§.§9!B§);
         }
         if(§0!E§.§9!B§.§`u§ == 0)
         {
            this.levelStarted();
         }
         §0!E§.§7!H§(this.§8!0§);
         §0!E§.§9!B§.background.§1Z§();
      }
      
      protected function getGameLogicController(param1:§[-§) : §"!D§
      {
         return new §"!D§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§%!%§)
         {
            this.§%!%§ = false;
            mNextState = §7y§.§@§;
         }
         else
         {
            if(!§0!E§.isPaused)
            {
               this.§8!0§.update(param1);
            }
            if(this.§8!0§.§91§() || this.§!!+§)
            {
               this.§!!+§ = false;
               if(this.§8!0§.§;!;§ == §"!D§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§=d§)
                  {
                     this.§=d§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §&u§.§6!E§ = true;
               }
               else if(this.§8!0§.§;!;§ == §"!D§.§64§)
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
         if(§0!E§.§=o§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §0!E§.§9!B§.§!!4§();
                  break;
               case 66:
                  §0!E§.§9!B§.§@!'§();
            }
         }
         §0!E§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §0!E§.controller.keyUp(param1);
      }
      
      public function §+%§() : void
      {
         var _loc1_:Number = §0!E§.§9!B§.camera.§=q§ - §0!E§.§9!B§.camera.§#h§;
         var _loc2_:Number = (§0!E§.§9!B§.camera.§8O§ - §0!E§.§9!B§.camera.§#h§) / 2;
         if(_loc1_ > _loc2_)
         {
            §>I§.§<l§("Cursor_Zoom_Out");
         }
         else
         {
            §>I§.§<l§("Cursor_Zoom_In");
         }
      }
   }
}
