package §7-§
{
   import § !Y§.§2#§;
   import §&!V§.§=O§;
   import §[!L§.§#!`§;
   import §finally§.§8k§;
   import flash.events.KeyboardEvent;
   
   public class §7g§ extends §[!$§
   {
       
      
      protected var §-4§:§#!`§;
      
      protected var §+!0§:Boolean = false;
      
      public function §7g§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§-4§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §8k§.§#8§ = false;
         if(this.§-4§ == null)
         {
            this.§-4§ = new §#!`§(§2#§.§"@§);
         }
         if(§2#§.§"@§.§6§ == 0)
         {
            this.levelStarted();
         }
         §2#§.setController(this.§-4§);
         §2#§.§"@§.background.§?!K§();
         §2#§.§"@§.§0f§(true);
         §2#§.§"@§.§5$§(true);
         §2#§.§1F§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§-4§.update(param1);
         if(this.§-4§.§&!`§() || this.§+!0§)
         {
            this.§+!0§ = false;
            if(this.§-4§.§1g§ == §#!`§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §8k§.§#8§ = true;
               this.levelCompleted();
            }
            else if(this.§-4§.§1g§ == §#!`§.§"'§ && §2#§.§"@§.slingshot.§8;§())
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
         §2#§.§"@§.background.§!!B§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §2#§.§[I§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §2#§.§[I§.keyUp(param1);
      }
   }
}
