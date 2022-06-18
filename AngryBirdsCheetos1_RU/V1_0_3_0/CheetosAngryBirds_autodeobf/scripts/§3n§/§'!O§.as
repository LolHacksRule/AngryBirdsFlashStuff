package §3n§
{
   import §+!^§.§'Y§;
   import §1Y§.§+$§;
   import §8E§.§&M§;
   import §>N§.§"u§;
   import §^9§.§[!L§;
   import flash.events.KeyboardEvent;
   
   public class §'!O§ extends §<D§
   {
       
      
      protected var §?W§:§&M§;
      
      protected var §#!W§:Boolean = false;
      
      public function §'!O§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§?W§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §[!L§.§<O§ = false;
         §'Y§.§@j§.§[!F§(true);
         §'Y§.§@j§.§]I§(true);
         if(this.§?W§ == null)
         {
            this.§?W§ = new §&M§(§'Y§.§@j§);
         }
         if(§'Y§.§@j§.§!!E§ == 0)
         {
            this.levelStarted();
         }
         §'Y§.§9!C§(this.§?W§);
         §'Y§.§@j§.background.§1T§();
         §"u§.§4f§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?W§.update(param1);
         if(this.§?W§.§6q§() || this.§#!W§)
         {
            this.§#!W§ = false;
            if(this.§?W§.§`!O§ == §&M§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §[!L§.§<O§ = true;
               this.levelCompleted();
            }
            else if(this.§?W§.§`!O§ == §&M§.§^!Y§)
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
         §'Y§.§@j§.background.§;f§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §'Y§.§>k§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §'Y§.§>k§.keyUp(param1);
      }
   }
}
