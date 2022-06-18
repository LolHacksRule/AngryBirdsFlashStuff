package §^1§
{
   import § #_§.§?!>§;
   import §#"3§.§2#>§;
   import §+!n§.§+!p§;
   import §0!>§.§;#$§;
   import §?$#§.§<d§;
   import §?o§.§4#?§;
   import flash.events.KeyboardEvent;
   
   public class §>"3§ extends §';§
   {
       
      
      protected var §%#4§:§;#$§;
      
      private var §0<§:Boolean = false;
      
      public function §>"3§(param1:§4#?§, param2:§?!>§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§%#4§.init();
         this.§0<§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §+!p§.§`?§.setVisible(true);
         §+!p§.§`?§.§'#F§(true);
         this.resumeEngine();
         if(this.§%#4§ == null)
         {
            this.§%#4§ = this.getGameLogicController(§+!p§.§`?§);
         }
         §+!p§.setController(this.§%#4§);
         if(§+!p§.§`?§.§4#k§ == 0)
         {
            this.levelStarted();
         }
         §+!p§.§`?§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §+!p§.resume();
      }
      
      protected function getGameLogicController(param1:§<d§) : §;#$§
      {
         return new §;#$§(param1,mLevelManager);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§+!p§.isPaused)
         {
            this.§%#4§.update(param1);
         }
         if(this.§%#4§.§#$$§())
         {
            if(this.§%#4§.§1"z§ == §;#$§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§0<§)
               {
                  this.§0<§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §%!?§(this.getVictoryStateName());
               }
            }
            else if(this.§%#4§.§1"z§ == §;#$§.§4$,§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §%!?§(this.getLoserStateName());
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
         if(§+!p§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §+!p§.§`?§.§06§();
                  break;
               case 66:
                  §+!p§.§`?§.§7w§();
            }
         }
         §+!p§.§-#W§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §+!p§.§-#W§.keyUp(param1);
      }
      
      public function §,s§() : void
      {
         var _loc1_:Number = §+!p§.§`?§.camera.§9"o§ - §+!p§.§`?§.camera.§[#g§;
         var _loc2_:Number = (§+!p§.§`?§.camera.§'#K§ - §+!p§.§`?§.camera.§[#g§) / 2;
         if(_loc1_ > _loc2_)
         {
            §2#>§.§;!j§("Cursor_Zoom_Out");
         }
         else
         {
            §2#>§.§;!j§("Cursor_Zoom_In");
         }
      }
   }
}
