package §_-hJ§
{
   import §_-1j§.§_-UD§;
   import §_-94§.§_-si§;
   import §_-A§.§_-Hw§;
   import §_-A§.§_-YT§;
   import §_-Ul§.§_-FD§;
   import §_-ab§.§_-5q§;
   import §_-ab§.§_-92§;
   import §_-ab§.§_-IP§;
   import §_-ab§.§_-q4§;
   import §_-ob§.§_-xw§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   
   public class §_-5j§ implements §_-92§
   {
      
      public static const ERROR:String = "error";
      
      public static const §_-rJ§:String = "quit";
      
      public static const §_-dO§:String = "win_spot";
      
      public static const SPOT_PRIZE_AVAILABLE:String = "spotprize_available";
      
      public static const RESTART_LEVEL:String = "leave_level";
      
      public static const §_-IE§:String = "use_credit";
      
      public static const §_-gH§:String = "use_credit_cheetos";
      
      public static const NO_CREDIT:String = "no_credit";
      
      public static const §_-OC§:String = "session_expired";
      
      public static const PRACTICE_1_2_COMPLETE:String = "practice1_2_complete";
      
      public static const PRACTICE_3_COMPLETE:String = "practice3_complete";
      
      public static const §_-Dc§:String = "thanks";
      
      public static const CONFIRM_LEAVE:String = "confirm_leave";
      
      private static var §_-0Z§:Array = [ERROR,§_-rJ§,§_-dO§,SPOT_PRIZE_AVAILABLE,RESTART_LEVEL,NO_CREDIT,§_-IE§,§_-gH§,§_-OC§,PRACTICE_1_2_COMPLETE,PRACTICE_3_COMPLETE,§_-Dc§,CONFIRM_LEAVE];
      
      private static var §_-Nw§:Array = [§_-rJ§,RESTART_LEVEL,§_-IE§];
      
      private static const §_-xz§:String = "DarkBg";
      
      private static var §_-sB§:Boolean = false;
       
      
      private var §_-iq§:String;
      
      private var §_-4T§:§_-IP§;
      
      public function §_-5j§()
      {
         super();
      }
      
      public static function get §_-Vc§() : Boolean
      {
         return §_-sB§;
      }
      
      public function set container(param1:§_-IP§) : void
      {
         this.§_-4T§ = param1;
      }
      
      public function get container() : §_-IP§
      {
         return this.§_-4T§;
      }
      
      public function §_-QH§(param1:XML, param2:§_-IP§, param3:§_-S6§, param4:§_-qs§, param5:MovieClip = null) : void
      {
         this.container = new §_-UD§(param1,param2,param3,param4 as §_-xw§,param5);
      }
      
      public function deActivate() : void
      {
      }
      
      public function showPopup(param1:String, param2:String = null) : Boolean
      {
         var _loc3_:String = null;
         var _loc4_:§_-IP§ = null;
         var _loc5_:§_-YT§ = null;
         var _loc6_:§_-Hw§ = null;
         var _loc7_:§_-q4§ = null;
         if(this.container == null)
         {
            return false;
         }
         if(§_-rs§.§_-hd§.§_-2D§ && §_-Nw§.indexOf(param1) > -1)
         {
            return false;
         }
         if(§_-rs§.§_-hd§.§_-ZI§ && param1 == §_-5j§.§_-gH§)
         {
            return false;
         }
         for each(_loc3_ in §_-0Z§)
         {
            if(_loc6_ = this.container.getItemByName(_loc3_))
            {
               _loc6_.setVisibility(false);
            }
         }
         this.container.getItemByName(param1).setVisibility(true);
         this.container.getItemByName(§_-xz§).setVisibility(true);
         this.§_-iq§ = param1;
         _loc4_ = null;
         _loc5_ = null;
         switch(param1)
         {
            case §_-rJ§:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_Leave_Level_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-IP§).getItemByName("MovieClip_CheckBox") as §_-IP§).getItemByName("TextField_CheckBox") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-YT§;
               if(§_-rs§.§_-hd§.§_-2D§)
               {
                  _loc5_.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-YT§.§_-c7§);
               break;
            case §_-IE§:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-IP§).getItemByName("MovieClip_CheckBox") as §_-IP§).getItemByName("TextField_CheckBox") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-YT§;
               if(§_-rs§.§_-hd§.§_-2D§)
               {
                  _loc5_.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-YT§.§_-c7§);
               break;
            case §_-gH§:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_Use_Credit_Cheetos_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-IP§).getItemByName("MovieClip_CheckBox") as §_-IP§).getItemByName("TextField_CheckBox") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_CheckBox_Use_Cheetos_Bag");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-YT§;
               if(§_-rs§.§_-hd§.§_-ZI§)
               {
                  _loc5_.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-YT§.§_-c7§);
               break;
            case RESTART_LEVEL:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_Use_Credit_Text");
               ((_loc4_ = (this.container.getItemByName(param1) as §_-IP§).getItemByName("MovieClip_CheckBox") as §_-IP§).getItemByName("TextField_CheckBox") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_CheckBox_Use_Credits");
               _loc5_ = _loc4_.getItemByName("Checkbox_RememberMe") as §_-YT§;
               if(§_-rs§.§_-hd§.§_-2D§)
               {
                  _loc5_.setComponentState(§_-YT§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc5_.setComponentState(§_-YT§.§_-c7§);
               break;
            case CONFIRM_LEAVE:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_Confirm_Leave");
               break;
            case §_-dO§:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_SpotPrize_Win_Text");
               break;
            case SPOT_PRIZE_AVAILABLE:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_SpotPrize_Available");
               break;
            case NO_CREDIT:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = §_-FD§.getText("Popup_No_Credit_Text");
               _loc7_ = (this.container.getItemByName(param1) as §_-IP§).getItemByName("Button_RedeemCredit") as §_-q4§;
               break;
            case PRACTICE_1_2_COMPLETE:
               break;
            case PRACTICE_3_COMPLETE:
               break;
            case §_-Dc§:
               break;
            case ERROR:
               ((this.container.getItemByName(param1) as §_-IP§).getItemByName("TextField_Description") as §_-5q§).§_-xA§.htmlText = param2;
         }
         §_-si§.§_-Xb§();
         §_-sB§ = true;
         return true;
      }
      
      public function hidePopup() : void
      {
         var _loc1_:String = null;
         var _loc2_:§_-Hw§ = null;
         if(this.§_-iq§)
         {
            if(this.container)
            {
               for each(_loc1_ in §_-0Z§)
               {
                  _loc2_ = this.container.getItemByName(_loc1_);
                  if(_loc2_)
                  {
                     _loc2_.setVisibility(false);
                  }
               }
            }
         }
         this.container.getItemByName(§_-xz§).setVisibility(false);
         if(§_-mm§.§_-Vc§ == false)
         {
            §_-si§.§_-DM§();
         }
         §_-sB§ = false;
      }
      
      public function getCurrentPopupName() : String
      {
         return this.§_-iq§;
      }
   }
}
