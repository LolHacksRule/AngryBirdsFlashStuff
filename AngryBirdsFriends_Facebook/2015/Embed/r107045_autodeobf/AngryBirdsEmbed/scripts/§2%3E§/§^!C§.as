package §2>§
{
   import §3u§.§7b§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §9s§.§^9§;
   import §@!;§.§`P§;
   import flash.events.KeyboardEvent;
   
   public class §^!C§ extends §9Y§
   {
       
      
      protected var §4!!§:§7b§;
      
      protected var §7!0§:Boolean = false;
      
      protected var §'=§:Boolean = false;
      
      private var §^!@§:Boolean = false;
      
      public function §^!C§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§4!!§.init();
         this.§^!@§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §'?§.§73§ = false;
         §[!4§.§continue§.§3!;§(true);
         §[!4§.§continue§.§=!G§(true);
         §[!4§.resume();
         if(this.§4!!§ == null)
         {
            this.§4!!§ = this.getGameLogicController(§[!4§.§continue§);
         }
         §[!4§.§>L§(this.§4!!§);
         if(§[!4§.§continue§.§#S§ == 0)
         {
            this.levelStarted();
         }
         §[!4§.§continue§.background.§?R§();
      }
      
      protected function getGameLogicController(param1:§^9§) : §7b§
      {
         return new §7b§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§7!0§)
         {
            this.§7!0§ = false;
            mNextState = §?!1§.§]! §;
         }
         else
         {
            if(!§[!4§.isPaused)
            {
               this.§4!!§.update(param1);
            }
            if(this.§4!!§.§%!D§() || this.§'=§)
            {
               this.§'=§ = false;
               if(this.§4!!§.§]!1§ == §7b§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§^!@§)
                  {
                     this.§^!@§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §'?§.§73§ = true;
               }
               else if(this.§4!!§.§]!1§ == §7b§.§0%§)
               {
                  this.§]K§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §]K§() : void
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
         if(§[!4§.§78§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §[!4§.§continue§.§%m§();
                  break;
               case 66:
                  §[!4§.§continue§.§%#§();
            }
         }
         §[!4§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §[!4§.controller.keyUp(param1);
      }
      
      public function §4!E§() : void
      {
         var _loc1_:Number = §[!4§.§continue§.camera.§@7§ - §[!4§.§continue§.camera.§6U§;
         var _loc2_:Number = (§[!4§.§continue§.camera.§+!<§ - §[!4§.§continue§.camera.§6U§) / 2;
         if(_loc1_ > _loc2_)
         {
            §`P§.§ '§("Cursor_Zoom_Out");
         }
         else
         {
            §`P§.§ '§("Cursor_Zoom_In");
         }
      }
   }
}
