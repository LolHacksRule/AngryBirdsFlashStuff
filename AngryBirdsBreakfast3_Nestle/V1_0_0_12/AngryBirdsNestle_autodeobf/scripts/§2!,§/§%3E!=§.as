package §2!,§
{
   import §!"§.§@]§;
   import §!"§.LoginHandlerEvent;
   import §!"§.§^!7§;
   import §!R§.§#!L§;
   import §#!]§.§!!P§;
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §4"!§.§?!#§;
   import §8!$§.§1b§;
   import §;X§.§4!@§;
   import §="5§.HighscoreSidebar;
   import §`!s§.§^2§;
   
   public class §>!=§ extends §,!#§
   {
      
      private static var §`!%§:Class = §^!3§;
       
      
      private var §<!i§:Boolean;
      
      private var §&I§:§@]§;
      
      private var §[O§:Boolean;
      
      public function §>!=§(param1:§@]§)
      {
         §&5§ = true;
         §2L§ = true;
         §[!k§ = true;
         super(§8!f§.§^!D§,§finally§.DEFAULT,this.§';§());
         this.§&I§ = param1;
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§`!%§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§<!i§ = false;
         this.updateTextFields();
         this.§[O§ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§<!1§;
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(false);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§<!i§ = true;
               (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(this.§[O§);
               §4!@§.§`!w§("Menu_Confirm");
               close();
               break;
            case "LOGOUT_NO":
               (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§.§-_§(true);
               (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§%"-§(this.§[O§);
               §4!@§.§`!w§("Menu_Back");
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§<!i§)
         {
            this.§<!i§ = false;
            §?!#§.§^"&§ = true;
            (§-!2§.§7O§ as AngryBirdsCustom).§ !R§();
            §^!7§.levelProfile = [];
            (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§'R§ = false;
            this.§&I§.§!!<§();
            §-!2§.§7O§.§]a§(§!!P§.§]!y§);
            (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§-!w§();
            ((§-!2§.§7O§ as AngryBirdsCustom).§0!l§ as §2!@§).§?C§(false,false,true);
            _loc3_ = (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!+§;
            _loc3_.reset();
            _loc3_.§!!"§();
            §4!@§.§ true§();
            this.§&I§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§%V§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §^2§.§&!;§.updateTextFields(§;"#§,"Logout_Popup");
      }
   }
}
