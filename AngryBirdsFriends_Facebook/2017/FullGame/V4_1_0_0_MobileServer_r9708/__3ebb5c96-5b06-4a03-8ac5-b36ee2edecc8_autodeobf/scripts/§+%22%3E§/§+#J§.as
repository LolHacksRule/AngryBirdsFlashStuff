package §+">§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §%#A§.§^!4§;
   import §+#t§.§!"l§;
   import §+#t§.§5V§;
   import §1#W§.§!#&§;
   import §3#G§.§^#L§;
   import §5"?§.§4"-§;
   import §6"r§.§!#A§;
   import §8#D§.§=>§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<#m§.AbstractPopup;
   import §[0§.§;$-§;
   import §^#]§.§;!&§;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   
   public class §+#J§ extends AbstractPopup
   {
      
      public static const ID:String = "Popup_EditLeagueProfile";
       
      
      private var § "1§:TextField;
      
      private var §!!1§:§'=§;
      
      private var §^_§:Object;
      
      private var §2b§:§4"v§;
      
      private var §+#U§:String;
      
      private var §%!C§:§,#w§;
      
      private var §?[§:§,#w§;
      
      private var §^!a§:§^!4§;
      
      private var §@!L§:§'=§;
      
      private var §6#>§:String;
      
      private var §`,§:String;
      
      public function §+#J§(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§=>§.§%" §.Popups.Popup_EditLeagueProfile[0],ID);
      }
      
      override protected function init() : void
      {
         var _loc4_:§,#w§ = null;
         var _loc5_:§!"l§ = null;
         super.init();
         this.§ "1§ = §1"6§.mClip.nameTextField;
         this.§ "1§.restrict = "a-z A-Z 0-9 \\- ^ ";
         this.§ "1§.addEventListener(KeyboardEvent.KEY_UP,this.§2!2§,false,0,true);
         this.§ "1§.addEventListener(FocusEvent.FOCUS_IN,this.§5"k§,false,0,true);
         this.§%!C§ = §1"6§.getItemByName("ButtonConfirm") as §,#w§;
         this.§?[§ = §1"6§.getItemByName("ButtonBack") as §,#w§;
         this.§^!a§ = §1"6§.getItemByName("TextField_ErrorMessage") as §^!4§;
         this.§^!a§.setText("");
         this.§!!1§ = §1"6§.getItemByName("Checkbox_FB") as §'=§;
         this.§!!1§.mClip.addEventListener(MouseEvent.CLICK,this.§!!#§,false,0,true);
         this.§!!1§.mClip.buttonMode = true;
         this.§!!1§.mClip.useHandCursor = true;
         this.§@!L§ = §1"6§.getItemByName("ProfileSaving") as §'=§;
         this.§@!L§.setVisibility(false);
         var _loc1_:§'=§ = §1"6§.getItemByName("Title_UseFacebookName") as §'=§;
         _loc1_.mClip.buttonMode = true;
         _loc1_.mClip.useHandCursor = true;
         _loc1_.mClip.addEventListener(MouseEvent.CLICK,this.§!!#§,false,0,true);
         this.§^_§ = §;$-§.§ "D§.§!"E§();
         var _loc2_:§]!_§ = §1"6§.getItemByName("Container_PictureSelection") as §]!_§;
         var _loc3_:int = 0;
         while(_loc3_ < §!"l§.§,!E§.length)
         {
            if(_loc4_ = _loc2_.getItemByName("Slot" + (_loc3_ + 1)) as §,#w§)
            {
               (_loc5_ = new §!"l§((AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userID,§!"l§.§,!E§[_loc3_],(AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).avatarString,false,§5V§.§3"C§,§5V§.NORMAL,2)).x = 6;
               _loc5_.y = 5;
               _loc4_.mClip.addChild(_loc5_);
            }
            _loc3_++;
         }
         this.§`"S§();
      }
      
      protected function §`"S§() : void
      {
         if(this.§^_§)
         {
            if(this.§^_§.ni)
            {
               this.§ "1§.text = this.§^_§.ni;
               if(this.§^_§.ni == "")
               {
                  this.§!!1§.mClip.gotoAndStop("ACTIVE");
               }
               else
               {
                  this.§!!1§.mClip.gotoAndStop("INACTIVE");
               }
            }
            else
            {
               this.§ "1§.text = "";
               this.§!!1§.mClip.gotoAndStop("ACTIVE");
            }
            this.§1"z§(!!this.§^_§.i ? this.§^_§.i : §!"l§.§,!E§[§!"l§.§8!3§]);
         }
         else
         {
            this.§ "1§.text = "";
            this.§!!1§.mClip.gotoAndStop("ACTIVE");
            this.§1"z§(§!"l§.§,!E§[§!"l§.§8!3§]);
         }
      }
      
      protected function §2!2§(param1:KeyboardEvent) : void
      {
         param1.stopImmediatePropagation();
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               §1"6§.mClip.stage.focus = null;
               this.§8#t§();
               break;
            default:
               this.§^!a§.setText("");
               this.§!!#§(null);
         }
      }
      
      protected function §5"k§(param1:Event) : void
      {
         AngryBirdsBase.singleton.exitFullScreen();
         this.§!!#§(null);
         this.§^!a§.setText("");
      }
      
      protected function §!!#§(param1:MouseEvent) : void
      {
         if(!param1)
         {
            this.§!!1§.mClip.gotoAndStop("INACTIVE");
         }
         else
         {
            this.§!!1§.mClip.gotoAndStop(this.§!!1§.§3K§() == "INACTIVE" ? "ACTIVE" : "INACTIVE");
            this.§ "1§.text = "";
            this.§^!a§.setText("");
            §!#&§.playSound("Menu_Select",§!#&§.§6#h§);
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
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
               this.§8#t§();
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
               _loc5_ = §!"l§.§,!E§[_loc4_];
               if(this.§+#U§ != _loc5_)
               {
                  §!#&§.playSound("Menu_Select",§!#&§.§6#h§);
               }
               this.§1"z§(_loc5_);
         }
      }
      
      private function §1"z§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§]!_§ = null;
         var _loc4_:int = 0;
         var _loc5_:§,#w§ = null;
         var _loc6_:* = false;
         if(this.§+#U§ != param1)
         {
            this.§+#U§ = param1;
            _loc2_ = §!"l§.§,!E§.indexOf(param1);
            _loc3_ = §1"6§.getItemByName("Container_PictureSelection") as §]!_§;
            _loc4_ = 0;
            while(_loc4_ < §!"l§.§,!E§.length)
            {
               if(_loc5_ = _loc3_.getItemByName("Slot" + (_loc4_ + 1)) as §,#w§)
               {
                  if(_loc6_ = _loc4_ == _loc2_)
                  {
                     _loc5_.setEnabled(false);
                     _loc5_.setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
                  }
                  else
                  {
                     _loc5_.setEnabled(true);
                     _loc5_.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     _loc5_.setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function §8#t§() : void
      {
         var _loc3_:URLRequest = null;
         var _loc4_:Object = null;
         if(this.§2b§)
         {
            return;
         }
         if(this.§!!1§.§3K§() == "INACTIVE" && this.§ "1§.text == "")
         {
            this.§^!a§.setText("Use facebook name or enter nickname.");
            return;
         }
         this.§^!a§.setText("");
         var _loc1_:Boolean = false;
         var _loc2_:String = this.§ "1§.text;
         if(!this.§^_§ || this.§^_§.ni != _loc2_)
         {
            _loc1_ = true;
         }
         else if(this.§+#U§ != this.§^_§.i)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this.§@!L§.setVisibility(true);
            this.§@!L§.goToFrame(1,true);
            this.§%!C§.setEnabled(false);
            this.§?[§.setEnabled(false);
            this.§6#>§ = _loc2_;
            this.§`,§ = this.§+#U§;
            _loc3_ = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + §^#L§.§@#3§ + §^#L§.§&!z§);
            _loc4_ = {
               "ni":_loc2_,
               "i":this.§+#U§
            };
            _loc3_.data = JSON.stringify(_loc4_);
            _loc3_.method = URLRequestMethod.POST;
            _loc3_.contentType = "application/json";
            this.§2b§ = new §4"v§();
            this.§2b§.addEventListener(Event.COMPLETE,this.§'!3§);
            this.§2b§.dataFormat = URLLoaderDataFormat.TEXT;
            this.§2b§.load(_loc3_);
         }
         else
         {
            close();
         }
      }
      
      protected function §'!3§(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:RegExp = null;
         var _loc5_:String = null;
         var _loc2_:Object = param1.currentTarget.data;
         this.§%!C§.setEnabled(true);
         this.§?[§.setEnabled(true);
         this.§2b§ = null;
         if(_loc2_ is Boolean)
         {
            this.§^_§.ni = this.§6#>§;
            this.§^_§.i = this.§`,§;
            §;$-§.§ "D§.§=!a§(this.§6#>§,this.§`,§);
            _loc3_ = this.§6#>§ != "" ? this.§6#>§ : (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).userName;
            (§!#A§.§>q§ as §-#+§).§'M§.§'z§(_loc3_,this.§`,§);
            close();
         }
         else if(_loc2_.errorCode)
         {
            this.§@!L§.setVisibility(false);
            if(_loc2_.errorCode == §;!&§.§=#>§)
            {
               _loc4_ = /-/gi;
               if((_loc5_ = this.§6#>§.replace(_loc4_,"")).length == 0)
               {
                  _loc2_.errorMessage = "Nickname must contain a character";
               }
            }
            this.§^!a§.setText(_loc2_.errorMessage);
         }
      }
   }
}
