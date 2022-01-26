package §9!Z§
{
   import § >§.§?6§;
   import §"!S§.§"_§;
   import §,!?§.§-! §;
   import §-!O§.§7'§;
   import §;!<§.§6C§;
   import §]!&§.§"!1§;
   import §]!&§.§#?§;
   import §]!&§.§%z§;
   import §]!&§.§]!K§;
   import §]!5§.§1k§;
   import §]!5§.§=j§;
   import §]!Y§.§5W§;
   import flash.display.MovieClip;
   
   public class §<!W§ implements §%z§
   {
      
      public static const ERROR:String = "error";
      
      public static const §'9§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §'!T§:String = "use_credit";
      
      public static const §#!$§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §2!B§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §"!<§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §-9§:Array = [ERROR,§'9§,RESTART_LEVEL,NO_CREDIT,§'!T§,§#!$§,§2!B§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§"!<§,CONFIRM_LEAVE];
      
      private static var §6S§:Array = [§'9§,RESTART_LEVEL,§'!T§];
      
      private static const §][§:String = "DarkBg";
      
      private static var §`!K§:Boolean = false;
       
      
      private var §7!&§:String;
      
      private var §`E§:§]!K§;
      
      public function §<!W§()
      {
         super();
      }
      
      public static function get §<+§() : Boolean
      {
         return §`!K§;
      }
      
      public function set container(param1:§]!K§) : void
      {
         this.§`E§ = param1;
      }
      
      public function get container() : §]!K§
      {
         return this.§`E§;
      }
      
      public function §"!8§(param1:XML, param2:§]!K§, param3:§5W§, param4:§7'§, param5:MovieClip = null) : void
      {
         this.container = new §?6§(param1,param2,param3,param4 as §-! §,param5);
         §`!K§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§]!K§ = null;
         var _loc5_:§=j§ = null;
         var _loc6_:§1k§ = null;
         var _loc7_:§#?§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§2!-§.§"7§.§^I§ && §6S§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§2!-§.§"7§.§;z§ && param1 == §<!W§.§#!$§)
         {
            return false;
         }
         for each(_loc3_ in §-9§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§][§).setVisibility(true);
         this.§7!&§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §'9§:
               ((this.container.getItemByName(param1) as §]!K§).getItemByName("TextField_Description") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §]!K§).getItemByName("MovieClip_CheckBox") as §]!K§).getItemByName("TextField_CheckBox") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §=j§;
               if(§2!-§.§"7§.§^I§)
               {
                  _loc5_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§=j§.§@!9§);
               }
               break;
            case §'!T§:
               ((this.container.getItemByName(param1) as §]!K§).getItemByName("TextField_Description") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §]!K§).getItemByName("MovieClip_CheckBox") as §]!K§).getItemByName("TextField_CheckBox") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §=j§;
               if(§2!-§.§"7§.§^I§)
               {
                  _loc5_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§=j§.§@!9§);
               }
               break;
            case §#!$§:
               ((this.container.getItemByName(param1) as §]!K§).getItemByName("TextField_Description") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §]!K§).getItemByName("MovieClip_CheckBox") as §]!K§).getItemByName("TextField_CheckBox") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §=j§;
               if(§2!-§.§"7§.§;z§)
               {
                  _loc5_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§=j§.§@!9§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §]!K§).getItemByName("TextField_Description") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §]!K§).getItemByName("MovieClip_CheckBox") as §]!K§).getItemByName("TextField_CheckBox") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §=j§;
               if(§2!-§.§"7§.§^I§)
               {
                  _loc5_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§=j§.§@!9§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §]!K§).getItemByName("TextField_Description") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §]!K§).getItemByName("TextField_Description") as §"!1§).§>!-§.htmlText = §6C§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §]!K§).getItemByName("Button_RedeemCredit") as §#?§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §"!<§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §]!K§).getItemByName("TextField_Description") as §"!1§).§>!-§.htmlText = param2;
         }
         §"_§.§5q§();
         §`!K§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§1k§ = null;
         if(this.§7!&§)
         {
            if(this.container)
            {
               for each(_loc1_ in §-9§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§][§).setVisibility(false);
         if(§2!,§.§<+§ == false)
         {
            §"_§.§@A§();
         }
         §`!K§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§7!&§;
      }
   }
}
