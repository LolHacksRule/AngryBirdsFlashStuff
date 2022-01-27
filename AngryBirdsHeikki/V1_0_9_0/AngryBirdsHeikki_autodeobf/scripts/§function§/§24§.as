package §function§
{
   import §&!6§.§5r§;
   import §8! §.§#z§;
   import §<<§.§%n§;
   import §>!F§.§9!Z§;
   import flash.events.KeyboardEvent;
   
   public class §24§ extends §1!@§
   {
       
      
      protected var §8!8§:§%n§;
      
      protected var §"!T§:Boolean = false;
      
      public function §24§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§8!8§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §#z§.§%!?§ = false;
         if(this.§8!8§ == null)
         {
            this.§8!8§ = new §%n§(§9!Z§.§5!$§);
         }
         if(§9!Z§.§5!$§.§1z§ == 0)
         {
            this.levelStarted();
         }
         §9!Z§.§5q§(this.§8!8§);
         §9!Z§.§5!$§.background.§"s§();
         §9!Z§.§5!$§.§8t§(true);
         §9!Z§.§5!$§.§5!=§(true);
         §9!Z§.§`5§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§8!8§.update(param1);
         if(this.§8!8§.§8!,§() || this.§"!T§)
         {
            this.§"!T§ = false;
            if(this.§8!8§.§;!U§ == §%n§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §#z§.§%!?§ = true;
               this.levelCompleted();
            }
            else if(this.§8!8§.§;!U§ == §%n§.§9w§ && §9!Z§.§5!$§.slingshot.§0J§())
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
         §9!Z§.§5!$§.background.§<!+§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §9!Z§.§[-§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §9!Z§.§[-§.keyUp(param1);
      }
   }
}
