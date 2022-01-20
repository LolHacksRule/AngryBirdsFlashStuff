package §5!W§
{
   import §#!1§.§!!X§;
   import §#!1§.§6!>§;
   import §&6§.§,!Y§;
   import §&6§.§`!T§;
   import §&6§.§`!q§;
   import §'!D§.§7!c§;
   import §,!C§.§!!]§;
   import §,!C§.§-6§;
   import §,!C§.§3!&§;
   import §,!C§.§?!C§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §,E§.§"!K§;
   import §-a§.§5C§;
   import §-h§.§+!P§;
   import §0$§.§!t§;
   import §0$§.§8!K§;
   import §0$§.LoginHandlerEvent;
   import §2!G§.§-!3§;
   import §2S§.§6!P§;
   import §4!A§.§#b§;
   import §4!A§.§7#§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §7p§.§>!m§;
   import §@-§.§[y§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §,!B§ extends §`X§ implements §`!T§
   {
      
      public static const §>d§:String = "LevelSelectionStateCustom";
      
      private static const §%l§:Number = 3000;
      
      private static const §4! §:Number = 1.5;
      
      private static var §,§:Boolean = false;
      
      private static var §>!W§:Boolean = false;
       
      
      private var §?!§:Number = 3000;
      
      private var §+!M§:§+!P§ = null;
      
      private const §#@§:Boolean = true;
      
      private var §5!e§:Boolean = false;
      
      private var §1!$§:String = "";
      
      private var §0E§:Number;
      
      private var §]!d§:Boolean = false;
      
      private var §8!b§:Vector.<§#b§> = null;
      
      private var §=!j§:Vector.<GlowFilter> = null;
      
      private var §'M§:String = "";
      
      private var §-D§:§#b§;
      
      private var §;!8§:§,!Y§;
      
      public function §,!B§(param1:Boolean = false, param2:String = "LevelSelectionStateCustom")
      {
         super(param1,param2);
      }
      
      public static function get §0!B§() : Boolean
      {
         return §,§;
      }
      
      public static function set §0!B§(param1:Boolean) : void
      {
         §,§ = param1;
      }
      
      public static function set §!F§(param1:Boolean) : void
      {
         §>!W§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §#5§ = new §5C§(75,0,0,1);
         mUIView = new §%g§(this);
         mUIView.init(§>!m§.§9c§.Views.View_LevelSelectionCustom[0]);
         this.§+!M§ = new §7!c§(§2M§.§1?§,"INGAME_THEME_1",false,3);
         this.§8!b§ = new Vector.<§#b§>(HighscoreSidebar.§]!-§.length,true);
         this.§=!j§ = new Vector.<GlowFilter>(HighscoreSidebar.§]!-§.length,true);
         this.§;!8§ = new §,!Y§(mUIView);
      }
      
      override public function activate() : void
      {
         super.activate();
         §2M§.§1?§.§4<§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§#@§)
         {
            §2M§.§1?§.§9!=§(true);
            §2M§.§1?§.§4<§(true);
            §2M§.§1?§.clearLevel();
            §2M§.setController(this.§+!M§);
            this.§+!M§.init();
         }
         §3![§.§0#§ = §>d§;
         §3![§.§'S§();
         this.§^f§();
         this.§3m§("");
         this.§0E§ = 0;
         (mUIView.getItemByName("MovieClip_Visor") as §!!]§).§+^§("Start");
         (mUIView.getItemByName("MovieClip_Visor") as §!!]§).§&!H§ = true;
         (mUIView.getItemByName("MovieClip_Visor") as §!!]§).setVisibility(true);
         (mUIView.getItemByName("TextField_Unlock_Code") as §3!&§).§1S§(§3![§.§<!5§,§3![§.§;W§,§3![§.§<]§);
         mUIView.getItemByName("Button_LS_Login").setVisibility(!§3![§.§5!6§.§%!%§);
         mUIView.getItemByName("TextField_Unlock_Code").setVisibility(§3![§.§5!6§.§%!%§);
         mUIView.getItemByName("Container_Enter_Code").setVisibility(§3![§.§5!6§.§%!%§);
         §!!X§.§5!!§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §!!X§.§5!!§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      private function §3m§(param1:String) : void
      {
         ((mUIView.container.getItemByName("Container_Enter_Code") as §-6§).getItemByName("TextField_Unlock_Code") as §3!&§).setText(param1);
      }
      
      private function §+2§(param1:MouseEvent) : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+2§);
         mUIView.setText(this.§'M§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §3!&§).§>!3§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+2§);
         this.§&!i§();
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§16§,this.§+!!§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§2!Z§);
         super.deActivate();
      }
      
      private function §&!i§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§=!j§.length)
         {
            this.§=!j§[_loc1_ - 1] = null;
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.filters = [];
            if(this.§8!b§[_loc1_ - 1] is §#b§)
            {
               (this.§8!b§[_loc1_ - 1] as §#b§).§'!§();
            }
            this.§8!b§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(§3![§.§5!6§.§%!%§);
         sHighscoreSidebar.changeState(HighscoreSidebar.§<! §);
         if(sHighscoreSidebar.selectedLevelName == null)
         {
            sHighscoreSidebar.loadScoreTable(HighscoreSidebar.§#!#§[2]);
         }
      }
      
      private function §^f§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§#!#§.length)
         {
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            if(_loc2_.TextField_LevelNum)
            {
               (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            }
            if(§!t§.§>E§(HighscoreSidebar.§#!#§[_loc1_ - 1]))
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §?!C§).scaleOnMouseOver = true;
               (mUIView.getItemByName("Button_" + _loc1_) as §?!C§).targetSprite.useHandCursor = true;
               if(_loc2_.MovieClip_Lock)
               {
                  _loc2_.MovieClip_Lock.visible = false;
               }
               if(_loc2_.MovieClip_Stars)
               {
                  _loc2_.MovieClip_Stars.visible = true;
               }
               if(_loc2_.TextField_LevelNum)
               {
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§]!-§[_loc1_ - 1];
               }
               _loc3_ = §3![§.§5!6§.§ !T§(HighscoreSidebar.§#!#§[_loc1_ - 1]);
               if(_loc2_.MovieClip_Stars)
               {
                  _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               }
            }
            else
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §?!C§).scaleOnMouseOver = false;
               (mUIView.getItemByName("Button_" + _loc1_) as §?!C§).targetSprite.useHandCursor = false;
               if(_loc2_.TextField_LevelNum)
               {
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§]!-§[_loc1_ - 1];
               }
               if(_loc2_.MovieClip_Lock)
               {
                  _loc2_.MovieClip_Lock.visible = true;
               }
               if(_loc2_.MovieClip_Stars)
               {
                  _loc2_.MovieClip_Stars.visible = false;
               }
            }
            _loc1_++;
         }
      }
      
      override protected function loginButtonClicked() : void
      {
         §-!3§.§[!J§(mUIView);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§]!d§)
         {
            this.§]!d§ = true;
            §6!>§.§7!'§(§6!>§.§!!@§);
            if(§8!K§.§5!!§.§[!j§())
            {
               mUIView.container.setObjectToFront(mUIView.getItemByName("WaitingPopup"));
               mUIView.getItemByName("WaitingPopup").setVisibility(true);
               §8!K§.§5!!§.addEventListener(LoginHandlerEvent.§16§,this.§+!!§);
               §8!K§.§5!!§.addEventListener(LoginHandlerEvent.ERROR,this.§2!Z§);
               §8!K§.§5!!§.§5M§(§8!K§.§5!!§.name,§8!K§.§5!!§.password,true);
            }
         }
         if(§>!W§)
         {
            §>!W§ = false;
            this.deActivate();
            this.activate();
         }
         if(§,§)
         {
            §,§ = false;
            §-!3§.§[!J§(mUIView);
         }
         if(!this.§#@§)
         {
            §2M§.§`r§.update(param1);
         }
         else
         {
            this.§"4§(param1);
            this.§4c§(mUIView.getItemByName("MovieClip_Visor") as §!!]§,param1 / 8,true);
         }
         this.§!!,§();
         if(mNextState.length > 0)
         {
            return § for§.STATE_STATUS_COMPLETED;
         }
         return § for§.STATE_STATUS_RUNNING;
      }
      
      private function §+!!§(param1:LoginHandlerEvent) : void
      {
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§16§,this.§+!!§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§2!Z§);
         this.deActivate();
         this.activate();
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §2!Z§(param1:LoginHandlerEvent) : void
      {
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.§16§,this.§+!!§);
         §8!K§.§5!!§.removeEventListener(LoginHandlerEvent.ERROR,this.§2!Z§);
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §!!,§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§#!#§.length)
         {
            if(this.§=!j§[_loc1_ - 1] != null)
            {
               _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.filters = [this.§=!j§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§#!#§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§!t§.§>E§(§;_§.§6D§(HighscoreSidebar.§#!#§[_loc5_])))
               {
                  §[Z§.§&l§ = StatePlay.§>d§;
                  §;_§.§;!M§(§;_§.§6D§(HighscoreSidebar.§#!#§[_loc5_]));
                  mNextState = StateCutScene.§>d§;
               }
               else if(§3![§.§5!6§.§%!%§)
               {
                  this.§-n§(_loc5_ + 1);
                  this.§^f§();
               }
               else
               {
                  this.§6!H§();
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BUTTON_LOGIN":
               §-!3§.§[!J§(mUIView);
               break;
            case "BUTTON_LOGIN_OVER":
               this.§'y§();
               break;
            case "UNLOCK_POWER_UP":
               _loc6_ = ((mUIView.container.getItemByName("Container_Enter_Code") as §-6§).getItemByName("TextField_Unlock_Code") as §3!&§).getText();
               this.§ !?§(_loc6_);
               break;
            case "CUT_SCENE":
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §6!H§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§-D§ == null)
         {
            _loc1_ = (mUIView.container.getItemByName("Button_LS_Login") as §?!C§).mClip;
            this.§-D§ = §7#§.§5!!§.§%N§(§7#§.§5!!§.§30§(_loc1_,{
               "scaleX":1.1,
               "scaleY":1.1
            },null,0.25,§7#§.§^!0§),§7#§.§5!!§.§30§(_loc1_,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":1.1,
               "scaleY":1.1
            },0.25,§7#§.§,o§));
            this.§-D§.onComplete = this.§'y§;
            this.§-D§.play();
         }
      }
      
      private function §'y§() : void
      {
         if(this.§-D§ != null)
         {
            this.§-D§.stop();
            this.§-D§ = null;
         }
      }
      
      private function §6!F§() : void
      {
         this.§-D§ = null;
      }
      
      private function §-n§(param1:int) : void
      {
         var _loc2_:MovieClip = mUIView.getItemByName("Button_" + param1).mClip;
         if(this.§8!b§[param1 - 1] is §#b§)
         {
            if((this.§8!b§[param1 - 1] as §#b§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§=!j§[param1 - 1] == null)
         {
            this.§=!j§[param1 - 1] = new GlowFilter(16777215,0.6,12,4,2,3,false,false);
         }
         var _loc3_:§#b§ = §7#§.§5!!§.§%N§(§7#§.§5!!§.§30§(this.§=!j§[param1 - 1],{"strength":2.5},{"strength":0},§4! § / 4,§7#§.§'!9§),§7#§.§5!!§.§30§(this.§=!j§[param1 - 1],{"strength":0},{"strength":2.5},§4! § / 4,§7#§.§8!d§),§7#§.§5!!§.§30§(this.§=!j§[param1 - 1],{"strength":2.5},{"strength":0},§4! § / 4,§7#§.§'!9§),§7#§.§5!!§.§30§(this.§=!j§[param1 - 1],{"strength":0},{"strength":2.5},§4! § / 4,§7#§.§8!d§));
         _loc3_.play();
         this.§8!b§[param1 - 1] = _loc3_;
      }
      
      private function §"4§(param1:Number) : Boolean
      {
         if((mUIView.getItemByName("MovieClip_Visor") as §!!]§).§&!H§ == false)
         {
            this.§0E§ += param1;
            if(this.§0E§ > this.§?!§)
            {
               this.§0E§ = 0;
               (mUIView.getItemByName("MovieClip_Visor") as §!!]§).§+^§("Start");
               (mUIView.getItemByName("MovieClip_Visor") as §!!]§).§&!H§ = true;
               (mUIView.getItemByName("MovieClip_Visor") as §!!]§).setVisibility(true);
               this.§?!§ = §%l§ + Math.random() * (§%l§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §4c§(param1:§!!]§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§&!H§ == true)
         {
            if((_loc4_ = param1.§1!N§(param2)) == "End")
            {
               param1.§&!H§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function § !?§(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§"!K§ = null;
         var _loc2_:String = §!!X§.§5!!§.§"9§("Error_Messages","CODE_NOT_EXIST");
         var _loc3_:String = §!!X§.§5!!§.§"9§("Error_Messages","CODE_USED");
         var _loc4_:String;
         if((_loc4_ = param1.split(" ").join("")) == "")
         {
            return;
         }
         if(_loc4_.length >= 5)
         {
            if(this.§5!e§ == false && (_loc4_ != _loc2_ || _loc4_ != _loc3_))
            {
               _loc5_ = "code";
               _loc6_ = {
                  "playerId":§!t§.§<1§.email,
                  "code":_loc4_
               };
               _loc7_ = new §"!K§(_loc6_,§3![§.§=![§ + _loc5_,this,§"!K§.§<!4§);
               this.§5!e§ = true;
            }
         }
         else
         {
            §-!3§.§+F§(mUIView,true,"CODE_NOT_EXIST");
            this.§3m§("");
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §`!q§.§-`§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§5!e§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §!!X§.§5!!§.§"9§("Error_Messages","CODE_NOT_EXIST");
            this.§3m§("");
            §-!3§.§+F§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §!!X§.§5!!§.§"9§("Error_Messages","CODE_USED");
            this.§3m§("");
            §-!3§.§+F§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §6!P§.§5!!§.§<4§(_loc4_);
            §-!3§.§+F§(mUIView);
            this.§3m§("");
         }
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
         this.§3m§("Incorrect code");
         this.§5!e§ = false;
      }
      
      public function get §;![§() : §,!Y§
      {
         return this.§;!8§;
      }
   }
}
