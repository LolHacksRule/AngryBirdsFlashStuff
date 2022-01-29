package §@r§
{
   import § %§.§1Q§;
   import §%#w§.§2#s§;
   import §+$?§.§4!+§;
   import §+$?§.§<"`§;
   import §-!S§.§##>§;
   import §1!=§.AbstractPopup;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §4#a§.§<#F§;
   import §;#D§.§3#U§;
   import §<h§.§%M§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §@!M§.§!"p§;
   import §@V§.§1"V§;
   import §@V§.§["0§;
   import §[#[§.§[$;§;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §>"B§ extends AbstractPopup
   {
      
      public static const ID:String = "Popup_EditLeagueProfile";
       
      
      private var §;!3§:TextField;
      
      private var §8#M§:§@N§;
      
      private var §%"_§:Object;
      
      private var §2"G§:§1"V§;
      
      private var §0"v§:String;
      
      private var §7!G§:§>"0§;
      
      private var §=3§:§>"0§;
      
      private var §,!3§:§%M§;
      
      private var §8D§:§@N§;
      
      private var §<"e§:String;
      
      private var § "N§:String;
      
      public function §>"B§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§1Q§.§5T§.Popups.Popup_EditLeagueProfile[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc4_:§>"0§ = null;
         var _loc5_:§<"`§ = null;
         super.init();
         this.§;!3§ = §,#2§.mClip.nameTextField;
         this.§;!3§.restrict = "a-z A-Z 0-9 \\- ^ ";
         this.§;!3§.addEventListener(KeyboardEvent.KEY_UP,this.§&"3§,false,0,true);
         this.§;!3§.addEventListener(FocusEvent.FOCUS_IN,this.§,"?§,false,0,true);
         this.§7!G§ = §,#2§.getItemByName("ButtonConfirm") as §>"0§;
         this.§=3§ = §,#2§.getItemByName("ButtonBack") as §>"0§;
         this.§,!3§ = §,#2§.getItemByName("TextField_ErrorMessage") as §%M§;
         this.§,!3§.setText("");
         this.§8#M§ = §,#2§.getItemByName("Checkbox_FB") as §@N§;
         this.§8#M§.mClip.addEventListener(MouseEvent.CLICK,this.§;!W§,false,0,true);
         this.§8#M§.mClip.buttonMode = true;
         this.§8#M§.mClip.useHandCursor = true;
         this.§8D§ = §,#2§.getItemByName("ProfileSaving") as §@N§;
         this.§8D§.setVisibility(false);
         var _loc1_:§@N§ = §,#2§.getItemByName("Title_UseFacebookName") as §@N§;
         _loc1_.mClip.buttonMode = true;
         _loc1_.mClip.useHandCursor = true;
         _loc1_.mClip.addEventListener(MouseEvent.CLICK,this.§;!W§,false,0,true);
         this.§%"_§ = §2#s§.§6!§.§5"Y§();
         var _loc2_:§[#K§ = §,#2§.getItemByName("Container_PictureSelection") as §[#K§;
         var _loc3_:int = 0;
         while(_loc3_ < §<"`§.§,;§.length)
         {
            if(_loc4_ = _loc2_.getItemByName("Slot" + (_loc3_ + 1)) as §>"0§)
            {
               (_loc5_ = new §<"`§((AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userID,§<"`§.§,;§[_loc3_],(AngryBirdsBase.singleton.dataModel.userProgress as §##>§).avatarString,false,§4!+§.§,"7§,§4!+§.NORMAL,2)).x = 6;
               _loc5_.y = 5;
               _loc4_.mClip.addChild(_loc5_);
            }
            _loc3_++;
         }
         this.§8J§();
      }
      
      protected function §8J§() : void
      {
         if(this.§%"_§)
         {
            if(this.§%"_§.ni)
            {
               this.§;!3§.text = this.§%"_§.ni;
               if(this.§%"_§.ni == "")
               {
                  this.§8#M§.mClip.gotoAndStop("ACTIVE");
               }
               else
               {
                  this.§8#M§.mClip.gotoAndStop("INACTIVE");
               }
            }
            else
            {
               this.§;!3§.text = "";
               this.§8#M§.mClip.gotoAndStop("ACTIVE");
            }
            this.§'#P§(!!this.§%"_§.i ? this.§%"_§.i : §<"`§.§,;§[§<"`§.§8"P§]);
         }
         else
         {
            this.§;!3§.text = "";
            this.§8#M§.mClip.gotoAndStop("ACTIVE");
            this.§'#P§(§<"`§.§,;§[§<"`§.§8"P§]);
         }
      }
      
      protected function §&"3§(param1:KeyboardEvent) : void
      {
         param1.stopImmediatePropagation();
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               §,#2§.mClip.stage.focus = null;
               this.§1"S§();
               break;
            default:
               this.§,!3§.setText("");
               this.§;!W§(null);
         }
      }
      
      protected function §,"?§(param1:Event) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§;!W§(null);
         this.§,!3§.setText("");
      }
      
      protected function §;!W§(param1:MouseEvent) : void
      {
         if(!param1)
         {
            this.§8#M§.mClip.gotoAndStop("INACTIVE");
         }
         else
         {
            this.§8#M§.mClip.gotoAndStop(this.§8#M§.§0&§() == "INACTIVE" ? "ACTIVE" : "INACTIVE");
            this.§;!3§.text = "";
            this.§,!3§.setText("");
            §!"p§.playSound("Menu_Select",§!"p§.§+!;§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:String = null;
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "BACK":
               close();
               break;
            case "CONFIRM":
               this.§1"S§();
               break;
            case "S0":
            case "S1":
            case "S2":
            case "S3":
            case "S4":
            case "S5":
            case "S6":
            case "S7":
            case "S8":
               _loc4_ = int(param2.substr(1));
               _loc5_ = §<"`§.§,;§[_loc4_];
               if(this.§0"v§ != _loc5_)
               {
                  §!"p§.playSound("Menu_Select",§!"p§.§+!;§);
               }
               this.§'#P§(_loc5_);
         }
      }
      
      private function §'#P§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§[#K§ = null;
         var _loc4_:int = 0;
         var _loc5_:§>"0§ = null;
         var _loc6_:* = false;
         if(this.§0"v§ != param1)
         {
            this.§0"v§ = param1;
            _loc2_ = §<"`§.§,;§.indexOf(param1);
            _loc3_ = §,#2§.getItemByName("Container_PictureSelection") as §[#K§;
            _loc4_ = 0;
            while(_loc4_ < §<"`§.§,;§.length)
            {
               if(_loc5_ = _loc3_.getItemByName("Slot" + (_loc4_ + 1)) as §>"0§)
               {
                  if(_loc6_ = _loc4_ == _loc2_)
                  {
                     _loc5_.setEnabled(false);
                     _loc5_.setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
                  }
                  else
                  {
                     _loc5_.setEnabled(true);
                     _loc5_.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc5_.setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §1"S§() : void
      {
         var _loc3_:URLRequest = null;
         var _loc4_:Object = null;
         if(this.§2"G§)
         {
            return;
         }
         if(this.§8#M§.§0&§() == "INACTIVE" && this.§;!3§.text == "")
         {
            this.§,!3§.setText("Use facebook name or enter nickname.");
            return;
         }
         this.§,!3§.setText("");
         var _loc1_:Boolean = false;
         var _loc2_:String = this.§;!3§.text;
         if(!this.§%"_§ || this.§%"_§.ni != _loc2_)
         {
            _loc1_ = true;
         }
         else if(this.§0"v§ != this.§%"_§.i)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this.§8D§.setVisibility(true);
            this.§8D§.goToFrame(1,true);
            this.§7!G§.setEnabled(false);
            this.§=3§.setEnabled(false);
            this.§<"e§ = _loc2_;
            this.§ "N§ = this.§0"v§;
            _loc3_ = §["0§.§ G§(AngryBirdsBase.SERVER_ROOT + §<#F§.§"#m§ + §<#F§.§?#'§);
            _loc4_ = {
               "ni":_loc2_,
               "i":this.§0"v§
            };
            _loc3_.data = JSON.stringify(_loc4_);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.contentType = "application/json";
            this.§2"G§ = new §1"V§();
            this.§2"G§.addEventListener(Event.COMPLETE,this.§+!&§);
            this.§2"G§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§2"G§.load(_loc3_);
         }
         else
         {
            close();
         }
      }
      
      protected function §+!&§(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc5_:String = null;
         var _loc2_:Object = param1.currentTarget.data;
         this.§7!G§.setEnabled(true);
         this.§=3§.setEnabled(true);
         this.§2"G§ = null;
         if(_loc2_ is Boolean)
         {
            this.§%"_§.ni = this.§<"e§;
            this.§%"_§.i = this.§ "N§;
            §2#s§.§6!§.§0$§(this.§<"e§,this.§ "N§);
            _loc3_ = this.§<"e§ != "" ? this.§<"e§ : (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).userName;
            (§3#U§.§9#^§ as §,A§).§9"x§.§'!F§(_loc3_,this.§ "N§);
            close();
         }
         else if(_loc2_.errorCode)
         {
            this.§8D§.setVisibility(false);
            if(_loc2_.errorCode == §[$;§.§1"p§)
            {
               _loc4_ = /-/gi;
               if((_loc5_ = this.§<"e§.replace(_loc4_,"")).length == 0)
               {
                  _loc2_.errorMessage = "Nickname must contain a character";
               }
            }
            this.§,!3§.setText(_loc2_.errorMessage);
         }
      }
   }
}
