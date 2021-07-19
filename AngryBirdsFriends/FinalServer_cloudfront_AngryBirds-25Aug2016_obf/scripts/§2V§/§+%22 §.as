package §2V§
{
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §,n§.§+!f§;
   import §,n§.§?#!§;
   import §1!@§.§#"5§;
   import §4q§.§!#Q§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §7g§.§4!q§;
   import §8§.§#$+§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^!,§.AbstractPopup;
   import §`3§.§1"^§;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §+" § extends AbstractPopup
   {
      
      public static const ID:String = "Popup_EditLeagueProfile";
       
      
      private var §>#a§:TextField;
      
      private var §;6§:§="T§;
      
      private var §,#i§:Object;
      
      private var §"#r§:§5$!§;
      
      private var §'#v§:String;
      
      private var §6V§:§=O§;
      
      private var §2#x§:§=O§;
      
      private var §3!e§:§]$!§;
      
      private var § #v§:§="T§;
      
      private var §7#?§:String;
      
      private var § $ §:String;
      
      public function §+" §(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§@#`§.§#!c§.Popups.Popup_EditLeagueProfile[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc4_:§=O§ = null;
         var _loc5_:§?#!§ = null;
         super.init();
         this.§>#a§ = §7!j§.mClip.nameTextField;
         this.§>#a§.restrict = "a-z A-Z 0-9 \\- ^ ";
         this.§>#a§.addEventListener(KeyboardEvent.KEY_UP,this.§ Y§,false,0,true);
         this.§>#a§.addEventListener(FocusEvent.FOCUS_IN,this.§2W§,false,0,true);
         this.§6V§ = §7!j§.getItemByName("ButtonConfirm") as §=O§;
         this.§2#x§ = §7!j§.getItemByName("ButtonBack") as §=O§;
         this.§3!e§ = §7!j§.getItemByName("TextField_ErrorMessage") as §]$!§;
         this.§3!e§.setText("");
         this.§;6§ = §7!j§.getItemByName("Checkbox_FB") as §="T§;
         this.§;6§.mClip.addEventListener(MouseEvent.CLICK,this.§'"@§,false,0,true);
         this.§;6§.mClip.buttonMode = true;
         this.§;6§.mClip.useHandCursor = true;
         this.§ #v§ = §7!j§.getItemByName("ProfileSaving") as §="T§;
         this.§ #v§.setVisibility(false);
         var _loc1_:§="T§ = §7!j§.getItemByName("Title_UseFacebookName") as §="T§;
         _loc1_.mClip.buttonMode = true;
         _loc1_.mClip.useHandCursor = true;
         _loc1_.mClip.addEventListener(MouseEvent.CLICK,this.§'"@§,false,0,true);
         this.§,#i§ = §4!q§.§3!]§.§5"9§();
         var _loc2_:§0"<§ = §7!j§.getItemByName("Container_PictureSelection") as §0"<§;
         var _loc3_:int = 0;
         while(_loc3_ < §?#!§.§@$6§.length)
         {
            if(_loc4_ = _loc2_.getItemByName("Slot" + (_loc3_ + 1)) as §=O§)
            {
               (_loc5_ = new §?#!§((AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userID,§?#!§.§@$6§[_loc3_],(AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).avatarString,false,§+!f§.§2!2§,§+!f§.NORMAL,2)).x = 6;
               _loc5_.y = 5;
               _loc4_.mClip.addChild(_loc5_);
            }
            _loc3_++;
         }
         this.§2"6§();
      }
      
      protected function §2"6§() : void
      {
         if(this.§,#i§)
         {
            if(this.§,#i§.ni)
            {
               this.§>#a§.text = this.§,#i§.ni;
               if(this.§,#i§.ni == "")
               {
                  this.§;6§.mClip.gotoAndStop("ACTIVE");
               }
               else
               {
                  this.§;6§.mClip.gotoAndStop("INACTIVE");
               }
            }
            else
            {
               this.§>#a§.text = "";
               this.§;6§.mClip.gotoAndStop("ACTIVE");
            }
            this.§7#s§(!!this.§,#i§.i ? this.§,#i§.i : §?#!§.§@$6§[§?#!§.§8"N§]);
         }
         else
         {
            this.§>#a§.text = "";
            this.§;6§.mClip.gotoAndStop("ACTIVE");
            this.§7#s§(§?#!§.§@$6§[§?#!§.§8"N§]);
         }
      }
      
      protected function § Y§(param1:KeyboardEvent) : void
      {
         param1.stopImmediatePropagation();
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               §7!j§.mClip.stage.focus = null;
               this.§return§();
               break;
            default:
               this.§3!e§.setText("");
               this.§'"@§(null);
         }
      }
      
      protected function §2W§(param1:Event) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§'"@§(null);
         this.§3!e§.setText("");
      }
      
      protected function §'"@§(param1:MouseEvent) : void
      {
         if(!param1)
         {
            this.§;6§.mClip.gotoAndStop("INACTIVE");
         }
         else
         {
            this.§;6§.mClip.gotoAndStop(this.§;6§.§^$'§() == "INACTIVE" ? "ACTIVE" : "INACTIVE");
            this.§>#a§.text = "";
            this.§3!e§.setText("");
            §#$+§.playSound("Menu_Select",§#$+§.§'!o§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
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
               this.§return§();
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
               _loc5_ = §?#!§.§@$6§[_loc4_];
               if(this.§'#v§ != _loc5_)
               {
                  §#$+§.playSound("Menu_Select",§#$+§.§'!o§);
               }
               this.§7#s§(_loc5_);
         }
      }
      
      private function §7#s§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§0"<§ = null;
         var _loc4_:int = 0;
         var _loc5_:§=O§ = null;
         if(this.§'#v§ != param1)
         {
            this.§'#v§ = param1;
            _loc2_ = §?#!§.§@$6§.indexOf(param1);
            _loc3_ = §7!j§.getItemByName("Container_PictureSelection") as §0"<§;
            _loc4_ = 0;
            while(_loc4_ < §?#!§.§@$6§.length)
            {
               if(_loc5_ = _loc3_.getItemByName("Slot" + (_loc4_ + 1)) as §=O§)
               {
                  if(_loc4_ == _loc2_)
                  {
                     _loc5_.setEnabled(false);
                     _loc5_.setComponentState(§4P§.COMPONENT_STATE_DISABLED);
                  }
                  else
                  {
                     _loc5_.setEnabled(true);
                     _loc5_.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc5_.setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §return§() : void
      {
         var _loc3_:URLRequest = null;
         var _loc4_:Object = null;
         if(this.§"#r§)
         {
            return;
         }
         if(this.§;6§.§^$'§() == "INACTIVE" && this.§>#a§.text == "")
         {
            this.§3!e§.setText("Use facebook name or enter nickname.");
            return;
         }
         this.§3!e§.setText("");
         var _loc1_:Boolean = false;
         var _loc2_:String = this.§>#a§.text;
         if(!this.§,#i§ || this.§,#i§.ni != _loc2_)
         {
            _loc1_ = true;
         }
         else if(this.§'#v§ != this.§,#i§.i)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this.§ #v§.setVisibility(true);
            this.§ #v§.goToFrame(1,true);
            this.§6V§.setEnabled(false);
            this.§2#x§.setEnabled(false);
            this.§7#?§ = _loc2_;
            this.§ $ § = this.§'#v§;
            _loc3_ = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + §1"^§.§throw§ + §1"^§.§3&§);
            _loc4_ = {
               "ni":_loc2_,
               "i":this.§'#v§
            };
            _loc3_.data = JSON.stringify(_loc4_);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.contentType = "application/json";
            this.§"#r§ = new §5$!§();
            this.§"#r§.addEventListener(Event.COMPLETE,this.§+$5§);
            this.§"#r§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§"#r§.load(_loc3_);
         }
         else
         {
            close();
         }
      }
      
      protected function §+$5§(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         null;
         var _loc2_:Object = param1.currentTarget.data;
         this.§6V§.setEnabled(true);
         this.§2#x§.setEnabled(true);
         this.§"#r§ = null;
         if(_loc2_ is Boolean)
         {
            this.§,#i§.ni = this.§7#?§;
            this.§,#i§.i = this.§ $ §;
            §4!q§.§3!]§.§>!V§(this.§7#?§,this.§ $ §);
            _loc3_ = this.§7#?§ != "" ? this.§7#?§ : (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).userName;
            (§>"$§.§<_§ as §8G§).§&#§.§6"c§(_loc3_,this.§ $ §);
            close();
         }
         else if(_loc2_.errorCode)
         {
            this.§ #v§.setVisibility(false);
            if(_loc2_.errorCode == §#"5§.§]R§)
            {
               _loc4_ = /-/gi;
               if(this.§7#?§.replace(_loc4_,"").length == 0)
               {
                  _loc2_.errorMessage = "Nickname must contain a character";
               }
            }
            this.§3!e§.setText(_loc2_.errorMessage);
         }
      }
   }
}
