package §2V§
{
   import § =§.§ x§;
   import §&!`§.§&A§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §34§.§1!K§;
   import §4!§.§&J§;
   import §<s§.§&4§;
   import §<s§.§'k§;
   import §[%§.§&a§;
   import §[%§.§6!§;
   import §[%§.§<@§;
   import §[%§.§`k§;
   import flash.display.MovieClip;
   
   public class §!!_§ implements §`k§
   {
      
      public static const ERROR:String = "error";
      
      public static const §4!E§:String = "quit";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §`!#§:String = "use_credit";
      
      public static const §@!7§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §!E§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §<a§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §-!E§:Array = [ERROR,§4!E§,RESTART_LEVEL,NO_CREDIT,§`!#§,§@!7§,§!E§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§<a§,CONFIRM_LEAVE];
      
      private static var §[!G§:Array = [§4!E§,RESTART_LEVEL,§`!#§];
      
      private static const §7"§:String = "DarkBg";
      
      private static var §&H§:Boolean = false;
       
      
      private var §;;§:String;
      
      private var §5X§:§&a§;
      
      public function §!!_§()
      {
         super();
      }
      
      public static function get §=T§() : Boolean
      {
         return §&H§;
      }
      
      public function set container(param1:§&a§) : void
      {
         this.§5X§ = param1;
      }
      
      public function get container() : §&a§
      {
         return this.§5X§;
      }
      
      public function §4c§(param1:XML, param2:§&a§, param3:§;J§, param4:§ x§, param5:MovieClip = null) : void
      {
         this.container = new §1!K§(param1,param2,param3,param4 as §&A§,param5);
         §&H§ = false;
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§&a§ = null;
         var _loc5_:§&4§ = null;
         var _loc6_:§'k§ = null;
         var _loc7_:§6!§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§3§.§]T§.§];§ && §[!G§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§3§.§]T§.§9p§ && param1 == §!!_§.§@!7§)
         {
            return false;
         }
         for each(_loc3_ in §-!E§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§7"§).setVisibility(true);
         this.§;;§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §4!E§:
               ((this.container.getItemByName(param1) as §&a§).getItemByName("TextField_Description") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §&a§).getItemByName("MovieClip_CheckBox") as §&a§).getItemByName("TextField_CheckBox") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §&4§;
               if(§3§.§]T§.§];§)
               {
                  _loc5_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§&4§.§=!'§);
               }
               break;
            case §`!#§:
               ((this.container.getItemByName(param1) as §&a§).getItemByName("TextField_Description") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §&a§).getItemByName("MovieClip_CheckBox") as §&a§).getItemByName("TextField_CheckBox") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §&4§;
               if(§3§.§]T§.§];§)
               {
                  _loc5_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§&4§.§=!'§);
               }
               break;
            case §@!7§:
               ((this.container.getItemByName(param1) as §&a§).getItemByName("TextField_Description") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §&a§).getItemByName("MovieClip_CheckBox") as §&a§).getItemByName("TextField_CheckBox") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §&4§;
               if(§3§.§]T§.§9p§)
               {
                  _loc5_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§&4§.§=!'§);
               }
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §&a§).getItemByName("TextField_Description") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §&a§).getItemByName("MovieClip_CheckBox") as §&a§).getItemByName("TextField_CheckBox") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §&4§;
               if(§3§.§]T§.§];§)
               {
                  _loc5_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  _loc5_.setComponentState(§&4§.§=!'§);
               }
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §&a§).getItemByName("TextField_Description") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_Confirm_Leave");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §&a§).getItemByName("TextField_Description") as §<@§).§1!+§.htmlText = §&J§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §&a§).getItemByName("Button_RedeemCredit") as §6!§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §<a§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §&a§).getItemByName("TextField_Description") as §<@§).§1!+§.htmlText = param2;
         }
         §3>§.§-!>§();
         §&H§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§'k§ = null;
         if(this.§;;§)
         {
            if(this.container)
            {
               for each(_loc1_ in §-!E§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§7"§).setVisibility(false);
         if(§&!Q§.§=T§ == false)
         {
            §3>§.§7k§();
         }
         §&H§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§;;§;
      }
   }
}
