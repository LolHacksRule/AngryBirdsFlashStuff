package §2v§
{
   import §"§.§%!$§;
   import §'!D§.§0j§;
   import §'!D§.§?!h§;
   import §5G§.§?,§;
   import §>!1§.§1!+§;
   import §>M§.§'V§;
   import §>M§.§<6§;
   import §>M§.§^-§;
   import §>M§.§true §;
   import §>P§.§5!§;
   import §[h§.§4I§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   
   public class §&O§ implements §true §
   {
      
      public static const ERROR:String = "error";
      
      public static const §3!T§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §"!?§:String = "use_credit";
      
      public static const §3^§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const SESSION_EXPIRED:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §5!_§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §4!M§:Array = [ERROR,§3!T§,RESTART_LEVEL,NO_CREDIT,§"!?§,§3^§,SESSION_EXPIRED,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§5!_§,CONFIRM_LEAVE];
      
      private static var §6!c§:Array = [§3!T§,RESTART_LEVEL,§"!?§];
      
      private static const §in §:String = "DarkBg";
      
      private static var §>K§:Boolean = false;
       
      
      private var §'%§:String;
      
      private var §1A§:§<6§;
      
      public function §&O§()
      {
         super();
      }
      
      public static function get §2!,§() : Boolean
      {
         return §>K§;
      }
      
      public function set container(param1:§<6§) : void
      {
         this.§1A§ = param1;
      }
      
      public function get container() : §<6§
      {
         return this.§1A§;
      }
      
      public function §3,§(param1:XML, param2:§<6§, param3:§5!§, param4:§%!$§, param5:MovieClip = null) : void
      {
         this.container = new §1!+§(param1,param2,param3,param4 as §?,§,param5);
         §>K§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§<6§ = null;
         var _loc5_:§0j§ = null;
         var _loc6_:§?!h§ = null;
         var _loc7_:§^-§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§5!9§.§-!O§.§8!&§ && §6!c§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§5!9§.§-!O§.§+!1§ && param1 == §&O§.§3^§)
         {
            return false;
         }
         for each(_loc3_ in §4!M§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§in §).setVisibility(true);
         this.§'%§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §3!T§:
               ((this.container.getItemByName(param1) as §<6§).getItemByName("TextField_Description") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §<6§).getItemByName("MovieClip_CheckBox") as §<6§).getItemByName("TextField_CheckBox") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §0j§;
               if(§5!9§.§-!O§.§8!&§)
               {
                  _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§0j§.§+o§);
               }
               break;
            case §"!?§:
               ((this.container.getItemByName(param1) as §<6§).getItemByName("TextField_Description") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §<6§).getItemByName("MovieClip_CheckBox") as §<6§).getItemByName("TextField_CheckBox") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §0j§;
               if(§5!9§.§-!O§.§8!&§)
               {
                  _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§0j§.§+o§);
               }
               break;
            case §3^§:
               ((this.container.getItemByName(param1) as §<6§).getItemByName("TextField_Description") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §<6§).getItemByName("MovieClip_CheckBox") as §<6§).getItemByName("TextField_CheckBox") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §0j§;
               if(§5!9§.§-!O§.§+!1§)
               {
                  _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§0j§.§+o§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §<6§).getItemByName("TextField_Description") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §<6§).getItemByName("MovieClip_CheckBox") as §<6§).getItemByName("TextField_CheckBox") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §0j§;
               if(§5!9§.§-!O§.§8!&§)
               {
                  _loc5_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§0j§.§+o§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §<6§).getItemByName("TextField_Description") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §<6§).getItemByName("TextField_Description") as §'V§).§2!%§.htmlText = §4I§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §<6§).getItemByName("Button_RedeemCredit") as §^-§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §5!_§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §<6§).getItemByName("TextField_Description") as §'V§).§2!%§.htmlText = param2;
         }
         §@!Z§.§@0§();
         §>K§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§?!h§ = null;
         if(this.§'%§)
         {
            if(this.container)
            {
               for each(_loc1_ in §4!M§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§in §).setVisibility(false);
         if(§!L§.§2!,§ == false)
         {
            §@!Z§.§,R§();
         }
         §>K§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§'%§;
      }
   }
}
