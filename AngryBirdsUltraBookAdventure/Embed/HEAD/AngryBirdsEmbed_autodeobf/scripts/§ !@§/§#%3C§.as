package § !@§
{
   import §1!-§.§[4§;
   import §3a§.§'q§;
   import §5!L§.§=w§;
   import §6A§.§ !§;
   import §7g§.§1Q§;
   import §>!7§.§@!+§;
   import flash.events.KeyboardEvent;
   
   public class §#<§ extends §1Q§
   {
       
      
      protected var §!!&§:§@!+§;
      
      protected var §2!'§:Boolean = false;
      
      protected var § W§:Boolean = false;
      
      private var §5!A§:Boolean = false;
      
      public function §#<§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§!!&§.init();
         this.§5!A§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §[4§.§<!L§ = false;
         §=w§.§ o§.§7!E§(true);
         §=w§.§ o§.§&!B§(true);
         §=w§.resume();
         if(this.§!!&§ == null)
         {
            this.§!!&§ = this.getGameLogicController(§=w§.§ o§);
         }
         §=w§.§>@§(this.§!!&§);
         if(§=w§.§ o§.§&!?§ == 0)
         {
            this.levelStarted();
         }
         §=w§.§ o§.background.§@!K§();
      }
      
      protected function getGameLogicController(param1:§ !§) : §@!+§
      {
         return new §@!+§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§2!'§)
         {
            this.§2!'§ = false;
            mNextState = §7§.§>9§;
         }
         else
         {
            if(!§=w§.isPaused)
            {
               this.§!!&§.update(param1);
            }
            if(this.§!!&§.§9$§() || this.§ W§)
            {
               this.§ W§ = false;
               if(this.§!!&§.§?!8§ == §@!+§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§5!A§)
                  {
                     this.§5!A§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §[4§.§<!L§ = true;
               }
               else if(this.§!!&§.§?!8§ == §@!+§.§%<§)
               {
                  this.§7X§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §7X§() : void
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
         if(§=w§.§%Z§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §=w§.§ o§.§`!>§();
                  break;
               case 66:
                  §=w§.§ o§.§^d§();
            }
         }
         §=w§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §=w§.controller.keyUp(param1);
      }
      
      public function §@T§() : void
      {
         var _loc1_:Number = §=w§.§ o§.camera.§^!4§ - §=w§.§ o§.camera.§0g§;
         var _loc2_:Number = (§=w§.§ o§.camera.§'!D§ - §=w§.§ o§.camera.§0g§) / 2;
         if(_loc1_ > _loc2_)
         {
            §'q§.§7C§("Cursor_Zoom_Out");
         }
         else
         {
            §'q§.§7C§("Cursor_Zoom_In");
         }
      }
   }
}
