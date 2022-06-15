package §&Y§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § "L§.§23§;
   import § "L§.§7`§;
   import § $0§.AbstractPopup;
   import §!L§.§`#u§;
   import §";§.§false§;
   import §-$'§.§6!w§;
   import §2G§.§##W§;
   import §2G§.§?!s§;
   import §3"V§.§ b§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §?#z§.§]$?§;
   import §]#'§.§4"s§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import §`"t§.§><§;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §,+§ extends AbstractPopup
   {
      
      public static const ID:String = "Popup_EditLeagueProfile";
       
      
      private var §1!8§:TextField;
      
      private var §7$@§:§"!A§;
      
      private var §>"U§:Object;
      
      private var §>!w§:§-$C§;
      
      private var §@$0§:String;
      
      private var §3A§:§1"r§;
      
      private var §0"i§:§1"r§;
      
      private var §9"y§:§7`§;
      
      private var §^<§:§"!A§;
      
      private var §;m§:String;
      
      private var §=!Z§:String;
      
      public function §,+§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§false§.§4#;§.Popups.Popup_EditLeagueProfile[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc4_:§1"r§ = null;
         var _loc5_:§##W§ = null;
         super.init();
         this.§1!8§ = §;#'§.mClip.nameTextField;
         this.§1!8§.restrict = "a-z A-Z 0-9 \\- ^ ";
         this.§1!8§.addEventListener(KeyboardEvent.KEY_UP,this.§1z§,false,0,true);
         this.§1!8§.addEventListener(FocusEvent.FOCUS_IN,this.§?#^§,false,0,true);
         this.§3A§ = §;#'§.getItemByName("ButtonConfirm") as §1"r§;
         this.§0"i§ = §;#'§.getItemByName("ButtonBack") as §1"r§;
         this.§9"y§ = §;#'§.getItemByName("TextField_ErrorMessage") as §7`§;
         this.§9"y§.setText("");
         this.§7$@§ = §;#'§.getItemByName("Checkbox_FB") as §"!A§;
         this.§7$@§.mClip.addEventListener(MouseEvent.CLICK,this.§-"]§,false,0,true);
         this.§7$@§.mClip.buttonMode = true;
         this.§7$@§.mClip.useHandCursor = true;
         this.§^<§ = §;#'§.getItemByName("ProfileSaving") as §"!A§;
         this.§^<§.setVisibility(false);
         var _loc1_:§"!A§ = §;#'§.getItemByName("Title_UseFacebookName") as §"!A§;
         _loc1_.mClip.buttonMode = true;
         _loc1_.mClip.useHandCursor = true;
         _loc1_.mClip.addEventListener(MouseEvent.CLICK,this.§-"]§,false,0,true);
         this.§>"U§ = §4"s§.§+!,§.§+S§();
         var _loc2_:§23§ = §;#'§.getItemByName("Container_PictureSelection") as §23§;
         var _loc3_:int = 0;
         while(_loc3_ < §##W§.§%N§.length)
         {
            if(_loc4_ = _loc2_.getItemByName("Slot" + (_loc3_ + 1)) as §1"r§)
            {
               (_loc5_ = new §##W§((AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userID,§##W§.§%N§[_loc3_],(AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).avatarString,false,§?!s§.§[$0§,§?!s§.NORMAL,2)).x = 6;
               _loc5_.y = 5;
               _loc4_.mClip.addChild(_loc5_);
            }
            _loc3_++;
         }
         this.§;#;§();
      }
      
      protected function §;#;§() : void
      {
         if(this.§>"U§)
         {
            if(this.§>"U§.ni)
            {
               this.§1!8§.text = this.§>"U§.ni;
               if(this.§>"U§.ni == "")
               {
                  this.§7$@§.mClip.gotoAndStop("ACTIVE");
               }
               else
               {
                  this.§7$@§.mClip.gotoAndStop("INACTIVE");
               }
            }
            else
            {
               this.§1!8§.text = "";
               this.§7$@§.mClip.gotoAndStop("ACTIVE");
            }
            this.§13§(!!this.§>"U§.i ? this.§>"U§.i : §##W§.§%N§[§##W§.§-"=§]);
         }
         else
         {
            this.§1!8§.text = "";
            this.§7$@§.mClip.gotoAndStop("ACTIVE");
            this.§13§(§##W§.§%N§[§##W§.§-"=§]);
         }
      }
      
      protected function §1z§(param1:KeyboardEvent) : void
      {
         param1.stopImmediatePropagation();
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               §;#'§.mClip.stage.focus = null;
               this.§!3§();
               break;
            default:
               this.§9"y§.setText("");
               this.§-"]§(null);
         }
      }
      
      protected function §?#^§(param1:Event) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§-"]§(null);
         this.§9"y§.setText("");
      }
      
      protected function §-"]§(param1:MouseEvent) : void
      {
         if(!param1)
         {
            this.§7$@§.mClip.gotoAndStop("INACTIVE");
         }
         else
         {
            this.§7$@§.mClip.gotoAndStop(this.§7$@§.§-"H§() == "INACTIVE" ? "ACTIVE" : "INACTIVE");
            this.§1!8§.text = "";
            this.§9"y§.setText("");
            § b§.playSound("Menu_Select",§ b§.§;$5§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
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
               this.§!3§();
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
               _loc5_ = §##W§.§%N§[_loc4_];
               if(this.§@$0§ != _loc5_)
               {
                  § b§.playSound("Menu_Select",§ b§.§;$5§);
               }
               this.§13§(_loc5_);
         }
      }
      
      private function §13§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§23§ = null;
         var _loc4_:int = 0;
         var _loc5_:§1"r§ = null;
         var _loc6_:* = false;
         if(this.§@$0§ != param1)
         {
            this.§@$0§ = param1;
            _loc2_ = §##W§.§%N§.indexOf(param1);
            _loc3_ = §;#'§.getItemByName("Container_PictureSelection") as §23§;
            _loc4_ = 0;
            while(_loc4_ < §##W§.§%N§.length)
            {
               if(_loc5_ = _loc3_.getItemByName("Slot" + (_loc4_ + 1)) as §1"r§)
               {
                  if(_loc6_ = _loc4_ == _loc2_)
                  {
                     _loc5_.setEnabled(false);
                     _loc5_.setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
                  }
                  else
                  {
                     _loc5_.setEnabled(true);
                     _loc5_.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc5_.setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §!3§() : void
      {
         var _loc3_:URLRequest = null;
         var _loc4_:Object = null;
         if(this.§>!w§)
         {
            return;
         }
         if(this.§7$@§.§-"H§() == "INACTIVE" && this.§1!8§.text == "")
         {
            this.§9"y§.setText("Use facebook name or enter nickname.");
            return;
         }
         this.§9"y§.setText("");
         var _loc1_:Boolean = false;
         var _loc2_:String = this.§1!8§.text;
         if(!this.§>"U§ || this.§>"U§.ni != _loc2_)
         {
            _loc1_ = true;
         }
         else if(this.§@$0§ != this.§>"U§.i)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this.§^<§.setVisibility(true);
            this.§^<§.goToFrame(1,true);
            this.§3A§.setEnabled(false);
            this.§0"i§.setEnabled(false);
            this.§;m§ = _loc2_;
            this.§=!Z§ = this.§@$0§;
            _loc3_ = §?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + §6!w§.§6Q§ + §6!w§.§4!;§);
            _loc4_ = {
               "ni":_loc2_,
               "i":this.§@$0§
            };
            _loc3_.data = JSON.stringify(_loc4_);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.contentType = "application/json";
            this.§>!w§ = new §-$C§();
            this.§>!w§.addEventListener(Event.COMPLETE,this.§8#&§);
            this.§>!w§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§>!w§.load(_loc3_);
         }
         else
         {
            close();
         }
      }
      
      protected function §8#&§(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc5_:String = null;
         var _loc2_:Object = param1.currentTarget.data;
         this.§3A§.setEnabled(true);
         this.§0"i§.setEnabled(true);
         this.§>!w§ = null;
         if(_loc2_ is Boolean)
         {
            this.§>"U§.ni = this.§;m§;
            this.§>"U§.i = this.§=!Z§;
            §4"s§.§+!,§.§%u§(this.§;m§,this.§=!Z§);
            _loc3_ = this.§;m§ != "" ? this.§;m§ : (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).userName;
            (§]$?§.§;u§ as §@z§).§8!;§.§##§(_loc3_,this.§=!Z§);
            close();
         }
         else if(_loc2_.errorCode)
         {
            this.§^<§.setVisibility(false);
            if(_loc2_.errorCode == §><§.§3x§)
            {
               _loc4_ = /-/gi;
               if((_loc5_ = this.§;m§.replace(_loc4_,"")).length == 0)
               {
                  _loc2_.errorMessage = "Nickname must contain a character";
               }
            }
            this.§9"y§.setText(_loc2_.errorMessage);
         }
      }
   }
}
