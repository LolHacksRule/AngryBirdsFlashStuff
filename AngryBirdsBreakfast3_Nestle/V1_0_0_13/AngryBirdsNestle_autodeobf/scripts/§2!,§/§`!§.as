package §2!,§
{
   import §!R§.§#!L§;
   import §#!]§.§6U§;
   import §#!]§.§[!d§;
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §4Y§.§ `§;
   import §4Y§.§&0§;
   import §8!$§.§1b§;
   import §;X§.§4!@§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   
   public class §`!§ extends §,!#§
   {
      
      private static var §;>§:Class = §2!!§;
      
      private static const §^"4§:Number = 250;
       
      
      private var §&A§:§^!T§ = null;
      
      private var §!!N§:Number;
      
      private var §1!B§:String;
      
      public function §`!§(param1:String)
      {
         §&5§ = true;
         §2L§ = false;
         super(§8!f§.§5c§,§finally§.DEFAULT,this.§';§());
         this.§1!B§ = param1;
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§;>§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!!N§ = §;"#§.getItemByName("Container_PauseMenu").x;
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(false);
         if(this.§1!B§)
         {
            (§;"#§.getItemByName("TextField_LevelName") as §&0§).setText(this.§1!B§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "RESTART_LEVEL":
               §&5§ = false;
               close();
               §6U§.§2!2§();
               §-!2§.§7O§.§]a§(§6U§.§]!y§);
               break;
            case "RESUME_LEVEL":
               this.§[3§();
               break;
            case "MENU":
               §4!@§.§ true§();
               §-!2§.§7O§.§]a§(§[!d§.§]!y§);
               §&5§ = false;
               close();
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         §2L§ = false;
         super.show(param1);
         this.§;!h§();
      }
      
      private function §;!h§() : void
      {
         §;"#§.getItemByName("Container_PauseMenu").x = this.§!!N§ - §^"4§;
         this.§06§(false);
         if(this.§&A§ != null)
         {
            this.§&A§.stop();
         }
         this.§&A§ = §%"!§.§&!;§.§"!]§(§;"#§.getItemByName("Container_PauseMenu"),{"x":this.§!!N§},null,0.25,§%"!§.§#!f§);
         this.§&A§.onComplete = this.§2"#§;
         this.§&A§.play();
      }
      
      private function §2"#§() : void
      {
         this.§06§(true);
      }
      
      private function §06§(param1:Boolean) : void
      {
         (§;"#§.getItemByName("Button_Resume") as § `§).setEnabled(param1);
         (§;"#§.getItemByName("Button_Replay") as § `§).setEnabled(param1);
         (§;"#§.getItemByName("Button_Menu") as § `§).setEnabled(param1);
      }
      
      private function §[3§() : void
      {
         if(this.§&A§ != null)
         {
            this.§&A§.stop();
         }
         this.§&A§ = §%"!§.§&!;§.§"!]§(§;"#§.getItemByName("Container_PauseMenu"),{"x":this.§!!N§ - §^"4§},null,0.2,§%"!§.§+!H§);
         this.§&A§.play();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(true);
         hide();
      }
   }
}
