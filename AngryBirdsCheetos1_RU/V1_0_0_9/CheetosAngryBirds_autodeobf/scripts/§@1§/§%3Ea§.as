package §@1§
{
   import §"!@§.§3!+§;
   import §"!E§.§0O§;
   import §'!S§.§,!%§;
   import §7!U§.§2!7§;
   import §<!P§.§>l§;
   import flash.events.KeyboardEvent;
   
   public class §>a§ extends §]R§
   {
       
      
      protected var §11§:§0O§;
      
      protected var §?B§:Boolean = false;
      
      public function §>a§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§11§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §3!+§.§,!^§ = false;
         §2!7§.§5G§.§@4§(true);
         §2!7§.§5G§.§4h§(true);
         if(this.§11§ == null)
         {
            this.§11§ = new §0O§(§2!7§.§5G§);
         }
         if(§2!7§.§5G§.§5!R§ == 0)
         {
            this.levelStarted();
         }
         §2!7§.§`!@§(this.§11§);
         §2!7§.§5G§.background.§false§();
         §,!%§.§7x§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§11§.update(param1);
         if(this.§11§.§^?§() || this.§?B§)
         {
            this.§?B§ = false;
            if(this.§11§.§2y§ == §0O§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §3!+§.§,!^§ = true;
               this.levelCompleted();
            }
            else if(this.§11§.§2y§ == §0O§.§+?§)
            {
               mNextState = this.getLoserState();
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
         §2!7§.§5G§.background.§2!§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §2!7§.§@!H§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §2!7§.§@!H§.keyUp(param1);
      }
   }
}
