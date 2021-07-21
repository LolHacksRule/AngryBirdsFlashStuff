package § true§
{
   import §'6§.§^t§;
   import §+_§.§7[§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§`R§;
   import §`!4§.§6l§;
   import flash.events.KeyboardEvent;
   
   public class §-g§ extends §,!?§
   {
       
      
      protected var §='§:§7[§;
      
      protected var §[0§:Boolean = false;
      
      protected var §>1§:Boolean = false;
      
      private var §8!5§:Boolean = false;
      
      public function §-g§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§='§.init();
         this.§8!5§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §`R§.§%!3§ = false;
         §[+§.§,!&§.§`9§(true);
         §[+§.§,!&§.§7T§(true);
         §[+§.resume();
         if(this.§='§ == null)
         {
            this.§='§ = this.getGameLogicController(§[+§.§,!&§);
         }
         §[+§.§^!0§(this.§='§);
         if(§[+§.§,!&§.§ 6§ == 0)
         {
            this.levelStarted();
         }
         §[+§.§,!&§.background.§8O§();
      }
      
      protected function getGameLogicController(param1:§6l§) : §7[§
      {
         return new §7[§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§[0§)
         {
            this.§[0§ = false;
            mNextState = §5z§.§`W§;
         }
         else
         {
            if(!§[+§.isPaused)
            {
               this.§='§.update(param1);
            }
            if(this.§='§.§#!=§() || this.§>1§)
            {
               this.§>1§ = false;
               if(this.§='§.§&@§ == §7[§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§8!5§)
                  {
                     this.§8!5§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §`R§.§%!3§ = true;
               }
               else if(this.§='§.§&@§ == §7[§.§-%§)
               {
                  this.§&a§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §&a§() : void
      {
         mNextState = this.getLoserState();
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
         if(§[+§.§^!I§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §[+§.§,!&§.§^r§();
                  break;
               case 66:
                  §[+§.§,!&§.§=h§();
            }
         }
         §[+§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §[+§.controller.keyUp(param1);
      }
      
      public function §@!;§() : void
      {
         var _loc1_:Number = §[+§.§,!&§.camera.§3,§ - §[+§.§,!&§.camera.§4G§;
         var _loc2_:Number = (§[+§.§,!&§.camera.§8U§ - §[+§.§,!&§.camera.§4G§) / 2;
         if(_loc1_ > _loc2_)
         {
            §^t§.§@!A§("Cursor_Zoom_Out");
         }
         else
         {
            §^t§.§@!A§("Cursor_Zoom_In");
         }
      }
   }
}
