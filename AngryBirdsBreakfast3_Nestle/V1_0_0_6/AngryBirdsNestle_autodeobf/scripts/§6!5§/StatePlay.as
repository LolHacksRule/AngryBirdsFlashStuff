package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §1M§.§6!J§;
   import §9O§.§4!V§;
   import §;!J§.§4[§;
   import §?!v§.§&r§;
   import §@!6§.§3!5§;
   import §[!F§.§3j§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import §`!<§.§'2§;
   import §`!<§.§`!r§;
   import com.angrybirds.§6!E§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §#!S§
   {
      
      public static const §7w§:String = "StatePlay";
       
      
      protected var §'T§:§'2§;
      
      protected var §;!0§:§`!r§;
      
      public function StatePlay(param1:§ q§, param2:§>u§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §2!w§() : §'2§
      {
         return this.§'T§;
      }
      
      override protected function init() : void
      {
         § !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §[%§() : void
      {
         this.§>" §();
         this.§ !1§();
         this.§for§();
      }
      
      protected function §+"2§() : void
      {
         this.§]d§();
         if(this.§'T§)
         {
            this.§'T§.dispose();
            this.§'T§ = null;
         }
         if(this.§;!0§)
         {
            this.§;!0§.dispose();
            this.§;!0§ = null;
         }
      }
      
      protected function §>" §() : void
      {
         var _loc1_:§&r§ = §-!I§.§[f§.§?4§;
         var _loc2_:§3j§ = §3j§(§ !z§.getItemByName("Container_Pause"));
         this.§;!0§ = new §6!J§(_loc2_,§="4§,_loc1_,§2e§);
      }
      
      protected function § !1§() : void
      {
         var _loc1_:§&r§ = §-!I§.§[f§.§?4§;
         var _loc2_:§3j§ = §3j§(§ !z§.getItemByName("Container_Play"));
         this.§'T§ = new §4[§(_loc2_,§="4§,§6!P§,_loc1_,§2e§);
      }
      
      protected function §for§() : void
      {
         this.§;!0§.addEventListener(§4!V§.§!n§,this.§=B§);
         this.§;!0§.addEventListener(§4!V§.§'!Z§,this.§=B§);
         this.§;!0§.addEventListener(§4!V§.RESTART_LEVEL,this.§=B§);
         this.§;!0§.addEventListener(§4!V§.RESUME_LEVEL,this.§=B§);
         this.§'T§.addEventListener(§4!V§.§'!Z§,this.§=B§);
         this.§'T§.addEventListener(§4!V§.RESTART_LEVEL,this.§=B§);
         this.§'T§.addEventListener(§4!V§.RESUME_LEVEL,this.§=B§);
         this.§'T§.addEventListener(§4!V§.§0u§,this.§=B§);
      }
      
      protected function §]d§() : void
      {
         this.§;!0§.removeEventListener(§4!V§.§!n§,this.§=B§);
         this.§;!0§.removeEventListener(§4!V§.§'!Z§,this.§=B§);
         this.§;!0§.removeEventListener(§4!V§.RESTART_LEVEL,this.§=B§);
         this.§;!0§.removeEventListener(§4!V§.RESUME_LEVEL,this.§=B§);
         this.§'T§.removeEventListener(§4!V§.§'!Z§,this.§=B§);
         this.§'T§.removeEventListener(§4!V§.RESTART_LEVEL,this.§=B§);
         this.§'T§.removeEventListener(§4!V§.RESUME_LEVEL,this.§=B§);
         this.§'T§.removeEventListener(§4!V§.§0u§,this.§=B§);
      }
      
      override protected function levelStarted() : void
      {
         this.§>s§();
         super.levelStarted();
         this.§",§();
      }
      
      protected function §>s§() : void
      {
         §3!5§.§,!8§();
      }
      
      protected function §",§() : void
      {
         §3!5§.§class§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§[%§();
         this.§!c§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§+"2§();
         §-!I§.§[f§.§^o§ = false;
         super.deActivate();
      }
      
      protected function §!c§(param1:Boolean, param2:Boolean = true) : void
      {
         §-!I§.§[f§.§^o§ = param1;
         if(param1)
         {
            this.§'T§.disable(param2);
            this.§;!0§.enable(param2);
         }
         else
         {
            this.§'T§.enable(param2);
            this.§;!0§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§'T§ && this.§'T§.§1!O§())
         {
            this.§'T§.update(param1);
         }
         if(this.§;!0§ && this.§;!0§.§1!O§())
         {
            this.§;!0§.update(param1);
         }
      }
      
      protected function §=B§(param1:§4!V§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §4!V§.§!n§:
               break;
            case §4!V§.§0u§:
               this.§!c§(true);
               break;
            case §4!V§.RESUME_LEVEL:
               this.§!c§(false);
               break;
            case §4!V§.RESTART_LEVEL:
               this.§4!I§();
               break;
            case §4!V§.§'!Z§:
               _loc2_ = param1.§<e§;
               §?n§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§2!w§.isEagleUsed())
         {
            return §#!v§.§7w§;
         }
         return §"d§.§7w§;
      }
      
      override public function getLoserStateName() : String
      {
         return §?;§.§7w§;
      }
      
      protected function §="§() : String
      {
         return §4!R§.§7w§;
      }
      
      protected function §4!I§() : void
      {
         §?n§(this.§="§());
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
               if(!§6!E§.isPaused)
               {
                  this.§4!I§();
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
         if(§6!E§.§%q§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §?n§(this.§="§());
                  break;
               case Keyboard.NUMBER_6:
                  §?n§(this.§="§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
   }
}
