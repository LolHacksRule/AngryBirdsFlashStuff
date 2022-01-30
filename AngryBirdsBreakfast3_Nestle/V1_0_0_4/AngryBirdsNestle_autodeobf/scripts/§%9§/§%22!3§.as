package §%9§
{
   import §"I§.§ !R§;
   import §&5§.HighscoreSidebar;
   import §-!G§.§!!Y§;
   import §-!G§.LoginHandlerEvent;
   import §-!G§.§]!V§;
   import §8D§.§ " §;
   import §?!E§.§3!i§;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §[!b§.§'!R§;
   import §`6§.§!!]§;
   
   public class §"!3§ extends §<a§
   {
      
      private static var §7o§:Class = §?!D§;
       
      
      private var §!m§:Boolean;
      
      private var §2!b§:§]!V§;
      
      private var §`"#§:Boolean;
      
      public function §"!3§(param1:§]!V§)
      {
         §?!^§ = true;
         §+!X§ = true;
         §8!^§ = true;
         super(§9r§.§2!V§,§>!H§.DEFAULT,this.§^!!§());
         this.§2!b§ = param1;
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§7o§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!m§ = false;
         this.updateTextFields();
         this.§`"#§ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§++§;
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(false);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§!m§ = true;
               (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(this.§`"#§);
               close();
               break;
            case "LOGOUT_NO":
               (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§.§#"%§(true);
               (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§<<§(this.§`"#§);
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§!m§)
         {
            this.§!m§ = false;
            § " §.§4"0§ = true;
            (§-!l§.§"x§ as AngryBirdsCustom).§var§();
            §!!Y§.levelProfile = [];
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§&!P§ = false;
            this.§2!b§.§2!w§();
            §-!l§.§"x§.§0!w§(§3!i§.§+B§);
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§6c§();
            ((§-!l§.§"x§ as AngryBirdsCustom).§,!W§ as §<!M§).§;@§(false,false,true);
            _loc3_ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§;
            _loc3_.reset();
            _loc3_.§1!4§();
            this.§2!b§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§6"+§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §!!]§.§?!+§.updateTextFields(§0+§,"Logout_Popup");
      }
   }
}
