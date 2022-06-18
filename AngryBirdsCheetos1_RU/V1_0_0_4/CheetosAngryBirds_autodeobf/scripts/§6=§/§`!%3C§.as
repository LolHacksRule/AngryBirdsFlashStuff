package §6=§
{
   import §!!S§.§'+§;
   import §!!S§.§>a§;
   import §'Q§.§=!R§;
   import §3!M§.§#!W§;
   import §3!M§.§&!S§;
   import §3!M§.§7^§;
   import §3!M§.§`!;§;
   import §;!X§.§7`§;
   import §?!F§.§0!Y§;
   import §[I§.§8!B§;
   import §^L§.§-G§;
   import §`B§.§-Z§;
   import flash.display.MovieClip;
   
   public class §`!<§ implements §#!W§
   {
      
      public static const ERROR:String = "error";
      
      public static const §<!P§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §6M§:String = "use_credit";
      
      public static const §>![§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §5=§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §[!9§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §'<§:Array = [ERROR,§<!P§,RESTART_LEVEL,NO_CREDIT,§6M§,§>![§,§5=§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§[!9§,CONFIRM_LEAVE];
      
      private static var §!Y§:Array = [§<!P§,RESTART_LEVEL,§6M§];
      
      private static const §-P§:String = "DarkBg";
      
      private static var §2F§:Boolean = false;
       
      
      private var §7!R§:String;
      
      private var §!z§:§7^§;
      
      public function §`!<§()
      {
         super();
      }
      
      public static function get §^!!§() : Boolean
      {
         return §2F§;
      }
      
      public function set container(param1:§7^§) : void
      {
         this.§!z§ = param1;
      }
      
      public function get container() : §7^§
      {
         return this.§!z§;
      }
      
      public function §+V§(param1:XML, param2:§7^§, param3:§-Z§, param4:§0!Y§, param5:MovieClip = null) : void
      {
         this.container = new §-G§(param1,param2,param3,param4 as §=!R§,param5);
         §2F§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§7^§ = null;
         var _loc5_:§>a§ = null;
         var _loc6_:§'+§ = null;
         var _loc7_:§`!;§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§4+§.§;U§.§^5§ && §!Y§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§4+§.§;U§.§=M§ && param1 == §`!<§.§>![§)
         {
            return false;
         }
         for each(_loc3_ in §'<§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§-P§).setVisibility(true);
         this.§7!R§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §<!P§:
               ((this.container.getItemByName(param1) as §7^§).getItemByName("TextField_Description") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §7^§).getItemByName("MovieClip_CheckBox") as §7^§).getItemByName("TextField_CheckBox") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §>a§;
               if(§4+§.§;U§.§^5§)
               {
                  _loc5_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§>a§.§%b§);
               }
               break;
            case §6M§:
               ((this.container.getItemByName(param1) as §7^§).getItemByName("TextField_Description") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §7^§).getItemByName("MovieClip_CheckBox") as §7^§).getItemByName("TextField_CheckBox") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §>a§;
               if(§4+§.§;U§.§^5§)
               {
                  _loc5_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§>a§.§%b§);
               }
               break;
            case §>![§:
               ((this.container.getItemByName(param1) as §7^§).getItemByName("TextField_Description") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §7^§).getItemByName("MovieClip_CheckBox") as §7^§).getItemByName("TextField_CheckBox") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §>a§;
               if(§4+§.§;U§.§=M§)
               {
                  _loc5_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§>a§.§%b§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §7^§).getItemByName("TextField_Description") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §7^§).getItemByName("MovieClip_CheckBox") as §7^§).getItemByName("TextField_CheckBox") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §>a§;
               if(§4+§.§;U§.§^5§)
               {
                  _loc5_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§>a§.§%b§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §7^§).getItemByName("TextField_Description") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §7^§).getItemByName("TextField_Description") as §&!S§).§@9§.htmlText = §8!B§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §7^§).getItemByName("Button_RedeemCredit") as §`!;§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §[!9§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §7^§).getItemByName("TextField_Description") as §&!S§).§@9§.htmlText = param2;
         }
         §7`§.§,-§();
         §2F§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§'+§ = null;
         if(this.§7!R§)
         {
            if(this.container)
            {
               for each(_loc1_ in §'<§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§-P§).setVisibility(false);
         if(§"!^§.§^!!§ == false)
         {
            §7`§.§,!V§();
         }
         §2F§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§7!R§;
      }
   }
}
