package §+!9§
{
   import §,J§.§7!A§;
   import §4;§.§,h§;
   import §4t§.§`c§;
   import §?!P§.§@@§;
   import flash.events.KeyboardEvent;
   
   public class §+V§ extends §3!!§
   {
       
      
      protected var §2s§:§`c§;
      
      protected var § A§:Boolean = false;
      
      public function §+V§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§2s§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §7!A§.§ ![§ = false;
         if(this.§2s§ == null)
         {
            this.§2s§ = new §`c§(§@@§.§ !8§);
         }
         if(§@@§.§ !8§.§-L§ == 0)
         {
            this.levelStarted();
         }
         §@@§.§1!V§(this.§2s§);
         §@@§.§ !8§.background.§=w§();
         §@@§.§ !8§.§5!?§(true);
         §@@§.§ !8§.§,!Y§(true);
         §@@§.§"Q§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§2s§.update(param1);
         if(this.§2s§.§>!!§() || this.§ A§)
         {
            this.§ A§ = false;
            if(this.§2s§.§"!>§ == §`c§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §7!A§.§ ![§ = true;
               this.levelCompleted();
            }
            else if(this.§2s§.§"!>§ == §`c§.§;M§ && §@@§.§ !8§.slingshot.§3@§())
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
         §@@§.§ !8§.background.§,U§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §@@§.§6!L§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §@@§.§6!L§.keyUp(param1);
      }
   }
}
