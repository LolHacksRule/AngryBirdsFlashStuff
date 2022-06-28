package §2!U§
{
   import §"!i§.LevelManager;
   import §1!B§.§7n§;
   import §40§.§5G§;
   import §48§.§3!K§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import flash.events.KeyboardEvent;
   
   public class §]!y§ extends §9![§
   {
       
      
      protected var §5!P§:§3!K§;
      
      protected var §>!6§:Boolean = false;
      
      protected var §20§:Boolean = false;
      
      private var §-!O§:Boolean = false;
      
      public function §]!y§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§5!P§.init();
         this.§-!O§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§-!v§ = false;
         §,!s§.§=!I§.§!C§(true);
         §,!s§.§=!I§.§1!9§(true);
         §,!s§.resume();
         if(this.§5!P§ == null)
         {
            this.§5!P§ = this.getGameLogicController(§,!s§.§=!I§);
         }
         §,!s§.setController(this.§5!P§);
         if(§,!s§.§=!I§.§0!6§ == 0)
         {
            this.levelStarted();
         }
         §,!s§.§=!I§.background.§3!c§();
      }
      
      protected function getGameLogicController(param1:§5G§) : §3!K§
      {
         return new §3!K§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§>!6§)
         {
            this.§>!6§ = false;
            mNextState = §@!A§.§'!q§;
         }
         else
         {
            if(!§,!s§.isPaused)
            {
               this.§5!P§.update(param1);
            }
            if(this.§5!P§.§2d§() || this.§20§)
            {
               this.§20§ = false;
               if(this.§5!P§.§4!j§ == §3!K§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§-!O§)
                  {
                     this.§-!O§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§-!v§ = true;
               }
               else if(this.§5!P§.§4!j§ == §3!K§.§%!%§)
               {
                  this.§<E§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §<E§() : void
      {
         mNextState = this.getLoserState();
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
         if(§,!s§.§?C§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §,!s§.§=!I§.§?0§();
                  break;
               case 66:
                  §,!s§.§=!I§.§6!Y§();
            }
         }
         §,!s§.§ Q§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §,!s§.§ Q§.keyUp(param1);
      }
      
      public function §72§() : void
      {
         var _loc1_:Number = §,!s§.§=!I§.camera.§0l§ - §,!s§.§=!I§.camera.§5!9§;
         var _loc2_:Number = (§,!s§.§=!I§.camera.§>!n§ - §,!s§.§=!I§.camera.§5!9§) / 2;
         if(_loc1_ > _loc2_)
         {
            §7n§.§!!-§("Cursor_Zoom_Out");
         }
         else
         {
            §7n§.§!!-§("Cursor_Zoom_In");
         }
      }
   }
}
