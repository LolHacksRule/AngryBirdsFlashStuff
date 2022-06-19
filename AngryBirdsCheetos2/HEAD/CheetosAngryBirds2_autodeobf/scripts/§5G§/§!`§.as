package §5G§
{
   import § g§.§<n§;
   import §"§.§%!$§;
   import §6;§.§%[§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.events.KeyboardEvent;
   
   public class §!`§ extends §?,§
   {
       
      
      protected var §<M§:§<n§;
      
      protected var § !N§:Boolean = false;
      
      public function §!`§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§<M§.init();
      }
      
      override public function activate() : void
      {
         super.activate();
         §@;§.§5!2§ = false;
         §@!Z§.§;!,§.§;!i§(true);
         §@!Z§.§;!,§.§%d§(true);
         if(this.§<M§ == null)
         {
            this.§<M§ = new §<n§(§@!Z§.§;!,§);
         }
         if(§@!Z§.§;!,§.§5!H§ == 0)
         {
            this.levelStarted();
         }
         §@!Z§.§=!2§(this.§<M§);
         §@!Z§.§;!,§.background.§^r§();
         §%[§.§6+§.isPaused = false;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§<M§.update(param1);
         if(this.§<M§.§^o§() || this.§ !N§)
         {
            this.§ !N§ = false;
            if(this.§<M§.mLevelState == §<n§.LEVEL_STATE_VICTORY2_END)
            {
               mNextState = this.getVictoryState();
               §@;§.§5!2§ = true;
               this.levelCompleted();
            }
            else if(this.§<M§.mLevelState == §<n§.§="§)
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
         §@!Z§.§;!,§.background.§#!Y§();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         §@!Z§.§^&§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §@!Z§.§^&§.keyUp(param1);
      }
   }
}
