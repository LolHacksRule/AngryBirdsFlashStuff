package §[l§
{
   import §"!g§.§`!B§;
   import §#M§.§+!Z§;
   import §5!5§.§1!b§;
   import §7_§.§^d§;
   import flash.events.KeyboardEvent;
   
   public class §;4§ extends §,Q§
   {
       
      
      protected var §9!$§:§`!B§;
      
      protected var §+g§:Boolean = false;
      
      public function §;4§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§9!$§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §^d§.§`>§ = false;
         if(this.§9!$§ == null)
         {
            this.§9!$§ = new §`!B§(§+!Z§.§?!<§);
         }
         if(§+!Z§.§?!<§.§=!N§ == 0)
         {
            this.levelStarted();
         }
         §+!Z§.setController(this.§9!$§);
         §+!Z§.§?!<§.background.§6!_§();
         §+!Z§.§?!<§.§,!7§(true);
         §+!Z§.§?!<§.§#!Z§(true);
         §+!Z§.§6d§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§9!$§.update(param1);
         if(this.§9!$§.§!U§() || this.§+g§)
         {
            this.§+g§ = false;
            if(this.§9!$§.§;H§ == §`!B§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §^d§.§`>§ = true;
               this.levelCompleted();
            }
            else if(this.§9!$§.§;H§ == §`!B§.§5<§ && §+!Z§.§?!<§.slingshot.§9?§())
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
         §+!Z§.§?!<§.background.§2>§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §+!Z§.§8j§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §+!Z§.§8j§.keyUp(param1);
      }
   }
}
