package §4p§
{
   import §#h§.§^!+§;
   import §+!^§.§'Y§;
   import §1Y§.§+$§;
   import §3n§.§<D§;
   import §7'§.§ ?§;
   import §7'§.§'q§;
   import §8v§.§#Z§;
   import §;$§.§!D§;
   import §?>§.§ !V§;
   import §?>§.§!&§;
   import §?>§.§8"§;
   import §?>§.§<l§;
   import flash.display.MovieClip;
   
   public class §-5§ implements §8"§
   {
      
      public static const ERROR:String = "error";
      
      public static const §true §:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §4?§:String = "use_credit";
      
      public static const §8j§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §?!G§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §"!0§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §2c§:Array = [ERROR,§true §,RESTART_LEVEL,NO_CREDIT,§4?§,§8j§,§?!G§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§"!0§,CONFIRM_LEAVE];
      
      private static var §8!`§:Array = [§true §,RESTART_LEVEL,§4?§];
      
      private static const §<R§:String = "DarkBg";
      
      private static var §=!L§:Boolean = false;
       
      
      private var §#G§:String;
      
      private var §0!"§:§ !V§;
      
      public function §-5§()
      {
         super();
      }
      
      public static function get §%?§() : Boolean
      {
         return §=!L§;
      }
      
      public function set container(param1:§ !V§) : void
      {
         this.§0!"§ = param1;
      }
      
      public function get container() : § !V§
      {
         return this.§0!"§;
      }
      
      public function §>B§(param1:XML, param2:§ !V§, param3:§#Z§, param4:§+$§, param5:MovieClip = null) : void
      {
         this.container = new §!D§(param1,param2,param3,param4 as §<D§,param5);
         §=!L§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§ !V§ = null;
         var _loc5_:§'q§ = null;
         var _loc6_:§ ?§ = null;
         var _loc7_:§!&§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§7!^§.§-!@§.§=-§ && §8!`§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§7!^§.§-!@§.§2!E§ && param1 == §-5§.§8j§)
         {
            return false;
         }
         for each(_loc3_ in §2c§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§<R§).setVisibility(true);
         this.§#G§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §true §:
               ((this.container.getItemByName(param1) as § !V§).getItemByName("TextField_Description") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as § !V§).getItemByName("MovieClip_CheckBox") as § !V§).getItemByName("TextField_CheckBox") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §'q§;
               if(§7!^§.§-!@§.§=-§)
               {
                  _loc5_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§'q§.§"!^§);
               }
               break;
            case §4?§:
               ((this.container.getItemByName(param1) as § !V§).getItemByName("TextField_Description") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as § !V§).getItemByName("MovieClip_CheckBox") as § !V§).getItemByName("TextField_CheckBox") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §'q§;
               if(§7!^§.§-!@§.§=-§)
               {
                  _loc5_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§'q§.§"!^§);
               }
               break;
            case §8j§:
               ((this.container.getItemByName(param1) as § !V§).getItemByName("TextField_Description") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as § !V§).getItemByName("MovieClip_CheckBox") as § !V§).getItemByName("TextField_CheckBox") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §'q§;
               if(§7!^§.§-!@§.§2!E§)
               {
                  _loc5_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§'q§.§"!^§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as § !V§).getItemByName("TextField_Description") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as § !V§).getItemByName("MovieClip_CheckBox") as § !V§).getItemByName("TextField_CheckBox") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §'q§;
               if(§7!^§.§-!@§.§=-§)
               {
                  _loc5_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§'q§.§"!^§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as § !V§).getItemByName("TextField_Description") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as § !V§).getItemByName("TextField_Description") as §<l§).§]!N§.htmlText = §^!+§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as § !V§).getItemByName("Button_RedeemCredit") as §!&§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §"!0§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as § !V§).getItemByName("TextField_Description") as §<l§).§]!N§.htmlText = param2;
         }
         §'Y§.§ D§();
         §=!L§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§ ?§ = null;
         if(this.§#G§)
         {
            if(this.container)
            {
               for each(_loc1_ in §2c§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§<R§).setVisibility(false);
         if(§;O§.§%?§ == false)
         {
            §'Y§.§"r§();
         }
         §=!L§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§#G§;
      }
   }
}
