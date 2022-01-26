package §@!?§
{
   import §!y§.§-!L§;
   import §%w§.§;s§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §,j§.§1-§;
   import §,j§.§[i§;
   import §,j§.§^^§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §1§.§&!3§;
   import §1§.§;d§;
   import §?m§.§7?§;
   import flash.display.MovieClip;
   
   public class §0!U§ implements §^^§
   {
      
      public static const ERROR:String = "error";
      
      public static const §]k§:String = "quit";
      
      public static const §%!'§:String = "win_spot";
      
      public static const SPOT_PRIZE_AVAILABLE:String = "spotprize_available";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §`1§:String = "use_credit";
      
      public static const §6!5§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §"!R§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §6U§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §;B§:Array = [ERROR,§]k§,§%!'§,SPOT_PRIZE_AVAILABLE,RESTART_LEVEL,NO_CREDIT,§`1§,§6!5§,§"!R§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§6U§,CONFIRM_LEAVE];
      
      private static var §`y§:Array = [§]k§,RESTART_LEVEL,§`1§];
      
      private static const §[=§:String = "DarkBg";
      
      private static var §3r§:Boolean = false;
       
      
      private var §"!-§:String;
      
      private var §]!?§:§1-§;
      
      public function §0!U§()
      {
         super();
      }
      
      public static function get §84§() : Boolean
      {
         return §3r§;
      }
      
      public function set container(param1:§1-§) : void
      {
         this.§]!?§ = param1;
      }
      
      public function get container() : §1-§
      {
         return this.§]!?§;
      }
      
      public function §3S§(param1:XML, param2:§1-§, param3:§'j§, param4:§&c§, param5:MovieClip = null) : void
      {
         this.container = new §-!L§(param1,param2,param3,param4 as §;s§,param5);
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§1-§ = null;
         var _loc5_:§&!3§ = null;
         var _loc6_:§;d§ = null;
         var _loc7_:§0!@§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§#x§.§=!!§.§9!E§ && §`y§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§#x§.§=!!§.§]s§ && param1 == §0!U§.§6!5§)
         {
            return false;
         }
         for each(_loc3_ in §;B§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§[=§).setVisibility(true);
         this.§"!-§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §]k§:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §1-§).getItemByName("MovieClip_CheckBox") as §1-§).getItemByName("TextField_CheckBox") as §[i§).§7t§.htmlText = §4C§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §&!3§;
               if(§#x§.§=!!§.§9!E§)
               {
                  _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§&!3§.§;2§);
               }
               break;
            case §`1§:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §1-§).getItemByName("MovieClip_CheckBox") as §1-§).getItemByName("TextField_CheckBox") as §[i§).§7t§.htmlText = §4C§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §&!3§;
               if(§#x§.§=!!§.§9!E§)
               {
                  _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§&!3§.§;2§);
               }
               break;
            case §6!5§:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §1-§).getItemByName("MovieClip_CheckBox") as §1-§).getItemByName("TextField_CheckBox") as §[i§).§7t§.htmlText = §4C§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §&!3§;
               if(§#x§.§=!!§.§]s§)
               {
                  _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§&!3§.§;2§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §1-§).getItemByName("MovieClip_CheckBox") as §1-§).getItemByName("TextField_CheckBox") as §[i§).§7t§.htmlText = §4C§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §&!3§;
               if(§#x§.§=!!§.§9!E§)
               {
                  _loc5_.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§&!3§.§;2§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_Confirm_Leave");
               break;
            case §%!'§:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_SpotPrize_Win_Text");
               break;
            case SPOT_PRIZE_AVAILABLE:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_SpotPrize_Available");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = §4C§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §1-§).getItemByName("Button_RedeemCredit") as §0!@§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §6U§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §1-§).getItemByName("TextField_Description") as §[i§).§7t§.htmlText = param2;
         }
         §7?§.§3J§();
         §3r§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§;d§ = null;
         if(this.§"!-§)
         {
            if(this.container)
            {
               for each(_loc1_ in §;B§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§[=§).setVisibility(false);
         if(§1!C§.§84§ == false)
         {
            §7?§.§]!1§();
         }
         §3r§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§"!-§;
      }
   }
}
