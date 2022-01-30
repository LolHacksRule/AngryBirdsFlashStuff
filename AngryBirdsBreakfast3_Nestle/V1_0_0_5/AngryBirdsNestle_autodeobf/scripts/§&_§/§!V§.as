package §&_§
{
   import §&<§.§^!#§;
   import §0!$§.§2!K§;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   import §6!5§.§4!R§;
   import §6!5§.§^;§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §@!6§.§3!5§;
   import §[!F§.§1c§;
   import §[!F§.§^!g§;
   
   public class §!V§ extends §-"!§
   {
      
      private static var §<"4§:Class = §7"&§;
      
      private static const §<=§:Number = 250;
       
      
      private var §'n§:§<!'§ = null;
      
      private var §5!G§:Number;
      
      private var §=!h§:String;
      
      public function §!V§(param1:String)
      {
         §^c§ = true;
         §'[§ = false;
         super(§^!=§.§=!!§,§+!]§.DEFAULT,this.§;!<§());
         this.§=!h§ = param1;
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §2!K§.§5i§(§<"4§);
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§5!G§ = §[!<§.getItemByName("Container_PauseMenu").x;
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(false);
         if(this.§=!h§)
         {
            (§[!<§.getItemByName("TextField_LevelName") as §1c§).setText(this.§=!h§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §^c§ = false;
               close();
               §4!R§.§2<§();
               §-!I§.§[f§.§?n§(§4!R§.§7w§);
               break;
            case "RESUME_LEVEL":
               this.§=!t§();
               break;
            case "MENU":
               §3!5§.§,!8§();
               §-!I§.§[f§.§?n§(§^;§.§7w§);
               §^c§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §'[§ = false;
         super.show(param1);
         this.§;!p§();
      }
      
      private function §;!p§() : void
      {
         §[!<§.getItemByName("Container_PauseMenu").x = this.§5!G§ - §<=§;
         this.§"S§(false);
         if(this.§'n§ != null)
         {
            this.§'n§.stop();
         }
         this.§'n§ = §3`§.§<"5§.§^g§(§[!<§.getItemByName("Container_PauseMenu"),{"x":this.§5!G§},null,0.25,§3`§.§^'§);
         this.§'n§.onComplete = this.§#z§;
         this.§'n§.play();
      }
      
      private function §#z§() : void
      {
         this.§"S§(true);
      }
      
      private function §"S§(param1:Boolean) : void
      {
         (§[!<§.getItemByName("Button_Resume") as §^!g§).setEnabled(param1);
         (§[!<§.getItemByName("Button_Replay") as §^!g§).setEnabled(param1);
         (§[!<§.getItemByName("Button_Menu") as §^!g§).setEnabled(param1);
      }
      
      private function §=!t§() : void
      {
         if(this.§'n§ != null)
         {
            this.§'n§.stop();
         }
         this.§'n§ = §3`§.§<"5§.§^g§(§[!<§.getItemByName("Container_PauseMenu"),{"x":this.§5!G§ - §<=§},null,0.2,§3`§.§!"-§);
         this.§'n§.play();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(true);
         hide();
      }
   }
}
