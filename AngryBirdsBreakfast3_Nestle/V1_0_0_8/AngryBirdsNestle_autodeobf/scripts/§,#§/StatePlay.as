package §,#§
{
   import § q§.§9!B§;
   import §"!G§.§3!f§;
   import §#!n§.§+!o§;
   import §0W§.§ J§;
   import §0W§.§&!6§;
   import §1!=§.§#d§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;!T§.§,!%§;
   import §;"+§.§^!i§;
   import com.angrybirds.§4"6§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §4H§
   {
      
      public static const §'u§:String = "StatePlay";
       
      
      protected var §%"'§:§ J§;
      
      protected var §%'§:§&!6§;
      
      public function StatePlay(param1:§3"&§, param2:§3!f§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §7!Q§() : § J§
      {
         return this.§%"'§;
      }
      
      override protected function init() : void
      {
         §^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §6V§() : void
      {
         this.§ W§();
         this.§!Z§();
         this.§;o§();
      }
      
      protected function §-!<§() : void
      {
         this.§8p§();
         if(this.§%"'§)
         {
            this.§%"'§.dispose();
            this.§%"'§ = null;
         }
         if(this.§%'§)
         {
            this.§%'§.dispose();
            this.§%'§ = null;
         }
      }
      
      protected function § W§() : void
      {
         var _loc1_:§+!o§ = §-O§.§5!1§.§]u§;
         var _loc2_:§^!i§ = §^!i§(§^!6§.getItemByName("Container_Pause"));
         this.§%'§ = new §9!B§(_loc2_,§!3§,_loc1_,§>!L§);
      }
      
      protected function §!Z§() : void
      {
         var _loc1_:§+!o§ = §-O§.§5!1§.§]u§;
         var _loc2_:§^!i§ = §^!i§(§^!6§.getItemByName("Container_Play"));
         this.§%"'§ = new §,!%§(_loc2_,§!3§,§6!>§,_loc1_,§>!L§);
      }
      
      protected function §;o§() : void
      {
         this.§%'§.addEventListener(§#d§.§8!P§,this.§2!,§);
         this.§%'§.addEventListener(§#d§.§^!^§,this.§2!,§);
         this.§%'§.addEventListener(§#d§.RESTART_LEVEL,this.§2!,§);
         this.§%'§.addEventListener(§#d§.RESUME_LEVEL,this.§2!,§);
         this.§%"'§.addEventListener(§#d§.§^!^§,this.§2!,§);
         this.§%"'§.addEventListener(§#d§.RESTART_LEVEL,this.§2!,§);
         this.§%"'§.addEventListener(§#d§.RESUME_LEVEL,this.§2!,§);
         this.§%"'§.addEventListener(§#d§.§3!I§,this.§2!,§);
      }
      
      protected function §8p§() : void
      {
         this.§%'§.removeEventListener(§#d§.§8!P§,this.§2!,§);
         this.§%'§.removeEventListener(§#d§.§^!^§,this.§2!,§);
         this.§%'§.removeEventListener(§#d§.RESTART_LEVEL,this.§2!,§);
         this.§%'§.removeEventListener(§#d§.RESUME_LEVEL,this.§2!,§);
         this.§%"'§.removeEventListener(§#d§.§^!^§,this.§2!,§);
         this.§%"'§.removeEventListener(§#d§.RESTART_LEVEL,this.§2!,§);
         this.§%"'§.removeEventListener(§#d§.RESUME_LEVEL,this.§2!,§);
         this.§%"'§.removeEventListener(§#d§.§3!I§,this.§2!,§);
      }
      
      override protected function levelStarted() : void
      {
         this.§>!p§();
         super.levelStarted();
         this.§"!l§();
      }
      
      protected function §>!p§() : void
      {
         §]d§.§]!u§();
      }
      
      protected function §"!l§() : void
      {
         §]d§.§;!X§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§6V§();
         this.§[!&§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§-!<§();
         §-O§.§5!1§.§]'§ = false;
         super.deActivate();
      }
      
      protected function §[!&§(param1:Boolean, param2:Boolean = true) : void
      {
         §-O§.§5!1§.§]'§ = param1;
         if(param1)
         {
            this.§%"'§.disable(param2);
            this.§%'§.enable(param2);
         }
         else
         {
            this.§%"'§.enable(param2);
            this.§%'§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§%"'§ && this.§%"'§.§@!;§())
         {
            this.§%"'§.update(param1);
         }
         if(this.§%'§ && this.§%'§.§@!;§())
         {
            this.§%'§.update(param1);
         }
      }
      
      protected function §2!,§(param1:§#d§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §#d§.§8!P§:
               break;
            case §#d§.§3!I§:
               this.§[!&§(true);
               break;
            case §#d§.RESUME_LEVEL:
               this.§[!&§(false);
               break;
            case §#d§.RESTART_LEVEL:
               this.§?" §();
               break;
            case §#d§.§^!^§:
               _loc2_ = param1.§[!'§;
               §'"6§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§7!Q§.isEagleUsed())
         {
            return §6?§.§'u§;
         }
         return §?"&§.§'u§;
      }
      
      override public function getLoserStateName() : String
      {
         return §7H§.§'u§;
      }
      
      protected function §'m§() : String
      {
         return § K§.§'u§;
      }
      
      protected function §?" §() : void
      {
         §'"6§(this.§'m§());
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
               if(!§4"6§.isPaused)
               {
                  this.§?" §();
                  break;
               }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§4"6§.§5Y§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §'"6§(this.§'m§());
                  break;
               case Keyboard.NUMBER_6:
                  §'"6§(this.§'m§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function §;K§() : void
      {
         this.§%"'§.§7"8§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
