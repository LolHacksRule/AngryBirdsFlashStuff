package §%Y§
{
   import § !F§.§;I§;
   import §-!§.§-§;
   import §0H§.§7M§;
   import §1!§.§@!Q§;
   import §]m§.§-D§;
   import flash.events.KeyboardEvent;
   
   public class §]V§ extends §,5§
   {
       
      
      protected var §'!Q§:§;I§;
      
      protected var §?!Y§:Boolean = false;
      
      public function §]V§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§'!Q§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §7M§.§continue§ = false;
         §@!Q§.§7l§.§?!J§(true);
         §@!Q§.§7l§.§9<§(true);
         if(this.§'!Q§ == null)
         {
            this.§'!Q§ = new §;I§(§@!Q§.§7l§);
         }
         if(§@!Q§.§7l§.§@x§ == 0)
         {
            this.levelStarted();
         }
         §@!Q§.§5"§(this.§'!Q§);
         §@!Q§.§7l§.background.§#e§();
         §-§.§'L§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§'!Q§.update(param1);
         if(this.§'!Q§.§^V§() || this.§?!Y§)
         {
            this.§?!Y§ = false;
            if(this.§'!Q§.§2!"§ == §;I§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §7M§.§continue§ = true;
               this.levelCompleted();
            }
            else if(this.§'!Q§.§2!"§ == §;I§.§]1§)
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
         §@!Q§.§7l§.background.§=0§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §@!Q§.§ !=§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §@!Q§.§ !=§.keyUp(param1);
      }
   }
}
