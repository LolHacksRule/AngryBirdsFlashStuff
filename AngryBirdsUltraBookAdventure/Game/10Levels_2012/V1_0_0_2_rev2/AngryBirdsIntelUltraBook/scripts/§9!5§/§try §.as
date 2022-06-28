package §9!5§
{
   import §"m§.§`!=§;
   import §,!5§.§^g§;
   import §0!N§.LevelManager;
   import §<!>§.§?Y§;
   import §^_§.§=H§;
   import flash.events.KeyboardEvent;
   import §true§.§ _§;
   
   public class §try § extends §?Y§
   {
       
      
      protected var §%!q§:§`!=§;
      
      protected var §5d§:Boolean = false;
      
      protected var §6!`§:Boolean = false;
      
      private var §24§:Boolean = false;
      
      public function §try §(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§%!q§.init();
         this.§24§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§?G§ = false;
         § _§.§!6§.§2!d§(true);
         § _§.§!6§.§"C§(true);
         § _§.resume();
         if(this.§%!q§ == null)
         {
            this.§%!q§ = this.getGameLogicController(§ _§.§!6§);
         }
         if(§ _§.§!6§.§ i§ == 0)
         {
            this.levelStarted();
         }
         § _§.setController(this.§%!q§);
         § _§.§!6§.background.§#!C§();
      }
      
      protected function getGameLogicController(param1:§^g§) : §`!=§
      {
         return new §`!=§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§5d§)
         {
            this.§5d§ = false;
            mNextState = §%@§.§?h§;
         }
         else
         {
            if(!§ _§.isPaused)
            {
               this.§%!q§.update(param1);
            }
            if(this.§%!q§.§]!!§() || this.§6!`§)
            {
               this.§6!`§ = false;
               if(this.§%!q§.§2?§ == §`!=§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§24§)
                  {
                     this.§24§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§?G§ = true;
               }
               else if(this.§%!q§.§2?§ == §`!=§.§[3§)
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
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(§ _§.§[!d§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  § _§.§!6§.§1W§();
                  break;
               case 66:
                  § _§.§!6§.§?!s§();
            }
         }
         § _§.§?!]§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         § _§.§?!]§.keyUp(param1);
      }
      
      public function §3c§() : void
      {
         var _loc1_:Number = § _§.§!6§.camera.§=!I§ - § _§.§!6§.camera.§#!4§;
         var _loc2_:Number = (§ _§.§!6§.camera.§8V§ - § _§.§!6§.camera.§#!4§) / 2;
         if(_loc1_ > _loc2_)
         {
            §=H§.§>@§("Cursor_Zoom_Out");
         }
         else
         {
            §=H§.§>@§("Cursor_Zoom_In");
         }
      }
   }
}
