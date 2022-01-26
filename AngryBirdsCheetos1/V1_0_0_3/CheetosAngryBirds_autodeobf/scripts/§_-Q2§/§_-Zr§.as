package §_-Q2§
{
   import §_-16§.§_-8n§;
   import §_-16§.§_-MF§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-0j§;
   import §_-Eg§.§_-MT§;
   import §_-Eg§.§_-Up§;
   import §_-Eg§.§_-hf§;
   import §_-Pa§.§_-qJ§;
   import §_-TX§.§_-0X§;
   import §_-Xz§.§_-SW§;
   import §_-Y7§.§_-Y-§;
   import §_-xL§.§_-1-§;
   import flash.display.MovieClip;
   
   public class §_-Zr§ implements §_-0j§
   {
      
      public static const ERROR:String = "error";
      
      public static const §_-el§:String = "quit";
      
      public static const §_-Ba§:String = "win_spot";
      
      public static const SPOT_PRIZE_AVAILABLE:String = "spotprize_available";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §_-f6§:String = "use_credit";
      
      public static const §_-fH§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §_-FF§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §_-SZ§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §_-00w§:Array = [ERROR,§_-el§,§_-Ba§,SPOT_PRIZE_AVAILABLE,RESTART_LEVEL,NO_CREDIT,§_-f6§,§_-fH§,§_-FF§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§_-SZ§,CONFIRM_LEAVE];
      
      private static var §_-0-u§:Array = [§_-el§,RESTART_LEVEL,§_-f6§];
      
      private static const §_-Ab§:String = "DarkBg";
      
      private static var §_-gG§:Boolean = false;
       
      
      private var §_-7O§:String;
      
      private var §_-3B§:§_-Up§;
      
      public function §_-Zr§()
      {
         super();
      }
      
      public static function get §_-MS§() : Boolean
      {
         return §_-gG§;
      }
      
      public function set container(param1:§_-Up§) : void
      {
         this.§_-3B§ = param1;
      }
      
      public function get container() : §_-Up§
      {
         return this.§_-3B§;
      }
      
      public function §_-Df§(param1:XML, param2:§_-Up§, param3:§_-1-§, param4:§_-uz§, param5:MovieClip = null) : void
      {
         this.container = new §_-qJ§(param1,param2,param3,param4 as §_-SW§,param5);
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§_-Up§ = null;
         var _loc5_:§_-8n§ = null;
         var _loc6_:§_-MF§ = null;
         var _loc7_:§_-hf§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§_-WX§.§_-nw§.§_-gf§ && §_-0-u§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§_-WX§.§_-nw§.§_-51§ && param1 == §_-Zr§.§_-fH§)
         {
            return false;
         }
         for each(_loc3_ in §_-00w§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§_-Ab§).setVisibility(true);
         this.§_-7O§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §_-el§:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-Up§).getItemByName("MovieClip_CheckBox") as §_-Up§).getItemByName("TextField_CheckBox") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-8n§;
               if(§_-WX§.§_-nw§.§_-gf§)
               {
                  _loc5_.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-8n§.§_-qC§);
               break;
            case §_-f6§:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-Up§).getItemByName("MovieClip_CheckBox") as §_-Up§).getItemByName("TextField_CheckBox") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-8n§;
               if(§_-WX§.§_-nw§.§_-gf§)
               {
                  _loc5_.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-8n§.§_-qC§);
               break;
            case §_-fH§:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-Up§).getItemByName("MovieClip_CheckBox") as §_-Up§).getItemByName("TextField_CheckBox") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-8n§;
               if(§_-WX§.§_-nw§.§_-51§)
               {
                  _loc5_.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-8n§.§_-qC§);
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-Up§).getItemByName("MovieClip_CheckBox") as §_-Up§).getItemByName("TextField_CheckBox") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-8n§;
               if(§_-WX§.§_-nw§.§_-gf§)
               {
                  _loc5_.setComponentState(§_-8n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-8n§.§_-qC§);
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_Confirm_Leave");
               break;
            case §_-Ba§:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_SpotPrize_Win_Text");
               break;
            case SPOT_PRIZE_AVAILABLE:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_SpotPrize_Available");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = §_-Y-§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §_-Up§).getItemByName("Button_RedeemCredit") as §_-hf§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §_-SZ§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §_-Up§).getItemByName("TextField_Description") as §_-MT§).§_-Pb§.htmlText = param2;
         }
         §_-0X§.§_-fc§();
         §_-gG§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§_-MF§ = null;
         if(this.§_-7O§)
         {
            if(this.container)
            {
               for each(_loc1_ in §_-00w§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§_-Ab§).setVisibility(false);
         if(§_-nx§.§_-MS§ == false)
         {
            §_-0X§.§_-UD§();
         }
         §_-gG§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§_-7O§;
      }
   }
}
