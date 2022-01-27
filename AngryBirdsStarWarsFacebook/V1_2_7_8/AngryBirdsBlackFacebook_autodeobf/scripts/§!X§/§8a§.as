package §!X§
{
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §0"I§.§0"b§;
   import §5!q§.§3"X§;
   import §]!=§.§;"I§;
   import com.angrybirds.§;!e§;
   import flash.events.KeyboardEvent;
   
   public class §8a§ extends §@!?§
   {
       
      
      protected var §^!!§:§;"I§;
      
      protected var §6!W§:Boolean = false;
      
      private var §,c§:Boolean = false;
      
      public function §8a§(param1:§7!m§, param2:§="B§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      protected function levelStarted() : void
      {
         this.§^!!§.init();
         this.§,c§ = false;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;!e§.§<x§.§5!y§(true);
         §;!e§.§<x§.§+!L§(true);
         this.resumeEngine();
         if(this.§^!!§ == null)
         {
            this.§^!!§ = this.getGameLogicController(§;!e§.§<x§);
         }
         §;!e§.§%!L§(this.§^!!§);
         if(§;!e§.§<x§.§@">§ == 0)
         {
            this.levelStarted();
         }
         §;!e§.§<x§.background.playAmbientSound();
      }
      
      protected function resumeEngine() : void
      {
         §;!e§.resume();
      }
      
      protected function getGameLogicController(param1:§3"X§) : §;"I§
      {
         return new §;"I§(param1,§ !p§);
      }
      
      override protected function update(param1:Number) : void
      {
         if(!§;!e§.isPaused)
         {
            this.§^!!§.update(param1);
         }
         if(this.§^!!§.§]!G§() || this.§6!W§)
         {
            this.§6!W§ = false;
            if(this.§^!!§.§9"t§ == §;"I§.LEVEL_STATE_VICTORY2_END)
            {
               if(!this.§,c§)
               {
                  this.§,c§ = true;
                  this.levelCompleted();
               }
               if(this.isAllowedToChangeVictoryState())
               {
                  §0"B§(this.getVictoryStateName());
               }
            }
            else if(this.§^!!§.§9"t§ == §;"I§.§ #§)
            {
               if(this.isAllowedToChangeFailState())
               {
                  §0"B§(this.getLoserStateName());
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
         if(§;!e§.§[!S§)
         {
            switch(param1.keyCode)
            {
               case 87:
                  §;!e§.§<x§.§0"&§();
                  break;
               case 66:
                  §;!e§.§<x§.§[""§();
            }
         }
         §;!e§.§%e§.keyDown(param1);
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         §;!e§.§%e§.keyUp(param1);
      }
      
      public function §=!R§() : void
      {
         var _loc1_:Number = §;!e§.§<x§.camera.§ #2§ - §;!e§.§<x§.camera.§9!O§;
         var _loc2_:Number = (§;!e§.§<x§.camera.§&"p§ - §;!e§.§<x§.camera.§9!O§) / 2;
         if(_loc1_ > _loc2_)
         {
            §0"b§.§`B§("Cursor_Zoom_Out");
         }
         else
         {
            §0"b§.§`B§("Cursor_Zoom_In");
         }
      }
   }
}
