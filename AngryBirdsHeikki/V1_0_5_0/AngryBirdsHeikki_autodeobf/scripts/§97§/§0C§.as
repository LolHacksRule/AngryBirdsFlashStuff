package §97§
{
   import §"!G§.§6V§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §=X§.§7!4§;
   import flash.events.KeyboardEvent;
   
   public class §0C§ extends §62§
   {
       
      
      protected var §2!'§:§6V§;
      
      protected var §1!b§:Boolean = false;
      
      public function §0C§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§2!'§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §7!4§.§>=§ = false;
         if(this.§2!'§ == null)
         {
            this.§2!'§ = new §6V§(§1L§.§"f§);
         }
         if(§1L§.§"f§.§3!5§ == 0)
         {
            this.levelStarted();
         }
         §1L§.§=c§(this.§2!'§);
         §1L§.§"f§.background.§45§();
         §1L§.§"f§.§2!A§(true);
         §1L§.§"f§.§`f§(true);
         §1L§.§'!Q§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§2!'§.update(param1);
         if(this.§2!'§.§=!W§() || this.§1!b§)
         {
            this.§1!b§ = false;
            if(this.§2!'§.§;!6§ == §6V§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §7!4§.§>=§ = true;
               this.levelCompleted();
            }
            else if(this.§2!'§.§;!6§ == §6V§.§5!#§ && §1L§.§"f§.slingshot.§1g§())
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
         §1L§.§"f§.background.§`=§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §1L§.§[>§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §1L§.§[>§.keyUp(param1);
      }
   }
}
