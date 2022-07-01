package §8"!§
{
   import §!P§.§5!1§;
   import §"V§.§]j§;
   import §'!u§.§&S§;
   import §'H§.§[0§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §3@§.§`!h§;
   import §9!Q§.§=!^§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import com.angrybirds.§#Z§;
   import flash.display.MovieClip;
   
   public class §=""§ extends §=!^§
   {
      
      public static const §0!q§:Number = -250;
       
      
      protected var §&! §:§4`§ = null;
      
      protected var §7y§:§]"4§;
      
      protected var §"!L§:MovieClip;
      
      protected var §-!B§:§73§;
      
      protected var §@<§:§73§;
      
      protected var §;!2§:§73§;
      
      public function §=""§(param1:§]"4§, param2:§5!1§, param3:§`!h§, param4:§&S§)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         §"W§.setVisibility(false);
         this.§7y§ = §]"4§(§"W§.getItemByName("Container_PauseMenu"));
         this.§7y§.x = §0!q§;
         this.§"!L§ = §"W§.getItemByName("MovieClip_Bg").mClip;
         this.§-!B§ = §73§(this.§7y§.getItemByName("Button_Resume"));
         this.§@<§ = §73§(this.§7y§.getItemByName("Button_Menu"));
         this.§;!2§ = §73§(this.§7y§.getItemByName("Button_Replay"));
      }
      
      override protected function refresh() : void
      {
         if(§97§.currentLevelNumericName != null)
         {
         }
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function disable(param1:Boolean) : void
      {
         this.§8j§(param1);
         super.disable(param1);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         this.refresh();
         this.§9!a§(param1);
         §#Z§.§'0§.background.§"!I§();
      }
      
      private function §^9§() : void
      {
         if(this.§&! §)
         {
            this.§&! §.stop();
            this.§&! § = null;
         }
      }
      
      protected function §9!a§(param1:Boolean) : void
      {
         §"W§.setVisibility(true);
         this.§^9§();
         §#Z§.pause();
         this.§+"#§(false);
         if(param1)
         {
            this.§&! § = §"!d§.§>!P§.§'!5§(§"!d§.§>!P§.§7R§(this.§7y§,{"x":0},null,0.25),§"!d§.§>!P§.§7R§(this.§"!L§,{"alpha":1},null,0.25));
            this.§&! §.onComplete = this.§^;§;
            this.§&! §.play();
         }
         else
         {
            this.§7y§.x = 0;
            this.§"!L§.alpha = 1;
            this.§^;§();
         }
      }
      
      protected function §^;§() : void
      {
         this.§^9§();
         §"W§.addEventListener(§]j§.§+q§,this.onUIInteraction);
         this.§+"#§(true);
      }
      
      protected function §+"#§(param1:Boolean) : void
      {
         this.§-!B§.setEnabled(param1);
         this.§;!2§.setEnabled(param1);
         this.§@<§.setEnabled(param1);
      }
      
      protected function §3§(param1:String) : void
      {
         this.§-!B§.setComponentVisualState(param1);
         this.§;!2§.setComponentVisualState(param1);
         this.§@<§.setComponentVisualState(param1);
      }
      
      protected function §8j§(param1:Boolean) : void
      {
         §"W§.removeEventListener(§]j§.§+q§,this.onUIInteraction);
         this.§^9§();
         if(param1)
         {
            this.§&! § = §"!d§.§>!P§.§'!5§(§"!d§.§>!P§.§7R§(this.§7y§,{"x":§0!q§},null,0.25),§"!d§.§>!P§.§7R§(this.§"!L§,{"alpha":0},null,0.25));
            this.§&! §.onComplete = this.§,!j§;
            this.§&! §.play();
         }
         else
         {
            this.§7y§.x = §0!q§;
            this.§"!L§.alpha = 0;
            this.§,!j§();
         }
      }
      
      protected function §,!j§() : void
      {
         §"W§.setVisibility(false);
         this.§^9§();
         dispatchEvent(new §[0§(§[0§.§"p§));
         §#Z§.resume();
      }
      
      protected function onUIInteraction(param1:§]j§) : void
      {
         if(§#!J§)
         {
            return;
         }
         switch(param1.§0]§)
         {
            case "RESTART_LEVEL":
               dispatchEvent(new §[0§(§[0§.§+§,§>!O§()));
               break;
            case "RESUME_LEVEL":
               dispatchEvent(new §[0§(§[0§.RESUME_LEVEL));
               break;
            case "MENU":
               dispatchEvent(new §[0§(§[0§.§+§,§=7§()));
         }
      }
   }
}
