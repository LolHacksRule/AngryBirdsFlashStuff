package §@!l§
{
   import § !Q§.§=!3§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §>P§.§%`§;
   import §>P§.§73§;
   import §]!V§.§0X§;
   import §]!V§.§5!h§;
   
   public class §,"%§ extends §-"+§
   {
      
      private static var §>!2§:Class = §?" §;
      
      private static const §0!q§:Number = 250;
       
      
      private var §&! §:§4`§ = null;
      
      private var §9X§:Number;
      
      private var §7J§:String;
      
      public function §,"%§(param1:String)
      {
         §@_§ = true;
         §!"6§ = false;
         super(§>!&§.§^3§,§4!f§.DEFAULT,this.§[x§());
         this.§7J§ = param1;
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§>!2§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§9X§ = §-"1§.getItemByName("Container_PauseMenu").x;
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(false);
         if(this.§7J§)
         {
            (§-"1§.getItemByName("TextField_LevelName") as §%`§).setText(this.§7J§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §@_§ = false;
               close();
               §5!h§.§`!H§();
               §,!X§.§>!G§.§8!`§(§5!h§.§+a§);
               break;
            case "RESUME_LEVEL":
               this.§8j§();
               break;
            case "MENU":
               §%!c§.§0O§();
               §,!X§.§>!G§.§8!`§(§0X§.§+a§);
               §@_§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §!"6§ = false;
         super.show(param1);
         this.§9!a§();
      }
      
      private function §9!a§() : void
      {
         §-"1§.getItemByName("Container_PauseMenu").x = this.§9X§ - §0!q§;
         this.§+"#§(false);
         if(this.§&! § != null)
         {
            this.§&! §.stop();
         }
         this.§&! § = §"!d§.§>!P§.§7R§(§-"1§.getItemByName("Container_PauseMenu"),{"x":this.§9X§},null,0.25,§"!d§.§?9§);
         this.§&! §.onComplete = this.§^;§;
         this.§&! §.play();
      }
      
      private function §^;§() : void
      {
         this.§+"#§(true);
      }
      
      private function §+"#§(param1:Boolean) : void
      {
         (§-"1§.getItemByName("Button_Resume") as §73§).setEnabled(param1);
         (§-"1§.getItemByName("Button_Replay") as §73§).setEnabled(param1);
         (§-"1§.getItemByName("Button_Menu") as §73§).setEnabled(param1);
      }
      
      private function §8j§() : void
      {
         if(this.§&! § != null)
         {
            this.§&! §.stop();
         }
         this.§&! § = §"!d§.§>!P§.§7R§(§-"1§.getItemByName("Container_PauseMenu"),{"x":this.§9X§ - §0!q§},null,0.2,§"!d§.§,!y§);
         this.§&! §.play();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(true);
         hide();
      }
   }
}
