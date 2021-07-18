package §'!O§
{
   import §-!"§.§=p§;
   import §3!b§.§+!,§;
   import §9b§.§"!S§;
   import §^!5§.§,4§;
   import flash.events.KeyboardEvent;
   
   public class §<O§ extends §=j§
   {
       
      
      protected var §"!J§:§+!,§;
      
      protected var §!2§:Boolean = false;
      
      public function §<O§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§"!J§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §,4§.§58§ = false;
         if(this.§"!J§ == null)
         {
            this.§"!J§ = new §+!,§(§"!S§.§-!7§);
         }
         if(§"!S§.§-!7§.§#!A§ == 0)
         {
            this.levelStarted();
         }
         §"!S§.§8m§(this.§"!J§);
         §"!S§.§-!7§.background.§`!B§();
         §"!S§.§-!7§.§%2§(true);
         §"!S§.§-!7§.§3g§(true);
         §"!S§.§^e§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§"!J§.update(param1);
         if(this.§"!J§.§^Z§() || this.§!2§)
         {
            this.§!2§ = false;
            if(this.§"!J§.§#E§ == §+!,§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §,4§.§58§ = true;
               this.levelCompleted();
            }
            else if(this.§"!J§.§#E§ == §+!,§.§+!J§ && §"!S§.§-!7§.slingshot.§@!§())
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
         §"!S§.§-!7§.background.§=b§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §"!S§.§]O§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §"!S§.§]O§.keyUp(param1);
      }
   }
}
