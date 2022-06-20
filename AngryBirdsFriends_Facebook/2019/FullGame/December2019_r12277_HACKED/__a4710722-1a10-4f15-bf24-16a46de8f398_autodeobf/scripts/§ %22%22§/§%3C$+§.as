package § ""§
{
   import § "v§.§4$4§;
   import §!!H§.§'#S§;
   import §+!n§.§+!p§;
   import §-"S§.§>#G§;
   import §0"M§.§8-§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §9!6§.AbstractPopup;
   import §9x§.§&$<§;
   import §9x§.§7",§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §[#A§.§&n§;
   import §^#?§.§?#,§;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §<$+§ extends AbstractPopup
   {
      
      public static const ID:String = "Popup_EditLeagueProfile";
       
      
      private var §7#V§:TextField;
      
      private var §<"V§:§=!Z§;
      
      private var §9!C§:Object;
      
      private var §7!?§:§5"f§;
      
      private var §'J§:String;
      
      private var §[t§:§;!b§;
      
      private var §"G§:§;!b§;
      
      private var §-#F§:§-$5§;
      
      private var §7"$§:§=!Z§;
      
      private var §]'§:String;
      
      private var §2#W§:String;
      
      public function §<$+§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§&n§.§7a§.Popups.Popup_EditLeagueProfile[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc4_:§;!b§ = null;
         var _loc5_:§&$<§ = null;
         super.init();
         this.§7#V§ = §'o§.mClip.nameTextField;
         this.§7#V§.restrict = "a-z A-Z 0-9 \\- ^ ";
         this.§7#V§.addEventListener(KeyboardEvent.KEY_UP,this.§;e§,false,0,true);
         this.§7#V§.addEventListener(FocusEvent.FOCUS_IN,this.§1#k§,false,0,true);
         this.§[t§ = §'o§.getItemByName("ButtonConfirm") as §;!b§;
         this.§"G§ = §'o§.getItemByName("ButtonBack") as §;!b§;
         this.§-#F§ = §'o§.getItemByName("TextField_ErrorMessage") as §-$5§;
         this.§-#F§.setText("");
         this.§<"V§ = §'o§.getItemByName("Checkbox_FB") as §=!Z§;
         this.§<"V§.mClip.addEventListener(MouseEvent.CLICK,this.§<"x§,false,0,true);
         this.§<"V§.mClip.buttonMode = true;
         this.§<"V§.mClip.useHandCursor = true;
         this.§7"$§ = §'o§.getItemByName("ProfileSaving") as §=!Z§;
         this.§7"$§.setVisibility(false);
         var _loc1_:§=!Z§ = §'o§.getItemByName("Title_UseFacebookName") as §=!Z§;
         _loc1_.mClip.buttonMode = true;
         _loc1_.mClip.useHandCursor = true;
         _loc1_.mClip.addEventListener(MouseEvent.CLICK,this.§<"x§,false,0,true);
         this.§9!C§ = §?#,§.§3"1§.§4"4§();
         var _loc2_:§!"e§ = §'o§.getItemByName("Container_PictureSelection") as §!"e§;
         var _loc3_:int = 0;
         while(_loc3_ < §&$<§.§5I§.length)
         {
            if(_loc4_ = _loc2_.getItemByName("Slot" + (_loc3_ + 1)) as §;!b§)
            {
               (_loc5_ = new §&$<§((AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userID,§&$<§.§5I§[_loc3_],(AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).avatarString,false,§7",§.§4$6§,§7",§.NORMAL,2)).x = 6;
               _loc5_.y = 5;
               _loc4_.mClip.addChild(_loc5_);
            }
            _loc3_++;
         }
         this.§%]§();
      }
      
      protected function §%]§() : void
      {
         if(this.§9!C§)
         {
            if(this.§9!C§.ni)
            {
               this.§7#V§.text = this.§9!C§.ni;
               if(this.§9!C§.ni == "")
               {
                  this.§<"V§.mClip.gotoAndStop("ACTIVE");
               }
               else
               {
                  this.§<"V§.mClip.gotoAndStop("INACTIVE");
               }
            }
            else
            {
               this.§7#V§.text = "";
               this.§<"V§.mClip.gotoAndStop("ACTIVE");
            }
            this.§!"!§(!!this.§9!C§.i ? this.§9!C§.i : §&$<§.§5I§[§&$<§.§0"a§]);
         }
         else
         {
            this.§7#V§.text = "";
            this.§<"V§.mClip.gotoAndStop("ACTIVE");
            this.§!"!§(§&$<§.§5I§[§&$<§.§0"a§]);
         }
      }
      
      protected function §;e§(param1:KeyboardEvent) : void
      {
         param1.stopImmediatePropagation();
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               §'o§.mClip.stage.focus = null;
               this.§`!;§();
               break;
            default:
               this.§-#F§.setText("");
               this.§<"x§(null);
         }
      }
      
      protected function §1#k§(param1:Event) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§<"x§(null);
         this.§-#F§.setText("");
      }
      
      protected function §<"x§(param1:MouseEvent) : void
      {
         if(!param1)
         {
            this.§<"V§.mClip.gotoAndStop("INACTIVE");
         }
         else
         {
            this.§<"V§.mClip.gotoAndStop(this.§<"V§.§3!]§() == "INACTIVE" ? "ACTIVE" : "INACTIVE");
            this.§7#V§.text = "";
            this.§-#F§.setText("");
            §4$4§.playSound("Menu_Select",§4$4§.§1#l§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
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
               this.§`!;§();
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
               _loc5_ = §&$<§.§5I§[_loc4_];
               if(this.§'J§ != _loc5_)
               {
                  §4$4§.playSound("Menu_Select",§4$4§.§1#l§);
               }
               this.§!"!§(_loc5_);
         }
      }
      
      private function §!"!§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§!"e§ = null;
         var _loc4_:int = 0;
         var _loc5_:§;!b§ = null;
         if(this.§'J§ != param1)
         {
            this.§'J§ = param1;
            _loc2_ = §&$<§.§5I§.indexOf(param1);
            _loc3_ = §'o§.getItemByName("Container_PictureSelection") as §!"e§;
            _loc4_ = 0;
            while(_loc4_ < §&$<§.§5I§.length)
            {
               if(_loc5_ = _loc3_.getItemByName("Slot" + (_loc4_ + 1)) as §;!b§)
               {
                  if(_loc4_ == _loc2_)
                  {
                     _loc5_.setEnabled(false);
                     _loc5_.setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
                  }
                  else
                  {
                     _loc5_.setEnabled(true);
                     _loc5_.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc5_.setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §`!;§() : void
      {
         var _loc3_:URLRequest = null;
         var _loc4_:Object = null;
         if(this.§7!?§)
         {
            return;
         }
         if(this.§<"V§.§3!]§() == "INACTIVE" && this.§7#V§.text == "")
         {
            this.§-#F§.setText("Use facebook name or enter nickname.");
            return;
         }
         this.§-#F§.setText("");
         var _loc1_:Boolean = false;
         var _loc2_:String = this.§7#V§.text;
         if(!this.§9!C§ || this.§9!C§.ni != _loc2_)
         {
            _loc1_ = true;
         }
         else if(this.§'J§ != this.§9!C§.i)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this.§7"$§.setVisibility(true);
            this.§7"$§.goToFrame(1,true);
            this.§[t§.setEnabled(false);
            this.§"G§.setEnabled(false);
            this.§]'§ = _loc2_;
            this.§2#W§ = this.§'J§;
            _loc3_ = §!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + §8-§.§,$4§ + §8-§.§]$&§);
            _loc4_ = {
               "ni":_loc2_,
               "i":this.§'J§
            };
            _loc3_.data = JSON.stringify(_loc4_);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.contentType = "application/json";
            this.§7!?§ = new §5"f§();
            this.§7!?§.addEventListener(Event.COMPLETE,this.§;"§);
            this.§7!?§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§7!?§.load(_loc3_);
         }
         else
         {
            close();
         }
      }
      
      protected function §;"§(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc2_:Object = param1.currentTarget.data;
         this.§[t§.setEnabled(true);
         this.§"G§.setEnabled(true);
         this.§7!?§ = null;
         if(_loc2_ is Boolean)
         {
            this.§9!C§.ni = this.§]'§;
            this.§9!C§.i = this.§2#W§;
            §?#,§.§3"1§.§!"r§(this.§]'§,this.§2#W§);
            _loc3_ = this.§]'§ != "" ? this.§]'§ : (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).userName;
            (§+!p§.§;"-§ as §^"a§).§?"c§.§&!e§(_loc3_,this.§2#W§);
            close();
         }
         else if(_loc2_.errorCode)
         {
            this.§7"$§.setVisibility(false);
            if(_loc2_.errorCode == §'#S§.§@$"§)
            {
               _loc4_ = /-/gi;
               if(this.§]'§.replace(_loc4_,"").length == 0)
               {
                  _loc2_.errorMessage = "Nickname must contain a character";
               }
            }
            this.§-#F§.setText(_loc2_.errorMessage);
         }
      }
   }
}
