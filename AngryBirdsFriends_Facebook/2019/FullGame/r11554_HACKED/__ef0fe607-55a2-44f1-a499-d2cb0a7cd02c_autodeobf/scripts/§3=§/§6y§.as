package §3=§
{
   import § !D§.§'"u§;
   import §!L§.§<"s§;
   import §"$=§.§'![§;
   import §3"G§.§16§;
   import §9#K§.§=^§;
   import §=!2§.§%"T§;
   import flash.events.KeyboardEvent;
   
   public class §6y§ extends §-"4§
   {
       
      
      protected var §'"A§:§<"s§;
      
      private var §-!l§:Boolean = false;
      
      public function §6y§(param1:§'![§, param2:§16§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§'"A§.init();
         this.§-!l§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §%"T§.§;`§.setVisible(true);
         §%"T§.§;`§.§^!m§(true);
         this.resumeEngine();
         if(this.§'"A§ == null)
         {
            this.§'"A§ = this.getGameLogicController(§%"T§.§;`§);
         }
         §%"T§.setController(this.§'"A§);
         if(§%"T§.§;`§.§ # § == 0)
         {
            this.levelStarted();
         }
         §%"T§.§;`§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §%"T§.resume();
      }
      
      protected function getGameLogicController(param1:§'"u§) : §<"s§
      {
         return new §<"s§(param1,mLevelManager);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§%"T§.isPaused)
         {
            this.§'"A§.update(param1);
         }
         if(this.§'"A§.§?$&§())
         {
            if(this.§'"A§.§="h§ == §<"s§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§-!l§)
               {
                  this.§-!l§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §%D§(this.getVictoryStateName());
               }
            }
            else if(this.§'"A§.§="h§ == §<"s§.§&$A§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §%D§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function isAllowedToChangeFailState() : Boolean
      {
         return true;
      }
      
      protected function levelCompleted() : void
      {
      }
      
      public function getVictoryStateName() : String
      {
         return null;
      }
      
      public function getLoserStateName() : String
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
         if(§%"T§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §%"T§.§;`§.§5$9§();
                  break;
               case 66:
                  §%"T§.§;`§.§'"E§();
            }
         }
         §%"T§.§+"M§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §%"T§.§+"M§.keyUp(param1);
      }
      
      public function §1g§() : void
      {
         var _loc1_:Number = §%"T§.§;`§.camera.§7#-§ - §%"T§.§;`§.camera.§%"t§;
         var _loc2_:Number = (§%"T§.§;`§.camera.§2$B§ - §%"T§.§;`§.camera.§%"t§) / 2;
         if(_loc1_ > _loc2_)
         {
            §=^§.§`"l§("Cursor_Zoom_Out");
         }
         else
         {
            §=^§.§`"l§("Cursor_Zoom_In");
         }
      }
   }
}
