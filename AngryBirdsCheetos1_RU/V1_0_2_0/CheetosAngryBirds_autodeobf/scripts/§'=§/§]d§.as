package §'=§
{
   import §"I§.§-x§;
   import §#J§.§]B§;
   import §&8§.§<O§;
   import §+!8§.§;A§;
   import §2Q§.§26§;
   import §7L§.§+!$§;
   import §7L§.§-!B§;
   import §@!W§.§8!W§;
   import §[]§.§ !H§;
   import §[]§.§'!X§;
   import §[]§.§+F§;
   import §[]§.§`!`§;
   import flash.display.MovieClip;
   
   public class §]d§ implements § !H§
   {
      
      public static const ERROR:String = "error";
      
      public static const §[-§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §+!5§:String = "use_credit";
      
      public static const §'!4§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §"!W§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §%!a§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §^!R§:Array = [ERROR,§[-§,RESTART_LEVEL,NO_CREDIT,§+!5§,§'!4§,§"!W§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§%!a§,CONFIRM_LEAVE];
      
      private static var §,!V§:Array = [§[-§,RESTART_LEVEL,§+!5§];
      
      private static const §&c§:String = "DarkBg";
      
      private static var §'5§:Boolean = false;
       
      
      private var §7!I§:String;
      
      private var §>!3§:§`!`§;
      
      public function §]d§()
      {
         super();
      }
      
      public static function get §,o§() : Boolean
      {
         return §'5§;
      }
      
      public function set container(param1:§`!`§) : void
      {
         this.§>!3§ = param1;
      }
      
      public function get container() : §`!`§
      {
         return this.§>!3§;
      }
      
      public function §[N§(param1:XML, param2:§`!`§, param3:§<O§, param4:§-x§, param5:MovieClip = null) : void
      {
         this.container = new §26§(param1,param2,param3,param4 as §;A§,param5);
         §'5§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§`!`§ = null;
         var _loc5_:§+!$§ = null;
         var _loc6_:§-!B§ = null;
         var _loc7_:§+F§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§@!!§.§%F§.§4<§ && §,!V§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§@!!§.§%F§.§7W§ && param1 == §]d§.§'!4§)
         {
            return false;
         }
         for each(_loc3_ in §^!R§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§&c§).setVisibility(true);
         this.§7!I§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §[-§:
               ((this.container.getItemByName(param1) as §`!`§).getItemByName("TextField_Description") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §`!`§).getItemByName("MovieClip_CheckBox") as §`!`§).getItemByName("TextField_CheckBox") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §+!$§;
               if(§@!!§.§%F§.§4<§)
               {
                  _loc5_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§+!$§.§^U§);
               }
               break;
            case §+!5§:
               ((this.container.getItemByName(param1) as §`!`§).getItemByName("TextField_Description") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §`!`§).getItemByName("MovieClip_CheckBox") as §`!`§).getItemByName("TextField_CheckBox") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §+!$§;
               if(§@!!§.§%F§.§4<§)
               {
                  _loc5_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§+!$§.§^U§);
               }
               break;
            case §'!4§:
               ((this.container.getItemByName(param1) as §`!`§).getItemByName("TextField_Description") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §`!`§).getItemByName("MovieClip_CheckBox") as §`!`§).getItemByName("TextField_CheckBox") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §+!$§;
               if(§@!!§.§%F§.§7W§)
               {
                  _loc5_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§+!$§.§^U§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §`!`§).getItemByName("TextField_Description") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §`!`§).getItemByName("MovieClip_CheckBox") as §`!`§).getItemByName("TextField_CheckBox") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §+!$§;
               if(§@!!§.§%F§.§4<§)
               {
                  _loc5_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§+!$§.§^U§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §`!`§).getItemByName("TextField_Description") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §`!`§).getItemByName("TextField_Description") as §'!X§).§3!E§.htmlText = §]B§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §`!`§).getItemByName("Button_RedeemCredit") as §+F§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §%!a§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §`!`§).getItemByName("TextField_Description") as §'!X§).§3!E§.htmlText = param2;
         }
         §8!W§.§-'§();
         §'5§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§-!B§ = null;
         if(this.§7!I§)
         {
            if(this.container)
            {
               for each(_loc1_ in §^!R§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§&c§).setVisibility(false);
         if(§-!1§.§,o§ == false)
         {
            §8!W§.§?!,§();
         }
         §'5§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§7!I§;
      }
   }
}
