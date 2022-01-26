package § !X§
{
   import §"A§.§?3§;
   import §,b§.§ !§;
   import §7!U§.§2!7§;
   import §7f§.§,!>§;
   import §7f§.§?i§;
   import §7f§.§`!]§;
   import §7f§.§`g§;
   import §<!P§.§>l§;
   import §>!1§.§9A§;
   import §@1§.§]R§;
   import §^r§.§ ^§;
   import §^r§.§%%§;
   import flash.display.MovieClip;
   
   public class §+2§ implements §`!]§
   {
      
      public static const ERROR:String = "error";
      
      public static const §0U§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §3K§:String = "use_credit";
      
      public static const §5k§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §2!#§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §[!_§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §-!a§:Array = [ERROR,§0U§,RESTART_LEVEL,NO_CREDIT,§3K§,§5k§,§2!#§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§[!_§,CONFIRM_LEAVE];
      
      private static var §#!G§:Array = [§0U§,RESTART_LEVEL,§3K§];
      
      private static const §,P§:String = "DarkBg";
      
      private static var §'2§:Boolean = false;
       
      
      private var §9!^§:String;
      
      private var §3]§:§?i§;
      
      public function §+2§()
      {
         super();
      }
      
      public static function get §@!U§() : Boolean
      {
         return §'2§;
      }
      
      public function set container(param1:§?i§) : void
      {
         this.§3]§ = param1;
      }
      
      public function get container() : §?i§
      {
         return this.§3]§;
      }
      
      public function §=Y§(param1:XML, param2:§?i§, param3:§?3§, param4:§>l§, param5:MovieClip = null) : void
      {
         this.container = new § !§(param1,param2,param3,param4 as §]R§,param5);
         §'2§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§?i§ = null;
         var _loc5_:§%%§ = null;
         var _loc6_:§ ^§ = null;
         var _loc7_:§,!>§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§+§.§ each§.§3l§ && §#!G§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§+§.§ each§.§,!8§ && param1 == §+2§.§5k§)
         {
            return false;
         }
         for each(_loc3_ in §-!a§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§,P§).setVisibility(true);
         this.§9!^§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §0U§:
               ((this.container.getItemByName(param1) as §?i§).getItemByName("TextField_Description") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §?i§).getItemByName("MovieClip_CheckBox") as §?i§).getItemByName("TextField_CheckBox") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §%%§;
               if(§+§.§ each§.§3l§)
               {
                  _loc5_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§%%§.§'$§);
               }
               break;
            case §3K§:
               ((this.container.getItemByName(param1) as §?i§).getItemByName("TextField_Description") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §?i§).getItemByName("MovieClip_CheckBox") as §?i§).getItemByName("TextField_CheckBox") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §%%§;
               if(§+§.§ each§.§3l§)
               {
                  _loc5_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§%%§.§'$§);
               }
               break;
            case §5k§:
               ((this.container.getItemByName(param1) as §?i§).getItemByName("TextField_Description") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §?i§).getItemByName("MovieClip_CheckBox") as §?i§).getItemByName("TextField_CheckBox") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §%%§;
               if(§+§.§ each§.§,!8§)
               {
                  _loc5_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§%%§.§'$§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §?i§).getItemByName("TextField_Description") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §?i§).getItemByName("MovieClip_CheckBox") as §?i§).getItemByName("TextField_CheckBox") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §%%§;
               if(§+§.§ each§.§3l§)
               {
                  _loc5_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§%%§.§'$§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §?i§).getItemByName("TextField_Description") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §?i§).getItemByName("TextField_Description") as §`g§).§^!N§.htmlText = §9A§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §?i§).getItemByName("Button_RedeemCredit") as §,!>§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §[!_§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §?i§).getItemByName("TextField_Description") as §`g§).§^!N§.htmlText = param2;
         }
         §2!7§.§9!V§();
         §'2§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§ ^§ = null;
         if(this.§9!^§)
         {
            if(this.container)
            {
               for each(_loc1_ in §-!a§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§,P§).setVisibility(false);
         if(§8J§.§@!U§ == false)
         {
            §2!7§.§2T§();
         }
         §'2§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§9!^§;
      }
   }
}
