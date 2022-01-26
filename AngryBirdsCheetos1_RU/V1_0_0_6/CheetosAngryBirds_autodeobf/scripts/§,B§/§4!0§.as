package §,B§
{
   import §%Y§.§,5§;
   import §'!N§.§2!3§;
   import §'!N§.§71§;
   import §1!§.§@!Q§;
   import §;!K§.§+!4§;
   import §;[§.§'z§;
   import §;[§.§6M§;
   import §;[§.§7!F§;
   import §;[§.§>!^§;
   import §=@§.§4k§;
   import §]!U§.§#!B§;
   import §]m§.§-D§;
   import flash.display.MovieClip;
   
   public class §4!0§ implements §6M§
   {
      
      public static const ERROR:String = "error";
      
      public static const §3k§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §^!&§:String = "use_credit";
      
      public static const §,M§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §5!S§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §^C§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §3-§:Array = [ERROR,§3k§,RESTART_LEVEL,NO_CREDIT,§^!&§,§,M§,§5!S§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§^C§,CONFIRM_LEAVE];
      
      private static var §[&§:Array = [§3k§,RESTART_LEVEL,§^!&§];
      
      private static const §=!9§:String = "DarkBg";
      
      private static var §[-§:Boolean = false;
       
      
      private var §;!E§:String;
      
      private var §4A§:§>!^§;
      
      public function §4!0§()
      {
         super();
      }
      
      public static function get §<3§() : Boolean
      {
         return §[-§;
      }
      
      public function set container(param1:§>!^§) : void
      {
         this.§4A§ = param1;
      }
      
      public function get container() : §>!^§
      {
         return this.§4A§;
      }
      
      public function §'!-§(param1:XML, param2:§>!^§, param3:§+!4§, param4:§-D§, param5:MovieClip = null) : void
      {
         this.container = new §#!B§(param1,param2,param3,param4 as §,5§,param5);
         §[-§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§>!^§ = null;
         var _loc5_:§71§ = null;
         var _loc6_:§2!3§ = null;
         var _loc7_:§7!F§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§1R§.§]c§.§0]§ && §[&§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§1R§.§]c§.§3!>§ && param1 == §4!0§.§,M§)
         {
            return false;
         }
         for each(_loc3_ in §3-§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§=!9§).setVisibility(true);
         this.§;!E§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §3k§:
               ((this.container.getItemByName(param1) as §>!^§).getItemByName("TextField_Description") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §>!^§).getItemByName("MovieClip_CheckBox") as §>!^§).getItemByName("TextField_CheckBox") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §71§;
               if(§1R§.§]c§.§0]§)
               {
                  _loc5_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§71§.§69§);
               }
               break;
            case §^!&§:
               ((this.container.getItemByName(param1) as §>!^§).getItemByName("TextField_Description") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §>!^§).getItemByName("MovieClip_CheckBox") as §>!^§).getItemByName("TextField_CheckBox") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §71§;
               if(§1R§.§]c§.§0]§)
               {
                  _loc5_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§71§.§69§);
               }
               break;
            case §,M§:
               ((this.container.getItemByName(param1) as §>!^§).getItemByName("TextField_Description") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §>!^§).getItemByName("MovieClip_CheckBox") as §>!^§).getItemByName("TextField_CheckBox") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §71§;
               if(§1R§.§]c§.§3!>§)
               {
                  _loc5_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§71§.§69§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §>!^§).getItemByName("TextField_Description") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §>!^§).getItemByName("MovieClip_CheckBox") as §>!^§).getItemByName("TextField_CheckBox") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §71§;
               if(§1R§.§]c§.§0]§)
               {
                  _loc5_.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§71§.§69§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §>!^§).getItemByName("TextField_Description") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §>!^§).getItemByName("TextField_Description") as §'z§).§%!B§.htmlText = §4k§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §>!^§).getItemByName("Button_RedeemCredit") as §7!F§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §^C§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §>!^§).getItemByName("TextField_Description") as §'z§).§%!B§.htmlText = param2;
         }
         §@!Q§.§?!]§();
         §[-§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§2!3§ = null;
         if(this.§;!E§)
         {
            if(this.container)
            {
               for each(_loc1_ in §3-§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§=!9§).setVisibility(false);
         if(§#!!§.§<3§ == false)
         {
            §@!Q§.§5m§();
         }
         §[-§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§;!E§;
      }
   }
}
