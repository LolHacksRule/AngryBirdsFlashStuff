package §!$§
{
   import §-!C§.§#!G§;
   import §3v§.§5G§;
   import §>%§.§]3§;
   import §>A§.§-!"§;
   import §[A§.§3!'§;
   import §`i§.§2W§;
   import flash.events.KeyboardEvent;
   
   public class §+M§ extends §3!'§
   {
       
      
      protected var §-!0§:§-!"§;
      
      protected var § try§:Boolean = false;
      
      protected var §6^§:Boolean = false;
      
      private var §0!'§:Boolean = false;
      
      public function §+M§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§-!0§.init();
         this.§0!'§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         §#!G§.§`B§ = false;
         §]3§.§;v§.§@!A§(true);
         §]3§.§;v§.§9>§(true);
         §]3§.resume();
         if(this.§-!0§ == null)
         {
            this.§-!0§ = this.getGameLogicController(§]3§.§;v§);
         }
         if(§]3§.§;v§.§0^§ == 0)
         {
            this.levelStarted();
         }
         §]3§.§1_§(this.§-!0§);
         §]3§.§;v§.background.§^5§();
      }
      
      protected function getGameLogicController(param1:§2W§) : §-!"§
      {
         return new §-!"§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§ try§)
         {
            this.§ try§ = false;
            mNextState = §[q§.§9"§;
         }
         else
         {
            if(!§]3§.isPaused)
            {
               this.§-!0§.update(param1);
            }
            if(this.§-!0§.§ f§() || this.§6^§)
            {
               this.§6^§ = false;
               if(this.§-!0§.§+'§ == §-!"§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§0!'§)
                  {
                     this.§0!'§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  §#!G§.§`B§ = true;
               }
               else if(this.§-!0§.§+'§ == §-!"§.§%_§)
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
         if(§]3§.§;!9§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §]3§.§;v§.§51§();
                  break;
               case 66:
                  §]3§.§;v§.§&'§();
            }
         }
         §]3§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §]3§.controller.keyUp(param1);
      }
      
      public function §[O§() : void
      {
         var _loc1_:Number = §]3§.§;v§.camera.§9m§ - §]3§.§;v§.camera.§;F§;
         var _loc2_:Number = (§]3§.§;v§.camera.§7!-§ - §]3§.§;v§.camera.§;F§) / 2;
         if(_loc1_ > _loc2_)
         {
            §5G§.§5&§("Cursor_Zoom_Out");
         }
         else
         {
            §5G§.§5&§("Cursor_Zoom_In");
         }
      }
   }
}
