package §]§
{
   import §#g§.§8§;
   import §+`§.§%"q§;
   import §6"p§.§8"M§;
   import §6#h§.§'!t§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import flash.events.KeyboardEvent;
   
   public class §'"V§ extends §1$?§
   {
       
      
      protected var §!"K§:§'!t§;
      
      private var §?D§:Boolean = false;
      
      public function §'"V§(param1:§]#q§, param2:§%"q§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§!"K§.init();
         this.§?D§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §]$?§.§2#§.setVisible(true);
         §]$?§.§2#§.§9!S§(true);
         this.resumeEngine();
         if(this.§!"K§ == null)
         {
            this.§!"K§ = this.getGameLogicController(§]$?§.§2#§);
         }
         §]$?§.setController(this.§!"K§);
         if(§]$?§.§2#§.§>e§ == 0)
         {
            this.levelStarted();
         }
         §]$?§.§2#§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §]$?§.resume();
      }
      
      protected function getGameLogicController(param1:§8#3§) : §'!t§
      {
         return new §'!t§(param1,mLevelManager);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§]$?§.isPaused)
         {
            this.§!"K§.update(param1);
         }
         if(this.§!"K§.§4"6§())
         {
            if(this.§!"K§.§+"5§ == §'!t§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§?D§)
               {
                  this.§?D§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §3#§(this.getVictoryStateName());
               }
            }
            else if(this.§!"K§.§+"5§ == §'!t§.§3"v§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §3#§(this.getLoserStateName());
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
         if(§]$?§.DEBUG_MODE_ENABLED)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §]$?§.§2#§.§?#!§();
                  break;
               case 66:
                  §]$?§.§2#§.§<$A§();
            }
         }
         §]$?§.§;r§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §]$?§.§;r§.keyUp(param1);
      }
      
      public function §#"$§() : void
      {
         var _loc1_:Number = §]$?§.§2#§.camera.§6"&§ - §]$?§.§2#§.camera.§?!f§;
         var _loc2_:Number = (§]$?§.§2#§.camera.§ #w§ - §]$?§.§2#§.camera.§?!f§) / 2;
         if(_loc1_ > _loc2_)
         {
            §8"M§.§;$&§("Cursor_Zoom_Out");
         }
         else
         {
            §8"M§.§;$&§("Cursor_Zoom_In");
         }
      }
   }
}
