package §#!]§
{
   import §"3§.§7!i§;
   import §"z§.§3!c§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §-!J§.§-!C§;
   import §-!J§.§`E§;
   import §-!h§.§1!$§;
   import §3!0§.§`i§;
   import §4Y§.§%n§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §?u§.override;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §"i§
   {
      
      public static const §]!y§:String = "StatePlay";
       
      
      protected var §1!S§:§-!C§;
      
      protected var §1O§:§`E§;
      
      public function StatePlay(param1:§-g§, param2:§^!_§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §[o§() : §-!C§
      {
         return this.§1!S§;
      }
      
      override protected function init() : void
      {
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §#7§() : void
      {
         this.§9!n§();
         this.§7"&§();
         this.§8"2§();
      }
      
      protected function §5H§() : void
      {
         this.§?!r§();
         if(this.§1!S§)
         {
            this.§1!S§.dispose();
            this.§1!S§ = null;
         }
         if(this.§1O§)
         {
            this.§1O§.dispose();
            this.§1O§ = null;
         }
      }
      
      protected function §9!n§() : void
      {
         var _loc1_:override = §-!2§.§7O§.§ !n§;
         var _loc2_:§%n§ = §%n§(§4!q§.getItemByName("Container_Pause"));
         this.§1O§ = new §3!c§(_loc2_,§#n§,_loc1_,§%E§);
      }
      
      protected function §7"&§() : void
      {
         var _loc1_:override = §-!2§.§7O§.§ !n§;
         var _loc2_:§%n§ = §%n§(§4!q§.getItemByName("Container_Play"));
         this.§1!S§ = new §7!i§(_loc2_,§#n§,§+"%§,_loc1_,§%E§);
      }
      
      protected function §8"2§() : void
      {
         this.§1O§.addEventListener(§1!$§.§!"4§,this.§@!i§);
         this.§1O§.addEventListener(§1!$§.§9!>§,this.§@!i§);
         this.§1O§.addEventListener(§1!$§.RESTART_LEVEL,this.§@!i§);
         this.§1O§.addEventListener(§1!$§.RESUME_LEVEL,this.§@!i§);
         this.§1!S§.addEventListener(§1!$§.§9!>§,this.§@!i§);
         this.§1!S§.addEventListener(§1!$§.RESTART_LEVEL,this.§@!i§);
         this.§1!S§.addEventListener(§1!$§.RESUME_LEVEL,this.§@!i§);
         this.§1!S§.addEventListener(§1!$§.§^Y§,this.§@!i§);
      }
      
      protected function §?!r§() : void
      {
         this.§1O§.removeEventListener(§1!$§.§!"4§,this.§@!i§);
         this.§1O§.removeEventListener(§1!$§.§9!>§,this.§@!i§);
         this.§1O§.removeEventListener(§1!$§.RESTART_LEVEL,this.§@!i§);
         this.§1O§.removeEventListener(§1!$§.RESUME_LEVEL,this.§@!i§);
         this.§1!S§.removeEventListener(§1!$§.§9!>§,this.§@!i§);
         this.§1!S§.removeEventListener(§1!$§.RESTART_LEVEL,this.§@!i§);
         this.§1!S§.removeEventListener(§1!$§.RESUME_LEVEL,this.§@!i§);
         this.§1!S§.removeEventListener(§1!$§.§^Y§,this.§@!i§);
      }
      
      override protected function levelStarted() : void
      {
         this.§^#§();
         super.levelStarted();
         this.§%!X§();
      }
      
      protected function §^#§() : void
      {
         §4!@§.§ true§();
      }
      
      protected function §%!X§() : void
      {
         §4!@§.§#"§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§#7§();
         this.§-!%§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§5H§();
         §-!2§.§7O§.§?!Q§ = false;
         super.deActivate();
      }
      
      protected function §-!%§(param1:Boolean, param2:Boolean = true) : void
      {
         §-!2§.§7O§.§?!Q§ = param1;
         if(param1)
         {
            this.§1!S§.disable(param2);
            this.§1O§.enable(param2);
         }
         else
         {
            this.§1!S§.enable(param2);
            this.§1O§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§1!S§ && this.§1!S§.§]!T§())
         {
            this.§1!S§.update(param1);
         }
         if(this.§1O§ && this.§1O§.§]!T§())
         {
            this.§1O§.update(param1);
         }
      }
      
      protected function §@!i§(param1:§1!$§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §1!$§.§!"4§:
               break;
            case §1!$§.§^Y§:
               this.§-!%§(true);
               break;
            case §1!$§.RESUME_LEVEL:
               this.§-!%§(false);
               break;
            case §1!$§.RESTART_LEVEL:
               this.§12§();
               break;
            case §1!$§.§9!>§:
               _loc2_ = param1.§,!@§;
               §]a§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§[o§.isEagleUsed())
         {
            return §=A§.§]!y§;
         }
         return §]!Q§.§]!y§;
      }
      
      override public function getLoserStateName() : String
      {
         return §`"%§.§]!y§;
      }
      
      protected function § !K§() : String
      {
         return §6U§.§]!y§;
      }
      
      protected function §12§() : void
      {
         §]a§(this.§ !K§());
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
               if(!§`i§.isPaused)
               {
                  this.§12§();
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
         if(§`i§.§#!a§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §]a§(this.§ !K§());
                  break;
               case Keyboard.NUMBER_6:
                  §]a§(this.§ !K§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function §2=§() : void
      {
         this.§1!S§.§2!A§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
