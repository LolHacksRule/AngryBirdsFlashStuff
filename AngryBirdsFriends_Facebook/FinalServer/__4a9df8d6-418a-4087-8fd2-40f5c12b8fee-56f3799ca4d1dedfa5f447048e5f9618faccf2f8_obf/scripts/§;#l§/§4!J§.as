package §;#l§
{
   import §"!n§.§2#f§;
   import §##Z§.§<$2§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §%!-§.§?l§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §0!s§.AbstractPopup;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §7"G§.§7N§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §?!a§.§4" §;
   import §?!a§.§6#b§;
   import §`#@§.§7n§;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §4!J§ extends AbstractPopup
   {
      
      public static const ID:String = "Popup_EditLeagueProfile";
       
      
      private var §#">§:TextField;
      
      private var §%!b§:§'!`§;
      
      private var §<#N§:Object;
      
      private var §#!I§:§!!o§;
      
      private var §26§:String;
      
      private var §`N§:§ !>§;
      
      private var §,#b§:§ !>§;
      
      private var §^!r§:§`"$§;
      
      private var §,A§:§'!`§;
      
      private var §<!A§:String;
      
      private var §1!q§:String;
      
      public function §4!J§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§?l§.§3m§.Popups.Popup_EditLeagueProfile[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc4_:§ !>§ = null;
         var _loc5_:§4" § = null;
         super.init();
         this.§#">§ = §&!M§.mClip.nameTextField;
         this.§#">§.restrict = "a-z A-Z 0-9 \\- ^ ";
         this.§#">§.addEventListener(KeyboardEvent.KEY_UP,this.§5#o§,false,0,true);
         this.§#">§.addEventListener(FocusEvent.FOCUS_IN,this.§%#e§,false,0,true);
         this.§`N§ = §&!M§.getItemByName("ButtonConfirm") as § !>§;
         this.§,#b§ = §&!M§.getItemByName("ButtonBack") as § !>§;
         this.§^!r§ = §&!M§.getItemByName("TextField_ErrorMessage") as §`"$§;
         this.§^!r§.setText("");
         this.§%!b§ = §&!M§.getItemByName("Checkbox_FB") as §'!`§;
         this.§%!b§.mClip.addEventListener(MouseEvent.CLICK,this.§7#A§,false,0,true);
         this.§%!b§.mClip.buttonMode = true;
         this.§%!b§.mClip.useHandCursor = true;
         this.§,A§ = §&!M§.getItemByName("ProfileSaving") as §'!`§;
         this.§,A§.setVisibility(false);
         var _loc1_:§'!`§ = §&!M§.getItemByName("Title_UseFacebookName") as §'!`§;
         _loc1_.mClip.buttonMode = true;
         _loc1_.mClip.useHandCursor = true;
         _loc1_.mClip.addEventListener(MouseEvent.CLICK,this.§7#A§,false,0,true);
         this.§<#N§ = §<$2§.§`"H§.§1>§();
         var _loc2_:§]$+§ = §&!M§.getItemByName("Container_PictureSelection") as §]$+§;
         var _loc3_:int = 0;
         while(_loc3_ < §4" §.§9# §.length)
         {
            if(_loc4_ = _loc2_.getItemByName("Slot" + (_loc3_ + 1)) as § !>§)
            {
               (_loc5_ = new §4" §((AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userID,§4" §.§9# §[_loc3_],(AngryBirdsBase.singleton.dataModel.userProgress as § #`§).avatarString,false,§6#b§.§[#+§,§6#b§.NORMAL,2)).x = 6;
               _loc5_.y = 5;
               _loc4_.mClip.addChild(_loc5_);
            }
            _loc3_++;
         }
         this.§#$$§();
      }
      
      protected function §#$$§() : void
      {
         if(this.§<#N§)
         {
            if(this.§<#N§.ni)
            {
               this.§#">§.text = this.§<#N§.ni;
               if(this.§<#N§.ni == "")
               {
                  this.§%!b§.mClip.gotoAndStop("ACTIVE");
               }
               else
               {
                  this.§%!b§.mClip.gotoAndStop("INACTIVE");
               }
            }
            else
            {
               this.§#">§.text = "";
               this.§%!b§.mClip.gotoAndStop("ACTIVE");
            }
            this.§]#g§(!!this.§<#N§.i ? this.§<#N§.i : §4" §.§9# §[§4" §.§&#d§]);
         }
         else
         {
            this.§#">§.text = "";
            this.§%!b§.mClip.gotoAndStop("ACTIVE");
            this.§]#g§(§4" §.§9# §[§4" §.§&#d§]);
         }
      }
      
      protected function §5#o§(param1:KeyboardEvent) : void
      {
         param1.stopImmediatePropagation();
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               §&!M§.mClip.stage.focus = null;
               this.§=#P§();
               break;
            default:
               this.§^!r§.setText("");
               this.§7#A§(null);
         }
      }
      
      protected function §%#e§(param1:Event) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§7#A§(null);
         this.§^!r§.setText("");
      }
      
      protected function §7#A§(param1:MouseEvent) : void
      {
         if(!param1)
         {
            this.§%!b§.mClip.gotoAndStop("INACTIVE");
         }
         else
         {
            this.§%!b§.mClip.gotoAndStop(this.§%!b§.§4"D§() == "INACTIVE" ? "ACTIVE" : "INACTIVE");
            this.§#">§.text = "";
            this.§^!r§.setText("");
            §3Z§.playSound("Menu_Select",§3Z§.§[!F§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
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
               this.§=#P§();
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
               _loc5_ = §4" §.§9# §[_loc4_];
               if(this.§26§ != _loc5_)
               {
                  §3Z§.playSound("Menu_Select",§3Z§.§[!F§);
               }
               this.§]#g§(_loc5_);
         }
      }
      
      private function §]#g§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§]$+§ = null;
         var _loc4_:int = 0;
         var _loc5_:§ !>§ = null;
         var _loc6_:* = false;
         if(this.§26§ != param1)
         {
            this.§26§ = param1;
            _loc2_ = §4" §.§9# §.indexOf(param1);
            _loc3_ = §&!M§.getItemByName("Container_PictureSelection") as §]$+§;
            _loc4_ = 0;
            while(_loc4_ < §4" §.§9# §.length)
            {
               if(_loc5_ = _loc3_.getItemByName("Slot" + (_loc4_ + 1)) as § !>§)
               {
                  if(_loc6_ = _loc4_ == _loc2_)
                  {
                     _loc5_.setEnabled(false);
                     _loc5_.setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
                  }
                  else
                  {
                     _loc5_.setEnabled(true);
                     _loc5_.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc5_.setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §=#P§() : void
      {
         var _loc3_:URLRequest = null;
         var _loc4_:Object = null;
         if(this.§#!I§)
         {
            return;
         }
         if(this.§%!b§.§4"D§() == "INACTIVE" && this.§#">§.text == "")
         {
            this.§^!r§.setText("Use facebook name or enter nickname.");
            return;
         }
         this.§^!r§.setText("");
         var _loc1_:Boolean = false;
         var _loc2_:String = this.§#">§.text;
         if(!this.§<#N§ || this.§<#N§.ni != _loc2_)
         {
            _loc1_ = true;
         }
         else if(this.§26§ != this.§<#N§.i)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this.§,A§.setVisibility(true);
            this.§,A§.goToFrame(1,true);
            this.§`N§.setEnabled(false);
            this.§,#b§.setEnabled(false);
            this.§<!A§ = _loc2_;
            this.§1!q§ = this.§26§;
            _loc3_ = §;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + §7N§.§'!y§ + §7N§.§@"l§);
            _loc4_ = {
               "ni":_loc2_,
               "i":this.§26§
            };
            _loc3_.data = JSON.stringify(_loc4_);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.contentType = "application/json";
            this.§#!I§ = new §!!o§();
            this.§#!I§.addEventListener(Event.COMPLETE,this.§+!!§);
            this.§#!I§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§#!I§.load(_loc3_);
         }
         else
         {
            close();
         }
      }
      
      protected function §+!!§(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc5_:String = null;
         var _loc2_:Object = param1.currentTarget.data;
         this.§`N§.setEnabled(true);
         this.§,#b§.setEnabled(true);
         this.§#!I§ = null;
         if(_loc2_ is Boolean)
         {
            this.§<#N§.ni = this.§<!A§;
            this.§<#N§.i = this.§1!q§;
            §<$2§.§`"H§.§!!c§(this.§<!A§,this.§1!q§);
            _loc3_ = this.§<!A§ != "" ? this.§<!A§ : (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).userName;
            (§7n§.§-$<§ as § #v§).§=#+§.§2$'§(_loc3_,this.§1!q§);
            close();
         }
         else if(_loc2_.errorCode)
         {
            this.§,A§.setVisibility(false);
            if(_loc2_.errorCode == §2#f§.§&#S§)
            {
               _loc4_ = /-/gi;
               if((_loc5_ = this.§<!A§.replace(_loc4_,"")).length == 0)
               {
                  _loc2_.errorMessage = "Nickname must contain a character";
               }
            }
            this.§^!r§.setText(_loc2_.errorMessage);
         }
      }
   }
}
