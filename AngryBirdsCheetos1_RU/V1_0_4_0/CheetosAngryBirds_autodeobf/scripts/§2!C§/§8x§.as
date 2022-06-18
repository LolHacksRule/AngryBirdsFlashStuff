package §2!C§
{
   import § A§.§"Y§;
   import §&h§.§+Y§;
   import §39§.§-W§;
   import §94§.§&!7§;
   import §^Q§.§,^§;
   import flash.events.KeyboardEvent;
   
   public class §8x§ extends §1!b§
   {
       
      
      protected var § >§:§"Y§;
      
      protected var §<!A§:Boolean = false;
      
      public function §8x§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§ >§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §-W§.§=f§ = false;
         §,^§.§0K§.§5W§(true);
         §,^§.§0K§.§@!_§(true);
         if(this.§ >§ == null)
         {
            this.§ >§ = new §"Y§(§,^§.§0K§);
         }
         if(§,^§.§0K§.§-!a§ == 0)
         {
            this.levelStarted();
         }
         §,^§.§"1§(this.§ >§);
         §,^§.§0K§.background.§9-§();
         §&!7§.§ h§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§ >§.update(param1);
         if(this.§ >§.§1!&§() || this.§<!A§)
         {
            this.§<!A§ = false;
            if(this.§ >§.§6y§ == §"Y§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §-W§.§=f§ = true;
               this.levelCompleted();
            }
            else if(this.§ >§.§6y§ == §"Y§.§3,§)
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
         §,^§.§0K§.background.§ k§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §,^§.§;§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §,^§.§;§.keyUp(param1);
      }
   }
}
