package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §0!$§.§4!Z§;
   import §2!N§.§;P§;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   import flash.events.KeyboardEvent;
   
   public class §#!S§ extends §3!3§
   {
       
      
      protected var §6!P§:§;P§;
      
      protected var §2!2§:Boolean = false;
      
      private var §2!P§:Boolean = false;
      
      public function §#!S§(param1:§ q§, param2:§>u§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§6!P§.init();
         this.§2!P§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6!E§.§7I§.§'F§(true);
         §6!E§.§7I§.§8w§(true);
         this.§^"&§();
         if(this.§6!P§ == null)
         {
            this.§6!P§ = this.getGameLogicController(§6!E§.§7I§);
         }
         §6!E§.setController(this.§6!P§);
         if(§6!E§.§7I§.§`!J§ == 0)
         {
            this.levelStarted();
         }
         §6!E§.§7I§.background.§`@§();
      }
      
      protected function §^"&§() : void
      {
         §6!E§.resume();
      }
      
      protected function getGameLogicController(param1:§<S§) : §;P§
      {
         return new §;P§(param1,§="4§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§6!E§.isPaused)
         {
            this.§6!P§.update(param1);
         }
         if(this.§6!P§.§]!G§() || this.§2!2§)
         {
            this.§2!2§ = false;
            if(this.§6!P§.§;0§ == §;P§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§2!P§)
               {
                  this.§2!P§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §?n§(this.getVictoryStateName());
               }
            }
            else if(this.§6!P§.§;0§ == §;P§.§[!^§)
            {
               if(this.§]!L§())
               {
                  §?n§(this.getLoserStateName());
               }
            }
         }
      }
      
      protected function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      protected function §]!L§() : Boolean
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
         if(§6!E§.§%q§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §6!E§.§7I§.§0!9§();
                  break;
               case 66:
                  §6!E§.§7I§.§5!§();
            }
         }
         §6!E§.controller.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §6!E§.controller.keyUp(param1);
      }
      
      public function §,Y§() : void
      {
         var _loc1_:Number = §6!E§.§7I§.camera.§@""§ - §6!E§.§7I§.camera.§>>§;
         var _loc2_:Number = (§6!E§.§7I§.camera.§;!Z§ - §6!E§.§7I§.camera.§>>§) / 2;
         if(_loc1_ > _loc2_)
         {
            §4!Z§.§0!t§("Cursor_Zoom_Out");
         }
         else
         {
            §4!Z§.§0!t§("Cursor_Zoom_In");
         }
      }
   }
}
