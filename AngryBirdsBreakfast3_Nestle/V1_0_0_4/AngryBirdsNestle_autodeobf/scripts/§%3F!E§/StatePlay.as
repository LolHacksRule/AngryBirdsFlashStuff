package §?!E§
{
   import §#!c§.§^8§;
   import §#k§.§+m§;
   import §#k§.§-!y§;
   import §&!>§.§3!k§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §;!b§.§%>§;
   import §?!6§.§5[§;
   import §@#§.§9!'§;
   import §[j§.§-?§;
   import §]B§.§,0§;
   import com.angrybirds.§6U§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §+!,§
   {
      
      public static const §+B§:String = "StatePlay";
       
      
      protected var §>"0§:§-!y§;
      
      protected var §8m§:§+m§;
      
      public function StatePlay(param1:§=!o§, param2:§%>§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §1!R§() : §-!y§
      {
         return this.§>"0§;
      }
      
      override protected function init() : void
      {
         §#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §,k§() : void
      {
         this.§3!z§();
         this.§-!3§();
         this.§8+§();
      }
      
      protected function §>!I§() : void
      {
         this.§0!9§();
         if(this.§>"0§)
         {
            this.§>"0§.dispose();
            this.§>"0§ = null;
         }
         if(this.§8m§)
         {
            this.§8m§.dispose();
            this.§8m§ = null;
         }
      }
      
      protected function §3!z§() : void
      {
         var _loc1_:§-?§ = §-!l§.§"x§.§?"&§;
         var _loc2_:§9!'§ = §9!'§(§#2§.getItemByName("Container_Pause"));
         this.§8m§ = new §,0§(_loc2_,§+o§,_loc1_,§"q§);
      }
      
      protected function §-!3§() : void
      {
         var _loc1_:§-?§ = §-!l§.§"x§.§?"&§;
         var _loc2_:§9!'§ = §9!'§(§#2§.getItemByName("Container_Play"));
         this.§>"0§ = new §^8§(_loc2_,§+o§,§+!o§,_loc1_,§"q§);
      }
      
      protected function §8+§() : void
      {
         this.§8m§.addEventListener(§5[§.§]r§,this.§[&§);
         this.§8m§.addEventListener(§5[§.§%!p§,this.§[&§);
         this.§8m§.addEventListener(§5[§.RESTART_LEVEL,this.§[&§);
         this.§8m§.addEventListener(§5[§.RESUME_LEVEL,this.§[&§);
         this.§>"0§.addEventListener(§5[§.§%!p§,this.§[&§);
         this.§>"0§.addEventListener(§5[§.RESTART_LEVEL,this.§[&§);
         this.§>"0§.addEventListener(§5[§.RESUME_LEVEL,this.§[&§);
         this.§>"0§.addEventListener(§5[§.§1]§,this.§[&§);
      }
      
      protected function §0!9§() : void
      {
         this.§8m§.removeEventListener(§5[§.§]r§,this.§[&§);
         this.§8m§.removeEventListener(§5[§.§%!p§,this.§[&§);
         this.§8m§.removeEventListener(§5[§.RESTART_LEVEL,this.§[&§);
         this.§8m§.removeEventListener(§5[§.RESUME_LEVEL,this.§[&§);
         this.§>"0§.removeEventListener(§5[§.§%!p§,this.§[&§);
         this.§>"0§.removeEventListener(§5[§.RESTART_LEVEL,this.§[&§);
         this.§>"0§.removeEventListener(§5[§.RESUME_LEVEL,this.§[&§);
         this.§>"0§.removeEventListener(§5[§.§1]§,this.§[&§);
      }
      
      override protected function levelStarted() : void
      {
         this.§4!,§();
         super.levelStarted();
         this.§8"&§();
      }
      
      protected function §4!,§() : void
      {
         §3!k§.§#!3§();
      }
      
      protected function §8"&§() : void
      {
         §3!k§.§;5§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§,k§();
         this.§1!F§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§>!I§();
         §-!l§.§"x§.§@!c§ = false;
         super.deActivate();
      }
      
      protected function §1!F§(param1:Boolean, param2:Boolean = true) : void
      {
         §-!l§.§"x§.§@!c§ = param1;
         if(param1)
         {
            this.§>"0§.disable(param2);
            this.§8m§.enable(param2);
         }
         else
         {
            this.§>"0§.enable(param2);
            this.§8m§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§>"0§ && this.§>"0§.§&x§())
         {
            this.§>"0§.update(param1);
         }
         if(this.§8m§ && this.§8m§.§&x§())
         {
            this.§8m§.update(param1);
         }
      }
      
      protected function §[&§(param1:§5[§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §5[§.§]r§:
               break;
            case §5[§.§1]§:
               this.§1!F§(true);
               break;
            case §5[§.RESUME_LEVEL:
               this.§1!F§(false);
               break;
            case §5[§.RESTART_LEVEL:
               this.§&<§();
               break;
            case §5[§.§%!p§:
               _loc2_ = param1.§#!8§;
               §0!w§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§1!R§.isEagleUsed())
         {
            return §2j§.§+B§;
         }
         return §7!H§.§+B§;
      }
      
      override public function getLoserStateName() : String
      {
         return §,!_§.§+B§;
      }
      
      protected function §[!e§() : String
      {
         return §62§.§+B§;
      }
      
      protected function §&<§() : void
      {
         §0!w§(this.§[!e§());
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
               if(!§6U§.isPaused)
               {
                  this.§&<§();
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
         if(§6U§.§`"$§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §0!w§(this.§[!e§());
                  break;
               case Keyboard.NUMBER_6:
                  §0!w§(this.§[!e§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
   }
}
