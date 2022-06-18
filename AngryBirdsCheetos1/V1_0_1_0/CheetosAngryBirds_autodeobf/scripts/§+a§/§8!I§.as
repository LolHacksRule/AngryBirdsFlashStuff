package §+a§
{
   import §!J§.§[&§;
   import §"!+§.§6!7§;
   import §+?§.§,!N§;
   import §6p§.§0o§;
   import §8!8§.§+!M§;
   import §8!8§.§1!-§;
   import §8!8§.§4!C§;
   import §8!8§.§false§;
   import §<!U§.§]u§;
   import §@R§.§']§;
   import §@R§.§<d§;
   import §]2§.§[4§;
   import flash.display.MovieClip;
   
   public class §8!I§ implements §false§
   {
      
      public static const ERROR:String = "error";
      
      public static const §-k§:String = "quit";
      
      public static const §<$§:String = "win_spot";
      
      public static const SPOT_PRIZE_AVAILABLE:String = "spotprize_available";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §%!M§:String = "use_credit";
      
      public static const §0H§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §`!>§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §^9§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var § !R§:Array = [ERROR,§-k§,§<$§,SPOT_PRIZE_AVAILABLE,RESTART_LEVEL,NO_CREDIT,§%!M§,§0H§,§`!>§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§^9§,CONFIRM_LEAVE];
      
      private static var §2!B§:Array = [§-k§,RESTART_LEVEL,§%!M§];
      
      private static const §=V§:String = "DarkBg";
      
      private static var §#!=§:Boolean = false;
       
      
      private var §`&§:String;
      
      private var §08§:§4!C§;
      
      public function §8!I§()
      {
         super();
      }
      
      public static function get §,t§() : Boolean
      {
         return §#!=§;
      }
      
      public function set container(param1:§4!C§) : void
      {
         this.§08§ = param1;
      }
      
      public function get container() : §4!C§
      {
         return this.§08§;
      }
      
      public function §2!,§(param1:XML, param2:§4!C§, param3:§,!N§, param4:§[4§, param5:MovieClip = null) : void
      {
         this.container = new §0o§(param1,param2,param3,param4 as §]u§,param5);
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§4!C§ = null;
         var _loc5_:§<d§ = null;
         var _loc6_:§']§ = null;
         var _loc7_:§+!M§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§,l§.§,?§.§+d§ && §2!B§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§,l§.§,?§.§#! § && param1 == §8!I§.§0H§)
         {
            return false;
         }
         for each(_loc3_ in § !R§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§=V§).setVisibility(true);
         this.§`&§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §-k§:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §4!C§).getItemByName("MovieClip_CheckBox") as §4!C§).getItemByName("TextField_CheckBox") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §<d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§<d§.§^#§);
               }
               break;
            case §%!M§:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §4!C§).getItemByName("MovieClip_CheckBox") as §4!C§).getItemByName("TextField_CheckBox") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §<d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§<d§.§^#§);
               }
               break;
            case §0H§:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §4!C§).getItemByName("MovieClip_CheckBox") as §4!C§).getItemByName("TextField_CheckBox") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §<d§;
               if(§,l§.§,?§.§#! §)
               {
                  _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§<d§.§^#§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §4!C§).getItemByName("MovieClip_CheckBox") as §4!C§).getItemByName("TextField_CheckBox") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §<d§;
               if(§,l§.§,?§.§+d§)
               {
                  _loc5_.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§<d§.§^#§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_Confirm_Leave");
               break;
            case §<$§:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_SpotPrize_Win_Text");
               break;
            case SPOT_PRIZE_AVAILABLE:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_SpotPrize_Available");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = §6!7§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §4!C§).getItemByName("Button_RedeemCredit") as §+!M§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §^9§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §4!C§).getItemByName("TextField_Description") as §1!-§).§#!F§.htmlText = param2;
         }
         §[&§.§[]§();
         §#!=§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§']§ = null;
         if(this.§`&§)
         {
            if(this.container)
            {
               for each(_loc1_ in § !R§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§=V§).setVisibility(false);
         if(§,F§.§,t§ == false)
         {
            §[&§.§>!E§();
         }
         §#!=§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§`&§;
      }
   }
}
