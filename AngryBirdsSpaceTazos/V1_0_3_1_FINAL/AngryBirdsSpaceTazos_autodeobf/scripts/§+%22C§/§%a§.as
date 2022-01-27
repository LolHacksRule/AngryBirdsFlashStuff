package §+"C§
{
   import §+"2§.§?d§;
   import §+"2§.§`B§;
   import §,!7§.§%!J§;
   import §,!7§.§2a§;
   import §6!C§.§7[§;
   import §6B§.§?"2§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §=" §.§ Q§;
   import §=" §.StateEpisodeSelection;
   import §>"!§.§@!9§;
   
   public class §%a§ extends §^"4§
   {
      
      private static var §?[§:Class = §+@§;
      
      private static const §'a§:Number = 250;
       
      
      private var §6_§:§15§ = null;
      
      private var §#s§:Number;
      
      private var §2D§:String;
      
      public function §%a§(param1:String)
      {
         §^">§ = true;
         §6"B§ = false;
         super(§?d§.§'I§,§`B§.§-! §,§7[§.§[!n§(§?[§));
         this.§2D§ = param1;
      }
      
      override protected function init() : void
      {
         super.init();
         this.§#s§ = § 1§.getItemByName("Container_PauseMenu").x;
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(false);
         (§ 1§.getItemByName("TextField_LevelName") as §2a§).setText(this.§2D§);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §^">§ = false;
               close();
               § Q§.§]6§();
               §&"<§.§<!7§.§'Q§(§ Q§.STATE_NAME);
               break;
            case "RESUME_LEVEL":
               this.§%i§();
               break;
            case "MENU":
               §@!9§.§["6§();
               §&"<§.§<!7§.§'Q§(StateEpisodeSelection.STATE_NAME);
               §^">§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §6"B§ = false;
         super.show(param1);
         this.§`R§();
      }
      
      private function §`R§() : void
      {
         § 1§.getItemByName("Container_PauseMenu").x = this.§#s§ - §'a§;
         this.§1!b§(false);
         if(this.§6_§ != null)
         {
            this.§6_§.stop();
         }
         this.§6_§ = §@F§.§8!J§.§&6§(§ 1§.getItemByName("Container_PauseMenu"),{"x":this.§#s§},null,0.25,§@F§.§>!<§);
         this.§6_§.onComplete = this.§`!-§;
         this.§6_§.play();
      }
      
      private function §`!-§() : void
      {
         this.§1!b§(true);
      }
      
      private function §1!b§(param1:Boolean) : void
      {
         (§ 1§.getItemByName("Button_Resume") as §%!J§).setEnabled(param1);
         (§ 1§.getItemByName("Button_Replay") as §%!J§).setEnabled(param1);
         (§ 1§.getItemByName("Button_Menu") as §%!J§).setEnabled(param1);
      }
      
      private function §%i§() : void
      {
         if(this.§6_§ != null)
         {
            this.§6_§.stop();
         }
         this.§6_§ = §@F§.§8!J§.§&6§(§ 1§.getItemByName("Container_PauseMenu"),{"x":this.§#s§ - §'a§},null,0.25,§@F§.§'_§);
         this.§6_§.§!5§ = false;
         this.§6_§.play();
         (§&"<§.§<!7§ as §["!§).§^"<§.§@R§(true);
         hide();
      }
   }
}
