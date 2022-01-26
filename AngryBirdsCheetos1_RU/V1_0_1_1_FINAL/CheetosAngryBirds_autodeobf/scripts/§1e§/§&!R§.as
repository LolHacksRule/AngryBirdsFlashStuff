package §1e§
{
   import §&h§.§+Y§;
   import §2!C§.§1!b§;
   import §2K§.§ 3§;
   import §2K§.§,!@§;
   import §2K§.§2X§;
   import §2K§.§catch§;
   import §3!8§.§[X§;
   import §6!K§.§3l§;
   import §6!K§.§7!!§;
   import §9!B§.§"!=§;
   import §>!D§.§;,§;
   import §^Q§.§,^§;
   import flash.display.MovieClip;
   
   public class §&!R§ implements §2X§
   {
      
      public static const ERROR:String = "error";
      
      public static const §6'§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §?!b§:String = "use_credit";
      
      public static const §2!L§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §7!B§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §4S§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §5S§:Array = [ERROR,§6'§,RESTART_LEVEL,NO_CREDIT,§?!b§,§2!L§,§7!B§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§4S§,CONFIRM_LEAVE];
      
      private static var §+!B§:Array = [§6'§,RESTART_LEVEL,§?!b§];
      
      private static const §&!X§:String = "DarkBg";
      
      private static var §5!`§:Boolean = false;
       
      
      private var §-<§:String;
      
      private var §"!P§:§,!@§;
      
      public function §&!R§()
      {
         super();
      }
      
      public static function get §;!M§() : Boolean
      {
         return §5!`§;
      }
      
      public function set container(param1:§,!@§) : void
      {
         this.§"!P§ = param1;
      }
      
      public function get container() : §,!@§
      {
         return this.§"!P§;
      }
      
      public function §^5§(param1:XML, param2:§,!@§, param3:§;,§, param4:§+Y§, param5:MovieClip = null) : void
      {
         this.container = new §"!=§(param1,param2,param3,param4 as §1!b§,param5);
         §5!`§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§,!@§ = null;
         var _loc5_:§3l§ = null;
         var _loc6_:§7!!§ = null;
         var _loc7_:§ 3§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§7d§.§`!<§.§`-§ && §+!B§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§7d§.§`!<§.§ ! § && param1 == §&!R§.§2!L§)
         {
            return false;
         }
         for each(_loc3_ in §5S§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§&!X§).setVisibility(true);
         this.§-<§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §6'§:
               ((this.container.getItemByName(param1) as §,!@§).getItemByName("TextField_Description") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §,!@§).getItemByName("MovieClip_CheckBox") as §,!@§).getItemByName("TextField_CheckBox") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §3l§;
               if(§7d§.§`!<§.§`-§)
               {
                  _loc5_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§3l§.§0!c§);
               }
               break;
            case §?!b§:
               ((this.container.getItemByName(param1) as §,!@§).getItemByName("TextField_Description") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §,!@§).getItemByName("MovieClip_CheckBox") as §,!@§).getItemByName("TextField_CheckBox") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §3l§;
               if(§7d§.§`!<§.§`-§)
               {
                  _loc5_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§3l§.§0!c§);
               }
               break;
            case §2!L§:
               ((this.container.getItemByName(param1) as §,!@§).getItemByName("TextField_Description") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §,!@§).getItemByName("MovieClip_CheckBox") as §,!@§).getItemByName("TextField_CheckBox") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §3l§;
               if(§7d§.§`!<§.§ ! §)
               {
                  _loc5_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§3l§.§0!c§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §,!@§).getItemByName("TextField_Description") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §,!@§).getItemByName("MovieClip_CheckBox") as §,!@§).getItemByName("TextField_CheckBox") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §3l§;
               if(§7d§.§`!<§.§`-§)
               {
                  _loc5_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§3l§.§0!c§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §,!@§).getItemByName("TextField_Description") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §,!@§).getItemByName("TextField_Description") as §catch§).§3!X§.htmlText = §[X§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §,!@§).getItemByName("Button_RedeemCredit") as § 3§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §4S§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §,!@§).getItemByName("TextField_Description") as §catch§).§3!X§.htmlText = param2;
         }
         §,^§.§9!§();
         §5!`§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§7!!§ = null;
         if(this.§-<§)
         {
            if(this.container)
            {
               for each(_loc1_ in §5S§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§&!X§).setVisibility(false);
         if(§>c§.§;!M§ == false)
         {
            §,^§.§5H§();
         }
         §5!`§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§-<§;
      }
   }
}
