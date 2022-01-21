package §4%§
{
   import §+-§.§3!5§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §[#§.§!p§;
   import flash.events.KeyboardEvent;
   
   public class §^z§ extends §%0§
   {
       
      
      protected var §"5§:§!p§;
      
      protected var §8[§:Boolean = false;
      
      public function §^z§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§"5§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §3!5§.§ !B§ = false;
         if(this.§"5§ == null)
         {
            this.§"5§ = new §!p§(§=!@§.§>!T§);
         }
         if(§=!@§.§>!T§.§3+§ == 0)
         {
            this.levelStarted();
         }
         §=!@§.setController(this.§"5§);
         §=!@§.§>!T§.background.§?&§();
         §=!@§.§>!T§.§>h§(true);
         §=!@§.§>!T§.§8!2§(true);
         §=!@§.§2f§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§"5§.update(param1);
         if(this.§"5§.§5Y§() || this.§8[§)
         {
            this.§8[§ = false;
            if(this.§"5§.§]z§ == §!p§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §3!5§.§ !B§ = true;
               this.levelCompleted();
            }
            else if(this.§"5§.§]z§ == §!p§.§7r§ && §=!@§.§>!T§.slingshot.§5W§())
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
         §=!@§.§>!T§.background.§8!7§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §=!@§.§>!b§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §=!@§.§>!b§.keyUp(param1);
      }
   }
}
