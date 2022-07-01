package §`!6§
{
   import §#!`§.§+"#§;
   import §2!b§.§1n§;
   import §3!!§.§5" §;
   import §9![§.§1!i§;
   import §9!b§.§!!&§;
   import §>!a§.§5l§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import §`!C§.§=!a§;
   import §`!h§.§-!e§;
   import §`!h§.§8!n§;
   import com.angrybirds.§4!l§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §`c§
   {
      
      public static const §]O§:String = "StatePlay";
       
      
      protected var §3!m§:§8!n§;
      
      protected var §`P§:§-!e§;
      
      public function StatePlay(param1:§5l§, param2:§-!<§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §]!E§() : §8!n§
      {
         return this.§3!m§;
      }
      
      override protected function init() : void
      {
         §!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §@x§() : void
      {
         this.§"!V§();
         this.§ "0§();
         this.§5!r§();
      }
      
      protected function §3R§() : void
      {
         this.§2!+§();
         if(this.§3!m§)
         {
            this.§3!m§.dispose();
            this.§3!m§ = null;
         }
         if(this.§`P§)
         {
            this.§`P§.dispose();
            this.§`P§ = null;
         }
      }
      
      protected function §"!V§() : void
      {
         var _loc1_:§+"#§ = §&N§.§#Y§.§`"$§;
         var _loc2_:§5" § = §5" §(§!^§.getItemByName("Container_Pause"));
         this.§`P§ = new §!!&§(_loc2_,§^!§,_loc1_,§@d§);
      }
      
      protected function § "0§() : void
      {
         var _loc1_:§+"#§ = §&N§.§#Y§.§`"$§;
         var _loc2_:§5" § = §5" §(§!^§.getItemByName("Container_Play"));
         this.§3!m§ = new §1n§(_loc2_,§^!§,§^]§,_loc1_,§@d§);
      }
      
      protected function §5!r§() : void
      {
         this.§`P§.addEventListener(§=!a§.§5!v§,this.§]!A§);
         this.§`P§.addEventListener(§=!a§.§1K§,this.§]!A§);
         this.§`P§.addEventListener(§=!a§.RESTART_LEVEL,this.§]!A§);
         this.§`P§.addEventListener(§=!a§.RESUME_LEVEL,this.§]!A§);
         this.§3!m§.addEventListener(§=!a§.§1K§,this.§]!A§);
         this.§3!m§.addEventListener(§=!a§.RESTART_LEVEL,this.§]!A§);
         this.§3!m§.addEventListener(§=!a§.RESUME_LEVEL,this.§]!A§);
         this.§3!m§.addEventListener(§=!a§.§[!4§,this.§]!A§);
      }
      
      protected function §2!+§() : void
      {
         this.§`P§.removeEventListener(§=!a§.§5!v§,this.§]!A§);
         this.§`P§.removeEventListener(§=!a§.§1K§,this.§]!A§);
         this.§`P§.removeEventListener(§=!a§.RESTART_LEVEL,this.§]!A§);
         this.§`P§.removeEventListener(§=!a§.RESUME_LEVEL,this.§]!A§);
         this.§3!m§.removeEventListener(§=!a§.§1K§,this.§]!A§);
         this.§3!m§.removeEventListener(§=!a§.RESTART_LEVEL,this.§]!A§);
         this.§3!m§.removeEventListener(§=!a§.RESUME_LEVEL,this.§]!A§);
         this.§3!m§.removeEventListener(§=!a§.§[!4§,this.§]!A§);
      }
      
      override protected function levelStarted() : void
      {
         this.§1!d§();
         super.levelStarted();
         this.§!f§();
      }
      
      protected function §1!d§() : void
      {
         §1!i§.§ !S§();
      }
      
      protected function §!f§() : void
      {
         §1!i§.§1!t§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@x§();
         this.§function§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§3R§();
         §&N§.§#Y§.§!;§ = false;
         super.deActivate();
      }
      
      protected function §function§(param1:Boolean, param2:Boolean = true) : void
      {
         §&N§.§#Y§.§!;§ = param1;
         if(param1)
         {
            this.§3!m§.disable(param2);
            this.§`P§.enable(param2);
         }
         else
         {
            this.§3!m§.enable(param2);
            this.§`P§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§3!m§ && this.§3!m§.§9"4§())
         {
            this.§3!m§.update(param1);
         }
         if(this.§`P§ && this.§`P§.§9"4§())
         {
            this.§`P§.update(param1);
         }
      }
      
      protected function §]!A§(param1:§=!a§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §=!a§.§5!v§:
               break;
            case §=!a§.§[!4§:
               this.§function§(true);
               break;
            case §=!a§.RESUME_LEVEL:
               this.§function§(false);
               break;
            case §=!a§.RESTART_LEVEL:
               this.§<9§();
               break;
            case §=!a§.§1K§:
               _loc2_ = param1.§4!_§;
               §8=§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§]!E§.isEagleUsed())
         {
            return §=!]§.§]O§;
         }
         return §<!9§.§]O§;
      }
      
      override public function getLoserStateName() : String
      {
         return §"!^§.§]O§;
      }
      
      protected function §4!5§() : String
      {
         return §-%§.§]O§;
      }
      
      protected function §<9§() : void
      {
         §8=§(this.§4!5§());
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
               if(!§4!l§.isPaused)
               {
                  this.§<9§();
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
         if(§4!l§.§[z§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §8=§(this.§4!5§());
                  break;
               case Keyboard.NUMBER_6:
                  §8=§(this.§4!5§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
   }
}
