package §2";§
{
   import § !j§.§4#c§;
   import §,"v§.§;"n§;
   import §1#v§.§4"l§;
   import §4§.§9#i§;
   import §>2§.§!6§;
   import §`#@§.§7n§;
   import flash.events.KeyboardEvent;
   
   public class §>"§ extends §7!z§
   {
       
      
      protected var §3!;§:§9#i§;
      
      private var §,W§:Boolean = false;
      
      public function §>"§(param1:§;"n§, param2:§4#c§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§3!;§.init();
         this.§,W§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7n§.§6#K§.setVisible(true);
         §7n§.§6#K§.§1"`§(true);
         this.resumeEngine();
         if(this.§3!;§ == null)
         {
            this.§3!;§ = this.getGameLogicController(§7n§.§6#K§);
         }
         §7n§.setController(this.§3!;§);
         if(§7n§.§6#K§.§'m§ == 0)
         {
            this.levelStarted();
         }
         §7n§.§6#K§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §7n§.resume();
      }
      
      protected function getGameLogicController(param1:§!6§) : §9#i§
      {
         return new §9#i§(param1,mLevelManager);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§7n§.isPaused)
         {
            this.§3!;§.update(param1);
         }
         if(this.§3!;§.§&"l§())
         {
            if(this.§3!;§.§7Z§ == §9#i§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§,W§)
               {
                  this.§,W§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §1!L§(this.getVictoryStateName());
               }
            }
            else if(this.§3!;§.§7Z§ == §9#i§.§5#E§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §1!L§(this.getLoserStateName());
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
         if(§7n§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §7n§.§6#K§.§[$@§();
                  break;
               case 66:
                  §7n§.§6#K§.§,!!§();
            }
         }
         §7n§.§ "'§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §7n§.§ "'§.keyUp(param1);
      }
      
      public function §8!U§() : void
      {
         var _loc1_:Number = §7n§.§6#K§.camera.§?"G§ - §7n§.§6#K§.camera.§@#%§;
         var _loc2_:Number = (§7n§.§6#K§.camera.§,#X§ - §7n§.§6#K§.camera.§@#%§) / 2;
         if(_loc1_ > _loc2_)
         {
            §4"l§.§+!=§("Cursor_Zoom_Out");
         }
         else
         {
            §4"l§.§+!=§("Cursor_Zoom_In");
         }
      }
   }
}
