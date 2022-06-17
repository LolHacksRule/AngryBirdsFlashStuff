package §]$<§
{
   import §#!E§.§2#Q§;
   import §%#v§.§0"j§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §6!'§.§@#c§;
   import §8"b§.§?$8§;
   import §9&§.§[#>§;
   import §;$5§.AbstractPopup;
   import §=!2§.§%"T§;
   import §=#§.§1!"§;
   import §=#§.§1#+§;
   import §>"9§.§[#%§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §1+§ extends AbstractPopup
   {
      
      public static const ID:String = "Popup_EditLeagueProfile";
       
      
      private var §[!,§:TextField;
      
      private var §?"i§:§>#8§;
      
      private var §9!+§:Object;
      
      private var §!A§:§'!n§;
      
      private var §>"a§:String;
      
      private var §6! §:§"S§;
      
      private var §%H§:§"S§;
      
      private var §>t§:§-#j§;
      
      private var §>"Z§:§>#8§;
      
      private var §5!'§:String;
      
      private var §0"r§:String;
      
      public function §1+§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§0"j§.§-i§.Popups.Popup_EditLeagueProfile[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc4_:§"S§ = null;
         var _loc5_:§1#+§ = null;
         super.init();
         this.§[!,§ = §8#Y§.mClip.nameTextField;
         this.§[!,§.restrict = "a-z A-Z 0-9 \\- ^ ";
         this.§[!,§.addEventListener(KeyboardEvent.KEY_UP,this.§2"!§,false,0,true);
         this.§[!,§.addEventListener(FocusEvent.FOCUS_IN,this.§8!v§,false,0,true);
         this.§6! § = §8#Y§.getItemByName("ButtonConfirm") as §"S§;
         this.§%H§ = §8#Y§.getItemByName("ButtonBack") as §"S§;
         this.§>t§ = §8#Y§.getItemByName("TextField_ErrorMessage") as §-#j§;
         this.§>t§.setText("");
         this.§?"i§ = §8#Y§.getItemByName("Checkbox_FB") as §>#8§;
         this.§?"i§.mClip.addEventListener(MouseEvent.CLICK,this.§1##§,false,0,true);
         this.§?"i§.mClip.buttonMode = true;
         this.§?"i§.mClip.useHandCursor = true;
         this.§>"Z§ = §8#Y§.getItemByName("ProfileSaving") as §>#8§;
         this.§>"Z§.setVisibility(false);
         var _loc1_:§>#8§ = §8#Y§.getItemByName("Title_UseFacebookName") as §>#8§;
         _loc1_.mClip.buttonMode = true;
         _loc1_.mClip.useHandCursor = true;
         _loc1_.mClip.addEventListener(MouseEvent.CLICK,this.§1##§,false,0,true);
         this.§9!+§ = §@#c§.§?q§.§5k§();
         var _loc2_:§<c§ = §8#Y§.getItemByName("Container_PictureSelection") as §<c§;
         var _loc3_:int = 0;
         while(_loc3_ < §1#+§.§;D§.length)
         {
            if(_loc4_ = _loc2_.getItemByName("Slot" + (_loc3_ + 1)) as §"S§)
            {
               (_loc5_ = new §1#+§((AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userID,§1#+§.§;D§[_loc3_],(AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).avatarString,false,§1!"§.§,!z§,§1!"§.NORMAL,2)).x = 6;
               _loc5_.y = 5;
               _loc4_.mClip.addChild(_loc5_);
            }
            _loc3_++;
         }
         this.§7#z§();
      }
      
      protected function §7#z§() : void
      {
         if(this.§9!+§)
         {
            if(this.§9!+§.ni)
            {
               this.§[!,§.text = this.§9!+§.ni;
               if(this.§9!+§.ni == "")
               {
                  this.§?"i§.mClip.gotoAndStop("ACTIVE");
               }
               else
               {
                  this.§?"i§.mClip.gotoAndStop("INACTIVE");
               }
            }
            else
            {
               this.§[!,§.text = "";
               this.§?"i§.mClip.gotoAndStop("ACTIVE");
            }
            this.§`+§(!!this.§9!+§.i ? this.§9!+§.i : §1#+§.§;D§[§1#+§.§]!;§]);
         }
         else
         {
            this.§[!,§.text = "";
            this.§?"i§.mClip.gotoAndStop("ACTIVE");
            this.§`+§(§1#+§.§;D§[§1#+§.§]!;§]);
         }
      }
      
      protected function §2"!§(param1:KeyboardEvent) : void
      {
         param1.stopImmediatePropagation();
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               §8#Y§.mClip.stage.focus = null;
               this.§6#$§();
               break;
            default:
               this.§>t§.setText("");
               this.§1##§(null);
         }
      }
      
      protected function §8!v§(param1:Event) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§1##§(null);
         this.§>t§.setText("");
      }
      
      protected function §1##§(param1:MouseEvent) : void
      {
         if(!param1)
         {
            this.§?"i§.mClip.gotoAndStop("INACTIVE");
         }
         else
         {
            this.§?"i§.mClip.gotoAndStop(this.§?"i§.§3#U§() == "INACTIVE" ? "ACTIVE" : "INACTIVE");
            this.§[!,§.text = "";
            this.§>t§.setText("");
            §[#%§.playSound("Menu_Select",§[#%§.§-"I§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
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
               this.§6#$§();
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
               _loc5_ = §1#+§.§;D§[_loc4_];
               if(this.§>"a§ != _loc5_)
               {
                  §[#%§.playSound("Menu_Select",§[#%§.§-"I§);
               }
               this.§`+§(_loc5_);
         }
      }
      
      private function §`+§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§<c§ = null;
         var _loc4_:int = 0;
         var _loc5_:§"S§ = null;
         if(this.§>"a§ != param1)
         {
            this.§>"a§ = param1;
            _loc2_ = §1#+§.§;D§.indexOf(param1);
            _loc3_ = §8#Y§.getItemByName("Container_PictureSelection") as §<c§;
            _loc4_ = 0;
            while(_loc4_ < §1#+§.§;D§.length)
            {
               if(_loc5_ = _loc3_.getItemByName("Slot" + (_loc4_ + 1)) as §"S§)
               {
                  if(_loc4_ == _loc2_)
                  {
                     _loc5_.setEnabled(false);
                     _loc5_.setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
                  }
                  else
                  {
                     _loc5_.setEnabled(true);
                     _loc5_.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc5_.setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §6#$§() : void
      {
         var _loc3_:URLRequest = null;
         var _loc4_:Object = null;
         if(this.§!A§)
         {
            return;
         }
         if(this.§?"i§.§3#U§() == "INACTIVE" && this.§[!,§.text == "")
         {
            this.§>t§.setText("Use facebook name or enter nickname.");
            return;
         }
         this.§>t§.setText("");
         var _loc1_:Boolean = false;
         var _loc2_:String = this.§[!,§.text;
         if(!this.§9!+§ || this.§9!+§.ni != _loc2_)
         {
            _loc1_ = true;
         }
         else if(this.§>"a§ != this.§9!+§.i)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this.§>"Z§.setVisibility(true);
            this.§>"Z§.goToFrame(1,true);
            this.§6! §.setEnabled(false);
            this.§%H§.setEnabled(false);
            this.§5!'§ = _loc2_;
            this.§0"r§ = this.§>"a§;
            _loc3_ = §2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + §[#>§.§6#<§ + §[#>§.§4L§);
            _loc4_ = {
               "ni":_loc2_,
               "i":this.§>"a§
            };
            _loc3_.data = JSON.stringify(_loc4_);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.contentType = "application/json";
            this.§!A§ = new §'!n§();
            this.§!A§.addEventListener(Event.COMPLETE,this.§""i§);
            this.§!A§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§!A§.load(_loc3_);
         }
         else
         {
            close();
         }
      }
      
      protected function §""i§(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc2_:Object = param1.currentTarget.data;
         this.§6! §.setEnabled(true);
         this.§%H§.setEnabled(true);
         this.§!A§ = null;
         if(_loc2_ is Boolean)
         {
            this.§9!+§.ni = this.§5!'§;
            this.§9!+§.i = this.§0"r§;
            §@#c§.§?q§.§8!W§(this.§5!'§,this.§0"r§);
            _loc3_ = this.§5!'§ != "" ? this.§5!'§ : (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).userName;
            (§%"T§.§>$<§ as §'"a§).§1#b§.§^$-§(_loc3_,this.§0"r§);
            close();
         }
         else if(_loc2_.errorCode)
         {
            this.§>"Z§.setVisibility(false);
            if(_loc2_.errorCode == §?$8§.§%"a§)
            {
               _loc4_ = /-/gi;
               if(this.§5!'§.replace(_loc4_,"").length == 0)
               {
                  _loc2_.errorMessage = "Nickname must contain a character";
               }
            }
            this.§>t§.setText(_loc2_.errorMessage);
         }
      }
   }
}
