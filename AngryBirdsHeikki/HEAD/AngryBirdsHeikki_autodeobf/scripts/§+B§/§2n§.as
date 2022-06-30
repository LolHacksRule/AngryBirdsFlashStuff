package §+B§
{
   import §,!V§.§<!?§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §>!G§.§6!9§;
   import flash.events.KeyboardEvent;
   
   public class §2n§ extends §-2§
   {
       
      
      protected var §50§:§<!?§;
      
      protected var §'e§:Boolean = false;
      
      public function §2n§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§50§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §#w§.§1!G§ = false;
         if(this.§50§ == null)
         {
            this.§50§ = new §<!?§(§&#§.§3!D§);
         }
         if(§&#§.§3!D§.§"i§ == 0)
         {
            this.levelStarted();
         }
         §&#§.§>A§(this.§50§);
         §&#§.§3!D§.background.§&!3§();
         §&#§.§3!D§.§"!E§(true);
         §&#§.§3!D§.§>!?§(true);
         §&#§.§3!H§();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§50§.update(param1);
         if(this.§50§.§1!X§() || this.§'e§)
         {
            this.§'e§ = false;
            if(this.§50§.§,8§ == §<!?§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §#w§.§1!G§ = true;
               this.levelCompleted();
            }
            else if(this.§50§.§,8§ == §<!?§.§0!"§ && §&#§.§3!D§.slingshot.§3!C§())
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
         §&#§.§3!D§.background.§9!B§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §&#§.§"1§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §&#§.§"1§.keyUp(param1);
      }
   }
}
