package §@!l§
{
   import § !Q§.§=!3§;
   import §!!&§.§`!$§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §"q§.§6,§;
   import §"q§.§8[§;
   import §"q§.LoginHandlerEvent;
   import §%r§.§ L§;
   import §0!E§.HighscoreSidebar;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §]!V§.§@j§;
   
   public class § !u§ extends §-"+§
   {
      
      private static var §<5§:Class = §,G§;
       
      
      private var §3A§:Boolean;
      
      private var §8l§:§8[§;
      
      private var §<!N§:Boolean;
      
      public function § !u§(param1:§8[§)
      {
         §@_§ = true;
         §!"6§ = true;
         §>,§ = true;
         super(§>!&§.§;A§,§4!f§.DEFAULT,this.§[x§());
         this.§8l§ = param1;
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§<5§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3A§ = false;
         this.updateTextFields();
         this.§<!N§ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§7! §;
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(false);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "LOGOUT_YES":
               this.§3A§ = true;
               (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(this.§<!N§);
               §%!c§.§8" §("Menu_Confirm");
               close();
               break;
            case "LOGOUT_NO":
               (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§.§1!P§(true);
               (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§9!X§(this.§<!N§);
               §%!c§.§8" §("Menu_Back");
               close();
         }
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:HighscoreSidebar = null;
         if(this.§3A§)
         {
            this.§3A§ = false;
            § L§.§-w§ = true;
            (§,!X§.§>!G§ as AngryBirdsCustom).§+!K§();
            §6,§.levelProfile = [];
            (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§2!?§ = false;
            this.§8l§.§;8§();
            §,!X§.§>!G§.§8!`§(§@j§.§+a§);
            (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§#!r§();
            ((§,!X§.§>!G§ as AngryBirdsCustom).§5!K§ as §-"2§).§!!k§(false,false,true);
            _loc3_ = (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§<!%§;
            _loc3_.reset();
            _loc3_.§#!3§();
            §%!c§.§0O§();
            this.§8l§.dispatchEvent(new LoginHandlerEvent(LoginHandlerEvent.§+!3§));
         }
         super.hide(param1,param2);
      }
      
      override public function updateTextFields() : void
      {
         §`!$§.§>!P§.updateTextFields(§-"1§,"Logout_Popup");
      }
   }
}
