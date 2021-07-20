package §>!A§
{
   import §"!&§.§#!,§;
   import §+!"§.§@P§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §?b§.§7!,§;
   import §@!H§.§"E§;
   import flash.events.KeyboardEvent;
   
   public class §^e§ extends §#!,§
   {
       
      
      protected var §7!9§:§"E§;
      
      protected var §3!1§:Boolean = false;
      
      protected var §>!%§:Boolean = false;
      
      private var §3s§:Boolean = false;
      
      public function §^e§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§7!9§.init();
         this.§3s§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §5j§.§%J§ = false;
         §[k§.§&@§.§`!G§(true);
         §[k§.§&@§.§%7§(true);
         §[k§.resume();
         if(this.§7!9§ == null)
         {
            this.§7!9§ = this.getGameLogicController(§[k§.§&@§);
         }
         if(§[k§.§&@§.§2!,§ == 0)
         {
            this.levelStarted();
         }
         §[k§.§^L§(this.§7!9§);
         §[k§.§&@§.background.§6!!§();
      }
      
      protected function getGameLogicController(param1:§7!,§) : §"E§
      {
         return new §"E§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§3!1§)
         {
            this.§3!1§ = false;
            mNextState = §?K§.§?x§;
         }
         else
         {
            if(!§[k§.isPaused)
            {
               this.§7!9§.update(param1);
            }
            if(this.§7!9§.§#!%§() || this.§>!%§)
            {
               this.§>!%§ = false;
               if(this.§7!9§.§7H§ == §"E§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§3s§)
                  {
                     this.§3s§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §5j§.§%J§ = true;
               }
               else if(this.§7!9§.§7H§ == §"E§.§return§)
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
         if(§[k§.§,#§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §[k§.§&@§.§1_§();
                  break;
               case 66:
                  §[k§.§&@§.§45§();
            }
         }
         §[k§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §[k§.controller.keyUp(param1);
      }
      
      public function §#U§() : void
      {
         var _loc1_:Number = §[k§.§&@§.camera.§-!D§ - §[k§.§&@§.camera.§'!@§;
         var _loc2_:Number = (§[k§.§&@§.camera.§?!$§ - §[k§.§&@§.camera.§'!@§) / 2;
         if(_loc1_ > _loc2_)
         {
            §@P§.§,l§("Cursor_Zoom_Out");
         }
         else
         {
            §@P§.§,l§("Cursor_Zoom_In");
         }
      }
   }
}
