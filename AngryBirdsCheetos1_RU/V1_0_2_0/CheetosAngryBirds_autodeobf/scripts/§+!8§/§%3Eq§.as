package §+!8§
{
   import §"I§.§-x§;
   import §#b§.§5!#§;
   import §2!P§.§6=§;
   import §6!P§.§5!+§;
   import §@!W§.§8!W§;
   import flash.events.KeyboardEvent;
   
   public class §>q§ extends §;A§
   {
       
      
      protected var §1B§:§5!+§;
      
      protected var §4!<§:Boolean = false;
      
      public function §>q§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§1B§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!#§.§%!$§ = false;
         §8!W§.§=X§.§=!@§(true);
         §8!W§.§=X§.§!6§(true);
         if(this.§1B§ == null)
         {
            this.§1B§ = new §5!+§(§8!W§.§=X§);
         }
         if(§8!W§.§=X§.§?!#§ == 0)
         {
            this.levelStarted();
         }
         §8!W§.§+!§(this.§1B§);
         §8!W§.§=X§.background.§?t§();
         §6=§.§6>§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§1B§.update(param1);
         if(this.§1B§.§-?§() || this.§4!<§)
         {
            this.§4!<§ = false;
            if(this.§1B§.§9!!§ == §5!+§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §5!#§.§%!$§ = true;
               this.levelCompleted();
            }
            else if(this.§1B§.§9!!§ == §5!+§.§>X§)
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
         §8!W§.§=X§.background.§ ?§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §8!W§.§5!B§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §8!W§.§5!B§.keyUp(param1);
      }
   }
}
