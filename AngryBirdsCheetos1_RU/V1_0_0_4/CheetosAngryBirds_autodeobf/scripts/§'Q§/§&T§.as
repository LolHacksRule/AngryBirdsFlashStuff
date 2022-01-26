package §'Q§
{
   import §#!O§.§%!=§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §?!F§.§0!Y§;
   import §`M§.§'C§;
   import flash.events.KeyboardEvent;
   
   public class §&T§ extends §=!R§
   {
       
      
      protected var §;e§:§%!=§;
      
      protected var §-!V§:Boolean = false;
      
      public function §&T§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§;e§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §<!,§.§ use§ = false;
         §7`§.§2'§.§8!-§(true);
         §7`§.§2'§.§5[§(true);
         if(this.§;e§ == null)
         {
            this.§;e§ = new §%!=§(§7`§.§2'§);
         }
         if(§7`§.§2'§.§;!]§ == 0)
         {
            this.levelStarted();
         }
         §7`§.§9Z§(this.§;e§);
         §7`§.§2'§.background.§#!I§();
         §'C§.§&=§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;e§.update(param1);
         if(this.§;e§.§7!!§() || this.§-!V§)
         {
            this.§-!V§ = false;
            if(this.§;e§.§6E§ == §%!=§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §<!,§.§ use§ = true;
               this.levelCompleted();
            }
            else if(this.§;e§.§6E§ == §%!=§.§4!§)
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
         §7`§.§2'§.background.§2!S§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §7`§.§`P§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §7`§.§`P§.keyUp(param1);
      }
   }
}
