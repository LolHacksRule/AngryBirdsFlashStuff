package §@",§
{
   import §0!2§.§5"L§;
   import §5!G§.§&2§;
   import §70§.§^!>§;
   import §=#§.§5!S§;
   import §[x§.§]"!§;
   import §`!n§.LevelManager;
   import flash.events.KeyboardEvent;
   
   public class §9!L§ extends §5!S§
   {
       
      
      protected var §8R§:§^!>§;
      
      protected var §]"$§:Boolean = false;
      
      protected var §1"7§:Boolean = false;
      
      private var §@"2§:Boolean = false;
      
      public function §9!L§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§8R§.init();
         this.§@"2§ = false;
      }
      
      override public function activate() : void
      {
         super.activate();
         LevelManager.§`F§ = false;
         §&2§.§],§.§`!I§(true);
         §&2§.§],§.§>!&§(true);
         §&2§.resume();
         if(this.§8R§ == null)
         {
            this.§8R§ = this.getGameLogicController(§&2§.§],§);
         }
         §&2§.setController(this.§8R§);
         if(§&2§.§],§.§^!@§ == 0)
         {
            this.levelStarted();
         }
         §&2§.§],§.background.§#"I§();
      }
      
      protected function getGameLogicController(param1:§5"L§) : §^!>§
      {
         return new §^!>§(param1);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(this.§]"$§)
         {
            this.§]"$§ = false;
            mNextState = §9!p§.STATE_NAME;
         }
         else
         {
            if(!§&2§.isPaused)
            {
               this.§8R§.update(param1);
            }
            if(this.§8R§.§["F§() || this.§1"7§)
            {
               this.§1"7§ = false;
               if(this.§8R§.§<!i§ == §^!>§.LEVEL_STATE_VICTORY2_END)
               {
                  if(!this.§@"2§)
                  {
                     this.§@"2§ = true;
                     this.levelCompleted();
                  }
                  mNextState = this.getVictoryState();
                  LevelManager.§`F§ = true;
               }
               else if(this.§8R§.§<!i§ == §^!>§.LEVEL_STATE_FAIL)
               {
                  this.§#!1§();
               }
            }
         }
         return _loc2_;
      }
      
      protected function §#!1§() : void
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
         if(§&2§.§&!M§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §&2§.§],§.§32§();
                  break;
               case 66:
                  §&2§.§],§.§@">§();
            }
         }
         §&2§.§,!x§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §&2§.§,!x§.keyUp(param1);
      }
      
      public function §7!t§() : void
      {
         var _loc1_:Number = §&2§.§],§.camera.§[!^§ - §&2§.§],§.camera.§=H§;
         var _loc2_:Number = (§&2§.§],§.camera.§7!I§ - §&2§.§],§.camera.§=H§) / 2;
         if(_loc1_ > _loc2_)
         {
            §]"!§.§%"9§("Cursor_Zoom_Out");
         }
         else
         {
            §]"!§.§%"9§("Cursor_Zoom_In");
         }
      }
   }
}
