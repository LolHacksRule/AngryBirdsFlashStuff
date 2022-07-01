package §&_§
{
   import §&<§.§^!#§;
   import §0!$§.§2!K§;
   import §2W§.§+!d§;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   import §6!5§.§2!E§;
   import §63§.§=7§;
   import §63§.LoginHandlerEvent;
   import §63§.§^!!§;
   import §@!6§.§3!5§;
   import §]K§.HighscoreSidebar;
   import §const§.§!!`§;
   
   public class §[!Y§ extends §-"!§
   {
      
      private static var §4!!§:Class = §4!P§;
       
      
      private var §8e§:Boolean;
      
      private var §9R§:§=7§;
      
      private var §]"#§:Boolean;
      
      public function §[!Y§(param1:§=7§)
      {
         §^c§ = true;
         §'[§ = true;
         §null§ = true;
         super(§^!=§.§0" §,§+!]§.DEFAULT,this.§;!<§());
         this.§9R§ = param1;
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §2!K§.§5i§(§4!!§);
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8e§ = false;
         this.updateTextFields();
         this.§]"#§ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§,I§;
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(false);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§8e§ = true;
               (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(this.§]"#§);
               §3!5§.§<!9§("Menu_Confirm");
               close();
               break;
            case "LOGOUT_NO":
               (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§.§94§(true);
               (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§&!i§(this.§]"#§);
               §3!5§.§<!9§("Menu_Back");
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§8e§)
         {
            this.§8e§ = false;
            §!!`§.§,i§ = true;
            (§-!I§.§[f§ as AngryBirdsCustom).§&=§();
            §^!!§.levelProfile = [];
            (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§ !%§ = false;
            this.§9R§.§#"-§();
            §-!I§.§[f§.§?n§(§2!E§.§7w§);
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§%7§();
            ((§-!I§.§[f§ as AngryBirdsCustom).§@!C§ as §]s§).§41§(false,false,true);
            _loc3_ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§;
            _loc3_.reset();
            _loc3_.§<J§();
            §3!5§.§,!8§();
            this.§9R§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§#F§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §+!d§.§<"5§.updateTextFields(§[!<§,"Logout_Popup");
      }
   }
}
