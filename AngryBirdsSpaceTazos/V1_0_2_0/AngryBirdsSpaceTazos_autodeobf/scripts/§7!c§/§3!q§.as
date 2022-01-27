package §7!c§
{
   import §"!>§.§<!o§;
   import §""<§.§9!p§;
   import §+!9§.§;0§;
   import §;!0§.;
   import §<"9§.§9!_§;
   import §?!<§.§'!1§;
   import flash.events.KeyboardEvent;
   
   public class §3!q§ extends §%<§
   {
       
      
      protected var §`S§:§9!_§;
      
      protected var §#3§:Boolean = false;
      
      private var §+s§:Boolean = false;
      
      public function §3!q§(param1:§#2§, param2:§<!o§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§`S§.init();
         this.§+s§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;0§.§@!^§.§'!z§(true);
         §;0§.§@!^§.§-s§(true);
         this.§,"F§();
         if(this.§`S§ == null)
         {
            this.§`S§ = this.getGameLogicController(§;0§.§@!^§);
         }
         if(§;0§.§@!^§.§@!v§ == 0)
         {
            this.levelStarted();
         }
         §;0§.§'"8§(this.§`S§);
         §;0§.§@!^§.background.playAmbientSound();
      }
      
      protected function §,"F§() : void
      {
         §;0§.resume();
      }
      
      protected function getGameLogicController(param1:§'!1§) : §9!_§
      {
         return new §9!_§(param1,§,W§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§;0§.isPaused)
         {
            this.§`S§.update(param1);
         }
         if(this.§`S§.§^!P§() || this.§#3§)
         {
            this.§#3§ = false;
            if(this.§`S§.§8l§ == §9!_§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§+s§)
               {
                  this.§+s§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §2g§(this.getVictoryStateName());
               }
            }
            else if(this.§`S§.§8l§ == §9!_§.§4#§)
            {
               if(this.§ !K§())
               {
                  §2g§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function § !K§() : Boolean
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
         if(§;0§.§+",§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §;0§.§@!^§.§;p§();
                  break;
               case 66:
                  §;0§.§@!^§.§[!x§();
            }
         }
         §;0§.§%O§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §;0§.§%O§.keyUp(param1);
      }
      
      public function §^!T§() : void
      {
         var _loc1_:Number = §;0§.§@!^§.camera.§]u§ - §;0§.§@!^§.camera.§'!f§;
         var _loc2_:Number = (§;0§.§@!^§.camera.§[!5§ - §;0§.§@!^§.camera.§'!f§) / 2;
         if(_loc1_ > _loc2_)
         {
            §9!p§.§>!'§("Cursor_Zoom_Out");
         }
         else
         {
            §9!p§.§>!'§("Cursor_Zoom_In");
         }
      }
   }
}
