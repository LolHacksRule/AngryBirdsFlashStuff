package §%w§
{
   import §-!@§.§@!Q§;
   import §-H§.§&c§;
   import §?m§.§7?§;
   import §]!F§.§7e§;
   import §`C§.§9!'§;
   import flash.events.KeyboardEvent;
   
   public class §[>§ extends §;s§
   {
       
      
      protected var §>_§:§@!Q§;
      
      protected var §6X§:Boolean = false;
      
      public function §[>§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§>_§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §7e§.§-!F§ = false;
         §7?§.§4!H§.§'![§(true);
         §7?§.§4!H§.§@^§(true);
         if(this.§>_§ == null)
         {
            this.§>_§ = new §@!Q§(§7?§.§4!H§);
         }
         if(§7?§.§4!H§.§#5§ == 0)
         {
            this.levelStarted();
         }
         §7?§.§-!P§(this.§>_§);
         §7?§.§4!H§.background.§+^§();
         §9!'§.§`!@§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§>_§.update(param1);
         if(this.§>_§.§-2§() || this.§6X§)
         {
            this.§6X§ = false;
            if(this.§>_§.§8!Y§ == §@!Q§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §7e§.§-!F§ = true;
               this.levelCompleted();
            }
            else if(this.§>_§.§8!Y§ == §@!Q§.§5;§)
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
         §7?§.§4!H§.background.§5!<§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §7?§.§75§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §7?§.§75§.keyUp(param1);
      }
   }
}
