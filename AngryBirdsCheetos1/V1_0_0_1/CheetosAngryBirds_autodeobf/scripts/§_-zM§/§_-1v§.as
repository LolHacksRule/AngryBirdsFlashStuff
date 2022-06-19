package §_-zM§
{
   import §_-9J§.§_-DA§;
   import §_-9J§.§_-mr§;
   import §_-ES§.§_-L8§;
   import §_-ES§.§_-Ng§;
   import §_-ES§.§_-Nt§;
   import §_-ES§.§_-To§;
   import §_-JE§.§_-ih§;
   import §_-Py§.§_-eK§;
   import §_-fg§.§_-cN§;
   import §_-gC§.§_-XR§;
   import §_-q1§.§_-Sn§;
   import §_-q6§.§_-ZW§;
   import flash.display.MovieClip;
   
   public class §_-1v§ implements §_-Nt§
   {
      
      public static const ERROR:String = "error";
      
      public static const §_-KF§:String = "quit";
      
      public static const §_-OR§:String = "win_spot";
      
      public static const SPOT_PRIZE_AVAILABLE:String = "spotprize_available";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §_-V8§:String = "use_credit";
      
      public static const §_-it§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §_-RT§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §_-Qr§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §_-jo§:Array = [ERROR,§_-KF§,§_-OR§,SPOT_PRIZE_AVAILABLE,RESTART_LEVEL,NO_CREDIT,§_-V8§,§_-it§,§_-RT§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§_-Qr§,CONFIRM_LEAVE];
      
      private static var §_-1i§:Array = [§_-KF§,RESTART_LEVEL,§_-V8§];
      
      private static const §_-3Q§:String = "DarkBg";
      
      private static var §_-Qd§:Boolean = false;
       
      
      private var §_-qn§:String;
      
      private var §_-ab§:§_-L8§;
      
      public function §_-1v§()
      {
         super();
      }
      
      public static function get §_-PV§() : Boolean
      {
         return §_-Qd§;
      }
      
      public function set container(param1:§_-L8§) : void
      {
         this.§_-ab§ = param1;
      }
      
      public function get container() : §_-L8§
      {
         return this.§_-ab§;
      }
      
      public function §_-a3§(param1:XML, param2:§_-L8§, param3:§_-ZW§, param4:§_-eK§, param5:MovieClip = null) : void
      {
         this.container = new §_-ih§(param1,param2,param3,param4 as §_-cN§,param5);
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§_-L8§ = null;
         var _loc5_:§_-DA§ = null;
         var _loc6_:§_-mr§ = null;
         var _loc7_:§_-Ng§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§_-Vc§.§_-qI§.§_-rL§ && §_-1i§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§_-Vc§.§_-qI§.§_-8n§ && param1 == §_-1v§.§_-it§)
         {
            return false;
         }
         for each(_loc3_ in §_-jo§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§_-3Q§).setVisibility(true);
         this.§_-qn§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §_-KF§:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-L8§).getItemByName("MovieClip_CheckBox") as §_-L8§).getItemByName("TextField_CheckBox") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-DA§;
               if(§_-Vc§.§_-qI§.§_-rL§)
               {
                  _loc5_.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-DA§.§_-MR§);
               break;
            case §_-V8§:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-L8§).getItemByName("MovieClip_CheckBox") as §_-L8§).getItemByName("TextField_CheckBox") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-DA§;
               if(§_-Vc§.§_-qI§.§_-rL§)
               {
                  _loc5_.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-DA§.§_-MR§);
               break;
            case §_-it§:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-L8§).getItemByName("MovieClip_CheckBox") as §_-L8§).getItemByName("TextField_CheckBox") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-DA§;
               if(§_-Vc§.§_-qI§.§_-8n§)
               {
                  _loc5_.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-DA§.§_-MR§);
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-L8§).getItemByName("MovieClip_CheckBox") as §_-L8§).getItemByName("TextField_CheckBox") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-DA§;
               if(§_-Vc§.§_-qI§.§_-rL§)
               {
                  _loc5_.setComponentState(§_-DA§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-DA§.§_-MR§);
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_Confirm_Leave");
               break;
            case §_-OR§:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_SpotPrize_Win_Text");
               break;
            case SPOT_PRIZE_AVAILABLE:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_SpotPrize_Available");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = §_-Sn§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §_-L8§).getItemByName("Button_RedeemCredit") as §_-Ng§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §_-Qr§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §_-L8§).getItemByName("TextField_Description") as §_-To§).§_-pU§.htmlText = param2;
         }
         §_-XR§.§_-Tr§();
         §_-Qd§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§_-mr§ = null;
         if(this.§_-qn§)
         {
            if(this.container)
            {
               for each(_loc1_ in §_-jo§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§_-3Q§).setVisibility(false);
         if(§_-kL§.§_-PV§ == false)
         {
            §_-XR§.§_-5x§();
         }
         §_-Qd§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§_-qn§;
      }
   }
}
