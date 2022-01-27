package §>Y§
{
   import §!6§.§[!<§;
   import §"^§.§9=§;
   import §+=§.§%!H§;
   import §,!F§.§#§;
   import §3!%§.§-k§;
   import §?!=§.§<!>§;
   import flash.events.KeyboardEvent;
   
   public class §+#§ extends §<!>§
   {
       
      
      protected var §@<§:§%!H§;
      
      protected var §+!5§:Boolean = false;
      
      protected var §0k§:Boolean = false;
      
      private var §^x§:Boolean = false;
      
      public function §+#§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§@<§.init();
         this.§^x§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §-k§.§&!@§ = false;
         §9=§.§<!@§.§2k§(true);
         §9=§.§<!@§.§]! §(true);
         §9=§.resume();
         if(this.§@<§ == null)
         {
            this.§@<§ = this.getGameLogicController(§9=§.§<!@§);
         }
         if(§9=§.§<!@§.§&8§ == 0)
         {
            this.levelStarted();
         }
         §9=§.§2R§(this.§@<§);
         §9=§.§<!@§.background.§,!I§();
      }
      
      protected function getGameLogicController(param1:§#§) : §%!H§
      {
         return new §%!H§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§+!5§)
         {
            this.§+!5§ = false;
            mNextState = §6!+§.§4!C§;
         }
         else
         {
            if(!§9=§.isPaused)
            {
               this.§@<§.update(param1);
            }
            if(this.§@<§.§6Z§() || this.§0k§)
            {
               this.§0k§ = false;
               if(this.§@<§.§7l§ == §%!H§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§^x§)
                  {
                     this.§^x§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §-k§.§&!@§ = true;
               }
               else if(this.§@<§.§7l§ == §%!H§.§&!A§)
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
         if(§9=§.§<y§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §9=§.§<!@§.§[1§();
                  break;
               case 66:
                  §9=§.§<!@§.§4!1§();
            }
         }
         §9=§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §9=§.controller.keyUp(param1);
      }
      
      public function §3!N§() : void
      {
         var _loc1_:Number = §9=§.§<!@§.camera.§"o§ - §9=§.§<!@§.camera.§0!6§;
         var _loc2_:Number = (§9=§.§<!@§.camera.§>!G§ - §9=§.§<!@§.camera.§0!6§) / 2;
         if(_loc1_ > _loc2_)
         {
            §[!<§.§,[§("Cursor_Zoom_Out");
         }
         else
         {
            §[!<§.§,[§("Cursor_Zoom_In");
         }
      }
   }
}
