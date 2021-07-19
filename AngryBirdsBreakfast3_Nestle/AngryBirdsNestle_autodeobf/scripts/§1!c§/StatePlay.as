package §1!c§
{
   import § !9§.§1" §;
   import §%!B§.§0![§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §0!q§.§;!-§;
   import §1![§.§`w§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §9!p§.§4!9§;
   import §9!p§.§@!n§;
   import §;"§.§+`§;
   import §[!Z§.§>D§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §7t§
   {
      
      public static const §8"%§:String = "StatePlay";
       
      
      protected var §+B§:§4!9§;
      
      protected var §5!R§:§@!n§;
      
      public function StatePlay(param1:§0![§, param2:§+f§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §'!l§() : §4!9§
      {
         return this.§+B§;
      }
      
      override protected function init() : void
      {
         §^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §>B§() : void
      {
         this.§-!d§();
         this.§8!i§();
         this.§;O§();
      }
      
      protected function §!"2§() : void
      {
         this.§ !d§();
         if(this.§+B§)
         {
            this.§+B§.dispose();
            this.§+B§ = null;
         }
         if(this.§5!R§)
         {
            this.§5!R§.dispose();
            this.§5!R§ = null;
         }
      }
      
      protected function §-!d§() : void
      {
         var _loc1_:§`w§ = § !4§.§%"7§.§@D§;
         var _loc2_:§,6§ = §,6§(§^!T§.getItemByName("Container_Pause"));
         this.§5!R§ = new §+`§(_loc2_,§4a§,_loc1_,§8&§);
      }
      
      protected function §8!i§() : void
      {
         var _loc1_:§`w§ = § !4§.§%"7§.§@D§;
         var _loc2_:§,6§ = §,6§(§^!T§.getItemByName("Container_Play"));
         this.§+B§ = new §1" §(_loc2_,§4a§,§4!"§,_loc1_,§8&§);
      }
      
      protected function §;O§() : void
      {
         this.§5!R§.addEventListener(§;!-§.§3!w§,this.§[b§);
         this.§5!R§.addEventListener(§;!-§.§,d§,this.§[b§);
         this.§5!R§.addEventListener(§;!-§.RESTART_LEVEL,this.§[b§);
         this.§5!R§.addEventListener(§;!-§.RESUME_LEVEL,this.§[b§);
         this.§+B§.addEventListener(§;!-§.§,d§,this.§[b§);
         this.§+B§.addEventListener(§;!-§.RESTART_LEVEL,this.§[b§);
         this.§+B§.addEventListener(§;!-§.RESUME_LEVEL,this.§[b§);
         this.§+B§.addEventListener(§;!-§.§5"+§,this.§[b§);
      }
      
      protected function § !d§() : void
      {
         this.§5!R§.removeEventListener(§;!-§.§3!w§,this.§[b§);
         this.§5!R§.removeEventListener(§;!-§.§,d§,this.§[b§);
         this.§5!R§.removeEventListener(§;!-§.RESTART_LEVEL,this.§[b§);
         this.§5!R§.removeEventListener(§;!-§.RESUME_LEVEL,this.§[b§);
         this.§+B§.removeEventListener(§;!-§.§,d§,this.§[b§);
         this.§+B§.removeEventListener(§;!-§.RESTART_LEVEL,this.§[b§);
         this.§+B§.removeEventListener(§;!-§.RESUME_LEVEL,this.§[b§);
         this.§+B§.removeEventListener(§;!-§.§5"+§,this.§[b§);
      }
      
      override protected function levelStarted() : void
      {
         this.§1!8§();
         super.levelStarted();
         this.§'n§();
      }
      
      protected function §1!8§() : void
      {
         §>D§.§>!%§();
      }
      
      protected function §'n§() : void
      {
         §>D§.§4W§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§>B§();
         this.§=>§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§!"2§();
         § !4§.§%"7§.§?!9§ = false;
         super.deActivate();
      }
      
      protected function §=>§(param1:Boolean, param2:Boolean = true) : void
      {
         § !4§.§%"7§.§?!9§ = param1;
         if(param1)
         {
            this.§+B§.disable(param2);
            this.§5!R§.enable(param2);
         }
         else
         {
            this.§+B§.enable(param2);
            this.§5!R§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§+B§ && this.§+B§.§5!W§())
         {
            this.§+B§.update(param1);
         }
         if(this.§5!R§ && this.§5!R§.§5!W§())
         {
            this.§5!R§.update(param1);
         }
      }
      
      protected function §[b§(param1:§;!-§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §;!-§.§3!w§:
               break;
            case §;!-§.§5"+§:
               this.§=>§(true);
               break;
            case §;!-§.RESUME_LEVEL:
               this.§=>§(false);
               break;
            case §;!-§.RESTART_LEVEL:
               this.§;" §();
               break;
            case §;!-§.§,d§:
               _loc2_ = param1.§'4§;
               §7"6§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§'!l§.isEagleUsed())
         {
            return §]0§.§8"%§;
         }
         return §'!y§.§8"%§;
      }
      
      override public function getLoserStateName() : String
      {
         return §@=§.§8"%§;
      }
      
      protected function §5!B§() : String
      {
         return §'8§.§8"%§;
      }
      
      protected function §;" §() : void
      {
         §7"6§(this.§5!B§());
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         super.keyUp(param1);
         switch(param1.keyCode)
         {
            case Keyboard.R:
               if(!§@!S§.isPaused)
               {
                  this.§;" §();
               }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§@!S§.§!L§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §7"6§(this.§5!B§());
                  break;
               case Keyboard.NUMBER_6:
                  §7"6§(this.§5!B§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function §&!z§() : void
      {
         this.§+B§.§?e§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
