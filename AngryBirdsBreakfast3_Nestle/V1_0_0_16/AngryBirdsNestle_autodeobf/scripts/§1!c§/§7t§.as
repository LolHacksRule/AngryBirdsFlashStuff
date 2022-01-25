package §1!c§
{
   import §#!`§.§3!o§;
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §24§.§=!L§;
   import §@V§.§#=§;
   import flash.events.KeyboardEvent;
   
   public class §7t§ extends §7X§
   {
       
      
      protected var §4!"§:§3!o§;
      
      protected var § !a§:Boolean = false;
      
      private var §&!-§:Boolean = false;
      
      public function §7t§(param1:§0![§, param2:§+f§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§4!"§.init();
         this.§&!-§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@!S§.§2A§.§`!V§(true);
         §@!S§.§2A§.§+"2§(true);
         this.§@!R§();
         if(this.§4!"§ == null)
         {
            this.§4!"§ = this.getGameLogicController(§@!S§.§2A§);
         }
         §@!S§.setController(this.§4!"§);
         if(§@!S§.§2A§.§'!n§ == 0)
         {
            this.levelStarted();
         }
         §@!S§.§2A§.background.§`"'§();
      }
      
      protected function §@!R§() : void
      {
         §@!S§.resume();
      }
      
      protected function getGameLogicController(param1:§#=§) : §3!o§
      {
         return new §3!o§(param1,§4a§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§@!S§.isPaused)
         {
            this.§4!"§.update(param1);
         }
         if(this.§4!"§.§?#§() || this.§ !a§)
         {
            this.§ !a§ = false;
            if(this.§4!"§.§import§ == §3!o§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§&!-§)
               {
                  this.§&!-§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §7"6§(this.getVictoryStateName());
               }
            }
            else if(this.§4!"§.§import§ == §3!o§.§5!§)
            {
               if(this.§#g§())
               {
                  §7"6§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §#g§() : Boolean
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
         if(§@!S§.§!L§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §@!S§.§2A§.§[!K§();
                  break;
               case 66:
                  §@!S§.§2A§.§9A§();
            }
         }
         §@!S§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §@!S§.controller.keyUp(param1);
      }
      
      public function §0!i§() : void
      {
         var _loc1_:Number = §@!S§.§2A§.camera.§=Q§ - §@!S§.§2A§.camera.§6X§;
         var _loc2_:Number = (§@!S§.§2A§.camera.§!"5§ - §@!S§.§2A§.camera.§6X§) / 2;
         if(_loc1_ > _loc2_)
         {
            §=!L§.§`a§("Cursor_Zoom_Out");
         }
         else
         {
            §=!L§.§`a§("Cursor_Zoom_In");
         }
      }
   }
}
