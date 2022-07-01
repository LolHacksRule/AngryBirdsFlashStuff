package §1!F§
{
   import § !r§.§%s§;
   import §-!0§.§1^§;
   import §5#§.§@o§;
   import §<!<§.§7E§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.events.KeyboardEvent;
   
   public class §@!D§ extends §;!!§
   {
       
      
      protected var §5!J§:§@o§;
      
      protected var §,![§:Boolean = false;
      
      protected var §4!,§:Boolean = false;
      
      private var §3!_§:Boolean = false;
      
      public function §@!D§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§5!J§.init();
         this.§3!_§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §1^§.§,6§ = false;
         §'!V§.§1!2§.§-I§(true);
         §'!V§.§1!2§.§?m§(true);
         §'!V§.resume();
         if(this.§5!J§ == null)
         {
            this.§5!J§ = this.getGameLogicController(§'!V§.§1!2§);
         }
         if(§'!V§.§1!2§.§1z§ == 0)
         {
            this.levelStarted();
         }
         §'!V§.§>_§(this.§5!J§);
         §'!V§.§1!2§.background.§[!<§();
      }
      
      protected function getGameLogicController(param1:§7E§) : §@o§
      {
         return new §@o§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§,![§)
         {
            this.§,![§ = false;
            mNextState = §^r§.STATE_NAME;
         }
         else
         {
            if(!§'!V§.§=!A§)
            {
               this.§5!J§.update(param1);
            }
            if(this.§5!J§.§,!>§() || this.§4!,§)
            {
               this.§4!,§ = false;
               if(this.§5!J§.§<!]§ == §@o§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§3!_§)
                  {
                     this.§3!_§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §1^§.§,6§ = true;
               }
               else if(this.§5!J§.§<!]§ == §@o§.§%!s§)
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
         if(§'!V§.§>!q§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §'!V§.§1!2§.§=B§();
                  break;
               case 66:
                  §'!V§.§1!2§.§6T§();
            }
         }
         §'!V§.§?!G§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §'!V§.§?!G§.keyUp(param1);
      }
      
      public function §-!K§() : void
      {
         var _loc1_:Number = §'!V§.§1!2§.camera.§[!+§ - §'!V§.§1!2§.camera.§<_§;
         var _loc2_:Number = (§'!V§.§1!2§.camera.§9! § - §'!V§.§1!2§.camera.§<_§) / 2;
         if(_loc1_ > _loc2_)
         {
            §%s§.§ do§("Cursor_Zoom_Out");
         }
         else
         {
            §%s§.§ do§("Cursor_Zoom_In");
         }
      }
   }
}
