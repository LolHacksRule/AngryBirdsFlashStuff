package § "p§
{
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §,"N§.§@>§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;!W§.§[!§;
   import §<w§.§6#'§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   
   public class §2!Y§ extends §[!§
   {
      
      public static const §9k§:Number = -250;
       
      
      protected var §@!`§:§[#R§ = null;
      
      protected var §=!6§:§ #^§;
      
      protected var §<h§:MovieClip;
      
      protected var §<"6§:§^"m§;
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      public function §2!Y§(param1:§ #^§, param2:§+"2§, param3:§@>§, param4:§5"H§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §=#=§.setVisibility(false);
         this.§=!6§ = § #^§(§=#=§.getItemByName("Container_PauseMenu"));
         this.§=!6§.x = §9k§;
         this.§<h§ = §=#=§.getItemByName("MovieClip_Bg").mClip;
         this.§<"6§ = §^"m§(this.§=!6§.getItemByName("Button_Resume"));
         this.§^W§ = §^"m§(this.§=!6§.getItemByName("Button_Menu"));
         this.§^"^§ = §^"m§(this.§=!6§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§+!b§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§8!@§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§3!q§(param1);
         §,!q§.§9!,§.background.stopAmbientSound();
      }
      
      private function §8!m§() : void
      {
         if(this.§@!`§)
         {
            this.§@!`§.stop();
            this.§@!`§ = null;
         }
      }
      
      protected function §3!q§(param1:Boolean) : void
      {
         §=#=§.setVisibility(true);
         this.§8!m§();
         §,!q§.pause();
         this.§;"]§(false);
         if(param1)
         {
            this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§=!6§,{"x":0},null,0.25),§-#C§.§%!E§.§^!H§(this.§<h§,{"alpha":1},null,0.25));
            this.§@!`§.onComplete = this.§ "6§;
            this.§@!`§.play();
         }
         else
         {
            this.§=!6§.x = 0;
            this.§<h§.alpha = 1;
            this.§ "6§();
         }
      }
      
      protected function § "6§() : void
      {
         this.§8!m§();
         §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§;"]§(true);
      }
      
      protected function §;"]§(param1:Boolean) : void
      {
         this.§<"6§.setEnabled(param1);
         this.§^"^§.setEnabled(param1);
         this.§^W§.setEnabled(param1);
      }
      
      protected function §0"v§(param1:String) : void
      {
         this.§<"6§.setComponentVisualState(param1);
         this.§^"^§.setComponentVisualState(param1);
         this.§^W§.setComponentVisualState(param1);
      }
      
      protected function §8!@§(param1:Boolean) : void
      {
         §=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§8!m§();
         if(param1)
         {
            this.§@!`§ = §-#C§.§%!E§.§^$§(§-#C§.§%!E§.§^!H§(this.§=!6§,{"x":§9k§},null,0.25),§-#C§.§%!E§.§^!H§(this.§<h§,{"alpha":0},null,0.25));
            this.§@!`§.onComplete = this.§;!§;
            this.§@!`§.play();
         }
         else
         {
            this.§=!6§.x = §9k§;
            this.§<h§.alpha = 0;
            this.§;!§();
         }
      }
      
      protected function §;!§() : void
      {
         §=#=§.setVisibility(false);
         this.§8!m§();
         dispatchEvent(new §"!4§(§"!4§.§ z§));
         §,!q§.resume();
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         if(§]"u§)
         {
            return;
         }
         switch(param1.§=!k§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelLoadStateName()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §"!4§(§"!4§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelSelectionStateName()));
         }
      }
   }
}
