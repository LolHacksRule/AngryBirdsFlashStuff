package §<!U§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §<!+§.§[!!§;
   import §]2§.§[4§;
   import §]C§.§5z§;
   import flash.events.KeyboardEvent;
   
   public class §#W§ extends §]u§
   {
       
      
      protected var §4b§:§5z§;
      
      protected var §+!4§:Boolean = false;
      
      protected var §?S§:Boolean = false;
      
      public function §#W§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§4b§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §[!!§.§"#§ = false;
         §[&§.§&!'§.§>!D§(true);
         §[&§.§&!'§.§"C§(true);
         if(this.§4b§ == null)
         {
            this.§4b§ = new §5z§(§[&§.§&!'§);
         }
         if(§[&§.§&!'§.§@3§ == 0)
         {
            this.levelStarted();
         }
         §[&§.§2P§(this.§4b§);
         §[&§.§&!'§.background.§?O§();
         §0Z§.§-m§.§5!T§ = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§+!4§)
         {
            this.§+!4§ = false;
            mNextState = § !#§.§`O§;
         }
         else
         {
            this.§4b§.update(param1);
            if(this.§4b§.§#h§() || this.§?S§)
            {
               this.§?S§ = false;
               if(this.§4b§.§0!0§ == §5z§.LEVEL_STATE_VICTORY2_END)
               {
                  mNextState = this.getVictoryState();
                  §[!!§.§"#§ = true;
                  this.levelCompleted();
               }
               else if(this.§4b§.§0!0§ == §5z§.§=g§)
               {
                  mNextState = this.getLoserState();
               }
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
         §[&§.§&!'§.background.§4v§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §[&§.§&#§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §[&§.§&#§.keyUp(param1);
      }
   }
}
