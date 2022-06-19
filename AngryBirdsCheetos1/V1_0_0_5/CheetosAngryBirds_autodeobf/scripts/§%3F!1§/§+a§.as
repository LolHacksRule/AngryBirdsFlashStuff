package §?!1§
{
   import §!J§.§[&§;
   import §'G§.§%!%§;
   import §'G§.§1!D§;
   import §'G§.§8!8§;
   import §'G§.§false§;
   import §-M§.§3!6§;
   import §-V§.§9d§;
   import §-V§.§@!$§;
   import §0!>§.§1!#§;
   import §4!H§.§[4§;
   import §4=§.§6p§;
   import §<!U§.§]u§;
   import flash.display.MovieClip;
   
   public class §+a§ implements §8!8§
   {
      
      public static const ERROR:String = "error";
      
      public static const §2!,§:String = "quit";
      
      public static const §-k§:String = "win_spot";
      
      public static const SPOT_PRIZE_AVAILABLE:String = "spotprize_available";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §<$§:String = "use_credit";
      
      public static const §%!M§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §0H§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §`!>§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §^9§:Array = [ERROR,§2!,§,§-k§,SPOT_PRIZE_AVAILABLE,RESTART_LEVEL,NO_CREDIT,§<$§,§%!M§,§0H§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§`!>§,CONFIRM_LEAVE];
      
      private static var § !R§:Array = [§2!,§,RESTART_LEVEL,§<$§];
      
      private static const §2!B§:String = "DarkBg";
      
      private static var §=V§:Boolean = false;
       
      
      private var §8!I§:String;
      
      private var §8!B§:§%!%§;
      
      public function §+a§()
      {
         super();
      }
      
      public static function get §#!=§() : Boolean
      {
         return §=V§;
      }
      
      public function set container(param1:§%!%§) : void
      {
         this.§8!B§ = param1;
      }
      
      public function get container() : §%!%§
      {
         return this.§8!B§;
      }
      
      public function §`&§(param1:XML, param2:§%!%§, param3:§3!6§, param4:§[4§, param5:MovieClip = null) : void
      {
         this.container = new §6p§(param1,param2,param3,param4 as §]u§,param5);
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§%!%§ = null;
         var _loc5_:§9d§ = null;
         var _loc6_:§@!$§ = null;
         var _loc7_:§false§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§,l§.§,?§.§+d§ && § !R§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§,l§.§,?§.§#! § && param1 == §+a§.§%!M§)
         {
            return false;
         }
         for each(_loc3_ in §^9§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§2!B§).setVisibility(true);
         this.§8!I§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §2!,§:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §%!%§).getItemByName("MovieClip_CheckBox") as §%!%§).getItemByName("TextField_CheckBox") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §9d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc5_.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§9d§.§%C§);
               }
               break;
            case §<$§:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §%!%§).getItemByName("MovieClip_CheckBox") as §%!%§).getItemByName("TextField_CheckBox") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §9d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc5_.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§9d§.§%C§);
               }
               break;
            case §%!M§:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §%!%§).getItemByName("MovieClip_CheckBox") as §%!%§).getItemByName("TextField_CheckBox") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §9d§;
               if(§,l§.§,?§.§#! §)
               {
                  _loc5_.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§9d§.§%C§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §%!%§).getItemByName("MovieClip_CheckBox") as §%!%§).getItemByName("TextField_CheckBox") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §9d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc5_.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§9d§.§%C§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_Confirm_Leave");
               break;
            case §-k§:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_SpotPrize_Win_Text");
               break;
            case SPOT_PRIZE_AVAILABLE:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_SpotPrize_Available");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = §1!#§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §%!%§).getItemByName("Button_RedeemCredit") as §false§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §`!>§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §%!%§).getItemByName("TextField_Description") as §1!D§).§1!-§.htmlText = param2;
         }
         §[&§.§[]§();
         §=V§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§@!$§ = null;
         if(this.§8!I§)
         {
            if(this.container)
            {
               for each(_loc1_ in §^9§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§2!B§).setVisibility(false);
         if(§,t§.§#!=§ == false)
         {
            §[&§.§>!E§();
         }
         §=V§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§8!I§;
      }
   }
}
