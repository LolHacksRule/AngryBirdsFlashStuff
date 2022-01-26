package §&!`§
{
   import § =§.§ x§;
   import §'d§.§3>§;
   import §0C§.§"!T§;
   import §>!]§.§5m§;
   import §]_§.§!F§;
   import flash.events.KeyboardEvent;
   
   public class §=2§ extends §&A§
   {
       
      
      protected var §7D§:§5m§;
      
      protected var §#!D§:Boolean = false;
      
      public function §=2§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§7D§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!T§.§,!J§ = false;
         §3>§.§8!$§.§8M§(true);
         §3>§.§8!$§.§&f§(true);
         if(this.§7D§ == null)
         {
            this.§7D§ = new §5m§(§3>§.§8!$§);
         }
         if(§3>§.§8!$§.§%!@§ == 0)
         {
            this.levelStarted();
         }
         §3>§.§ !G§(this.§7D§);
         §3>§.§8!$§.background.§9!H§();
         §!F§.§5!H§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§7D§.update(param1);
         if(this.§7D§.§@h§() || this.§#!D§)
         {
            this.§#!D§ = false;
            if(this.§7D§.§;!X§ == §5m§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §"!T§.§,!J§ = true;
               this.levelCompleted();
            }
            else if(this.§7D§.§;!X§ == §5m§.§0i§)
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
         §3>§.§8!$§.background.§@!S§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §3>§.§;O§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §3>§.§;O§.keyUp(param1);
      }
   }
}
