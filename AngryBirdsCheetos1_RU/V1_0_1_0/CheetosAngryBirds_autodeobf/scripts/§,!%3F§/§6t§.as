package §,!?§
{
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §-!O§.§7'§;
   import §-D§.§]!<§;
   import §>8§.§?2§;
   import flash.events.KeyboardEvent;
   
   public class §6t§ extends §-! §
   {
       
      
      protected var §"r§:§]!<§;
      
      protected var §1!4§:Boolean = false;
      
      public function §6t§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§"r§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §?2§.§0p§ = false;
         §"_§.§+!^§.§[!U§(true);
         §"_§.§+!^§.§+Y§(true);
         if(this.§"r§ == null)
         {
            this.§"r§ = new §]!<§(§"_§.§+!^§);
         }
         if(§"_§.§+!^§.§9!G§ == 0)
         {
            this.levelStarted();
         }
         §"_§.§>!'§(this.§"r§);
         §"_§.§+!^§.background.§,w§();
         §<h§.§4!J§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§"r§.update(param1);
         if(this.§"r§.§%!<§() || this.§1!4§)
         {
            this.§1!4§ = false;
            if(this.§"r§.§^! § == §]!<§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §?2§.§0p§ = true;
               this.levelCompleted();
            }
            else if(this.§"r§.§^! § == §]!<§.§<v§)
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
         §"_§.§+!^§.background.§%!_§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §"_§.§,z§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §"_§.§,z§.keyUp(param1);
      }
   }
}
