package §=" §
{
   import §!"!§.§[-§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§5!k§;
   import §4",§.§,!j§;
   import §5R§.§6"7§;
   import §7!C§.§8!w§;
   import §7"#§.§4"!§;
   import §71§.§;l§;
   import §;"G§.§5"2§;
   import §;"G§.§<!_§;
   import §=!v§.§+!z§;
   import §>"!§.§@!9§;
   import flash.events.KeyboardEvent;
   
   public class StatePlay extends §-4§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §7M§:§5"2§;
      
      protected var §-,§:§<!_§;
      
      public function StatePlay(param1:§,!j§, param2:§;l§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §1!%§() : §5"2§
      {
         return this.§7M§;
      }
      
      override protected function init() : void
      {
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §]n§() : void
      {
         this.§&A§();
         this.§1"§();
         this.§#!k§();
      }
      
      protected function §6!?§() : void
      {
         this.§#"5§();
         if(this.§7M§)
         {
            this.§7M§.dispose();
            this.§7M§ = null;
         }
         if(this.§-,§)
         {
            this.§-,§.dispose();
            this.§-,§ = null;
         }
      }
      
      protected function §&A§() : void
      {
         var _loc1_:§6"7§ = §&"<§.§<!7§.§,!9§;
         var _loc2_:§5!k§ = §5!k§(§6!J§.getItemByName("Container_Pause"));
         this.§-,§ = new §4"!§(_loc2_,§]m§,_loc1_,§3"%§);
      }
      
      protected function §1"§() : void
      {
         var _loc1_:§6"7§ = §&"<§.§<!7§.§,!9§;
         var _loc2_:§5!k§ = §5!k§(§6!J§.getItemByName("Container_Play"));
         this.§7M§ = new §[-§(_loc2_,§]m§,§%R§,_loc1_,§3"%§);
      }
      
      protected function §#!k§() : void
      {
         this.§-,§.addEventListener(§+!z§.§4<§,this.§]d§);
         this.§-,§.addEventListener(§+!z§.§,"D§,this.§]d§);
         this.§-,§.addEventListener(§+!z§.RESTART_LEVEL,this.§]d§);
         this.§-,§.addEventListener(§+!z§.RESUME_LEVEL,this.§]d§);
         this.§7M§.addEventListener(§+!z§.§,"D§,this.§]d§);
         this.§7M§.addEventListener(§+!z§.RESTART_LEVEL,this.§]d§);
         this.§7M§.addEventListener(§+!z§.RESUME_LEVEL,this.§]d§);
         this.§7M§.addEventListener(§+!z§.§^m§,this.§]d§);
      }
      
      protected function §#"5§() : void
      {
         this.§-,§.removeEventListener(§+!z§.§4<§,this.§]d§);
         this.§-,§.removeEventListener(§+!z§.§,"D§,this.§]d§);
         this.§-,§.removeEventListener(§+!z§.RESTART_LEVEL,this.§]d§);
         this.§-,§.removeEventListener(§+!z§.RESUME_LEVEL,this.§]d§);
         this.§7M§.removeEventListener(§+!z§.§,"D§,this.§]d§);
         this.§7M§.removeEventListener(§+!z§.RESTART_LEVEL,this.§]d§);
         this.§7M§.removeEventListener(§+!z§.RESUME_LEVEL,this.§]d§);
         this.§7M§.removeEventListener(§+!z§.§^m§,this.§]d§);
      }
      
      override protected function levelStarted() : void
      {
         §@!9§.§["6§();
         super.levelStarted();
         this.§6h§();
      }
      
      protected function §6h§() : void
      {
         §@!9§.§#?§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§]n§();
         this.§^!R§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§6!?§();
         §&"<§.§<!7§.§"!"§ = false;
         super.deActivate();
      }
      
      protected function §^!R§(param1:Boolean, param2:Boolean = true) : void
      {
         §&"<§.§<!7§.§"!"§ = param1;
         if(param1)
         {
            this.§7M§.disable(param2);
            this.§-,§.enable(param2);
         }
         else
         {
            this.§7M§.enable(param2);
            this.§-,§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§7M§ && this.§7M§.§%D§())
         {
            this.§7M§.update(param1);
         }
         if(this.§-,§ && this.§-,§.§%D§())
         {
            this.§-,§.update(param1);
         }
      }
      
      protected function §]d§(param1:§+!z§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §+!z§.§4<§:
               break;
            case §+!z§.§^m§:
               this.§^!R§(true);
               break;
            case §+!z§.RESUME_LEVEL:
               this.§^!R§(false);
               break;
            case §+!z§.RESTART_LEVEL:
               this.§]!E§();
               break;
            case §+!z§.§,"D§:
               _loc2_ = param1.§2!u§;
               §'Q§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§1!%§.isEagleUsed())
         {
            return §!!U§.STATE_NAME;
         }
         return §@",§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §>O§.STATE_NAME;
      }
      
      protected function §'!G§() : String
      {
         return § Q§.STATE_NAME;
      }
      
      protected function §]!E§() : void
      {
         §'Q§(this.§'!G§());
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
            case 82:
               this.§]!E§();
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§8!w§.§;!§)
         {
            switch(param1.keyCode)
            {
               case 53:
                  §'Q§(this.§'!G§());
                  break;
               case 54:
                  §'Q§(this.§'!G§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
   }
}
