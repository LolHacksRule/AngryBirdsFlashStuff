package §4%§
{
   import § v§.§!!^§;
   import § v§.§?!E§;
   import § v§.LoginHandlerEvent;
   import §!!h§.§1H§;
   import §"%§.§,!n§;
   import §+-§.§3!5§;
   import §4!3§.§1C§;
   import §6!Q§.§ !"§;
   import §7"§.§1! §;
   import §7"§.§8!#§;
   import §7"§.§[!K§;
   import §9!W§.§=!@§;
   import §;!j§.§25§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=!F§.§^!^§;
   import §>G§.§0Q§;
   import §>G§.§[f§;
   import §>G§.§]!W§;
   import §>G§.§]f§;
   import §@`§.§>!S§;
   import §@`§.§]8§;
   import §@w§.§'!#§;
   import §[#§.§&!D§;
   import §]! §.HighscoreSidebar;
   import §]!S§.§59§;
   import §^!V§.§^!j§;
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
   
   public class §9!Z§ extends §%0§ implements §1! §
   {
      
      public static const §4D§:String = "LevelSelectionStateCustom";
      
      private static const §>Z§:Number = 3000;
      
      private static const §>;§:Number = 1.5;
      
      private static var §>!i§:Boolean = false;
      
      private static var §?!N§:Boolean = false;
       
      
      private var §3!_§:Number = 3000;
      
      private var §^!i§:§&!D§ = null;
      
      private const §`7§:Boolean = true;
      
      private var §6H§:Boolean = false;
      
      private var §@<§:String = "";
      
      private var §+!_§:Number;
      
      private var §#!K§:Boolean = false;
      
      private var §@I§:Vector.<§^!^§> = null;
      
      private var §`"§:Vector.<GlowFilter> = null;
      
      private var §^3§:String = "";
      
      private var §@y§:§^!^§;
      
      private var §#!,§:§8!#§;
      
      public function §9!Z§(param1:Boolean = false, param2:String = "LevelSelectionStateCustom")
      {
         super(param1,param2);
      }
      
      public static function get §7M§() : Boolean
      {
         return §>!i§;
      }
      
      public static function set §7M§(param1:Boolean) : void
      {
         §>!i§ = param1;
      }
      
      public static function set §@H§(param1:Boolean) : void
      {
         §?!N§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §%L§ = new §59§(75,0,0,1);
         mUIView = new §>!S§(this);
         mUIView.init(§]8§.§-!C§.Views.View_LevelSelectionCustom[0]);
         this.§^!i§ = new §1C§(§=!@§.§>!T§,"INGAME_THEME_1",false,3);
         this.§@I§ = new Vector.<§^!^§>(HighscoreSidebar.§9r§.length,true);
         this.§`"§ = new Vector.<GlowFilter>(HighscoreSidebar.§9r§.length,true);
         this.§#!,§ = new §8!#§(mUIView);
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!@§.§>!T§.§8!2§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§`7§)
         {
            §=!@§.§>!T§.§>h§(true);
            §=!@§.§>!T§.§8!2§(true);
            §=!@§.§>!T§.clearLevel();
            §=!@§.setController(this.§^!i§);
            this.§^!i§.init();
         }
         §'j§.§4h§ = §4D§;
         §'j§.§^!>§();
         this.§ `§();
         this.§#!O§("");
         this.§+!_§ = 0;
         (mUIView.getItemByName("MovieClip_Visor") as §[f§).§9!@§("Start");
         (mUIView.getItemByName("MovieClip_Visor") as §[f§).§['§ = true;
         (mUIView.getItemByName("MovieClip_Visor") as §[f§).setVisibility(true);
         (mUIView.getItemByName("TextField_Unlock_Code") as §]!W§).§"h§(§'j§.§6!D§,§'j§.§3!<§,§'j§.§>5§);
         mUIView.getItemByName("Button_LS_Login").setVisibility(!§'j§.§%g§.§"!W§);
         mUIView.getItemByName("TextField_Unlock_Code").setVisibility(§'j§.§%g§.§"!W§);
         mUIView.getItemByName("Container_Enter_Code").setVisibility(§'j§.§%g§.§"!W§);
         §[!<§.§'!S§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §[!<§.§'!S§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      private function §#!O§(param1:String) : void
      {
         ((mUIView.container.getItemByName("Container_Enter_Code") as §]f§).getItemByName("TextField_Unlock_Code") as §]!W§).setText(param1);
      }
      
      private function §3!V§(param1:MouseEvent) : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!V§);
         mUIView.setText(this.§^3§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §]!W§).§^!m§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!V§);
         this.§,V§();
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§`Y§,this.§else §);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§90§);
         super.deActivate();
      }
      
      private function §,V§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§`"§.length)
         {
            this.§`"§[_loc1_ - 1] = null;
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.filters = [];
            if(this.§@I§[_loc1_ - 1] is §^!^§)
            {
               (this.§@I§[_loc1_ - 1] as §^!^§).§1Y§();
            }
            this.§@I§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(§'j§.§%g§.§"!W§);
         sHighscoreSidebar.changeState(HighscoreSidebar.§=j§);
         if(sHighscoreSidebar.selectedLevelName == null)
         {
            sHighscoreSidebar.loadScoreTable(HighscoreSidebar.§!!E§[2]);
         }
      }
      
      private function § `§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§!!E§.length)
         {
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            if(_loc2_.TextField_LevelNum)
            {
               (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            }
            if(§!!^§.§!q§(HighscoreSidebar.§!!E§[_loc1_ - 1]))
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §0Q§).scaleOnMouseOver = true;
               (mUIView.getItemByName("Button_" + _loc1_) as §0Q§).targetSprite.useHandCursor = true;
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
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§9r§[_loc1_ - 1];
               }
               _loc3_ = §'j§.§%g§.§]!&§(HighscoreSidebar.§!!E§[_loc1_ - 1]);
               if(_loc2_.MovieClip_Stars)
               {
                  _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               }
            }
            else
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §0Q§).scaleOnMouseOver = false;
               (mUIView.getItemByName("Button_" + _loc1_) as §0Q§).targetSprite.useHandCursor = false;
               if(_loc2_.TextField_LevelNum)
               {
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§9r§[_loc1_ - 1];
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
         §^!j§.§0>§(mUIView);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§#!K§)
         {
            this.§#!K§ = true;
            §25§.§%!<§(§25§.§+]§);
            if(§?!E§.§'!S§.§6<§())
            {
               mUIView.container.setObjectToFront(mUIView.getItemByName("WaitingPopup"));
               mUIView.getItemByName("WaitingPopup").setVisibility(true);
               §?!E§.§'!S§.addEventListener(LoginHandlerEvent.§`Y§,this.§90§);
               §?!E§.§'!S§.addEventListener(LoginHandlerEvent.ERROR,this.§else §);
               §?!E§.§'!S§.§7!6§(§?!E§.§'!S§.name,§?!E§.§'!S§.password,true);
            }
         }
         if(§?!N§)
         {
            §?!N§ = false;
            this.deActivate();
            this.activate();
         }
         if(§>!i§)
         {
            §>!i§ = false;
            §^!j§.§0>§(mUIView);
         }
         if(!this.§`7§)
         {
            §=!@§.§>!b§.update(param1);
         }
         else
         {
            this.§3c§(param1);
            this.§ !T§(mUIView.getItemByName("MovieClip_Visor") as §[f§,param1 / 8,true);
         }
         this.§^m§();
         if(mNextState.length > 0)
         {
            return § !"§.STATE_STATUS_COMPLETED;
         }
         return § !"§.STATE_STATUS_RUNNING;
      }
      
      private function §90§(param1:LoginHandlerEvent) : void
      {
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§`Y§,this.§90§);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§else §);
         this.deActivate();
         this.activate();
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §else §(param1:LoginHandlerEvent) : void
      {
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.§`Y§,this.§90§);
         §?!E§.§'!S§.removeEventListener(LoginHandlerEvent.ERROR,this.§else §);
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §^m§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§!!E§.length)
         {
            if(this.§`"§[_loc1_ - 1] != null)
            {
               _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.filters = [this.§`"§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§!!E§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§!!^§.§!q§(§3!5§.§&!2§(HighscoreSidebar.§!!E§[_loc5_])))
               {
                  §,b§.§<A§ = StatePlay.§4D§;
                  §3!5§.§[C§(§3!5§.§&!2§(HighscoreSidebar.§!!E§[_loc5_]));
                  mNextState = StateCutScene.§4D§;
               }
               else if(§'j§.§%g§.§"!W§)
               {
                  this.§-N§(_loc5_ + 1);
                  this.§ `§();
               }
               else
               {
                  this.§+!U§();
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BUTTON_LOGIN":
               §^!j§.§0>§(mUIView);
               break;
            case "BUTTON_LOGIN_OVER":
               this.§ 0§();
               break;
            case "UNLOCK_POWER_UP":
               _loc6_ = ((mUIView.container.getItemByName("Container_Enter_Code") as §]f§).getItemByName("TextField_Unlock_Code") as §]!W§).getText();
               this.§[v§(_loc6_);
               break;
            case "CUT_SCENE":
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §+!U§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§@y§ == null)
         {
            _loc1_ = (mUIView.container.getItemByName("Button_LS_Login") as §0Q§).mClip;
            this.§@y§ = §"!2§.§'!S§.§<!X§(§"!2§.§'!S§.§-!S§(_loc1_,{
               "scaleX":1.1,
               "scaleY":1.1
            },null,0.25,§"!2§.§@!P§),§"!2§.§'!S§.§-!S§(_loc1_,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":1.1,
               "scaleY":1.1
            },0.25,§"!2§.§7!,§));
            this.§@y§.onComplete = this.§ 0§;
            this.§@y§.play();
         }
      }
      
      private function § 0§() : void
      {
         if(this.§@y§ != null)
         {
            this.§@y§.stop();
            this.§@y§ = null;
         }
      }
      
      private function §@X§() : void
      {
         this.§@y§ = null;
      }
      
      private function §-N§(param1:int) : void
      {
         var _loc2_:MovieClip = mUIView.getItemByName("Button_" + param1).mClip;
         if(this.§@I§[param1 - 1] is §^!^§)
         {
            if((this.§@I§[param1 - 1] as §^!^§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§`"§[param1 - 1] == null)
         {
            this.§`"§[param1 - 1] = new GlowFilter(16777215,0.6,12,4,2,3,false,false);
         }
         var _loc3_:§^!^§ = §"!2§.§'!S§.§<!X§(§"!2§.§'!S§.§-!S§(this.§`"§[param1 - 1],{"strength":2.5},{"strength":0},§>;§ / 4,§"!2§.§"H§),§"!2§.§'!S§.§-!S§(this.§`"§[param1 - 1],{"strength":0},{"strength":2.5},§>;§ / 4,§"!2§.§ !<§),§"!2§.§'!S§.§-!S§(this.§`"§[param1 - 1],{"strength":2.5},{"strength":0},§>;§ / 4,§"!2§.§"H§),§"!2§.§'!S§.§-!S§(this.§`"§[param1 - 1],{"strength":0},{"strength":2.5},§>;§ / 4,§"!2§.§ !<§));
         _loc3_.play();
         this.§@I§[param1 - 1] = _loc3_;
      }
      
      private function §3c§(param1:Number) : Boolean
      {
         if((mUIView.getItemByName("MovieClip_Visor") as §[f§).§['§ == false)
         {
            this.§+!_§ += param1;
            if(this.§+!_§ > this.§3!_§)
            {
               this.§+!_§ = 0;
               (mUIView.getItemByName("MovieClip_Visor") as §[f§).§9!@§("Start");
               (mUIView.getItemByName("MovieClip_Visor") as §[f§).§['§ = true;
               (mUIView.getItemByName("MovieClip_Visor") as §[f§).setVisibility(true);
               this.§3!_§ = §>Z§ + Math.random() * (§>Z§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function § !T§(param1:§[f§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§['§ == true)
         {
            if((_loc4_ = param1.§<@§(param2)) == "End")
            {
               param1.§['§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §[v§(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§1H§ = null;
         var _loc2_:String = §[!<§.§'!S§.§-!B§("Error_Messages","CODE_NOT_EXIST");
         var _loc3_:String = §[!<§.§'!S§.§-!B§("Error_Messages","CODE_USED");
         var _loc4_:String;
         if((_loc4_ = param1.split(" ").join("")) == "")
         {
            return;
         }
         if(_loc4_.length >= 5)
         {
            §§push(this.§6H§ == false);
            if(this.§6H§ == false)
            {
               §§pop();
               if(_loc4_ != _loc2_ || _loc4_ != _loc3_)
               {
                  _loc5_ = "code";
                  _loc6_ = {
                     "playerId":§!!^§.§,!a§.email,
                     "code":_loc4_
                  };
                  _loc7_ = new §1H§(_loc6_,§'j§.§2H§ + _loc5_,this,§1H§.§`P§);
                  this.§6H§ = true;
               }
               §§goto(addr150);
            }
            §§goto(addr67);
         }
         else
         {
            §^!j§.§!f§(mUIView,true,"CODE_NOT_EXIST");
            this.§#!O§("");
         }
         addr150:
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §[!K§.§,!j§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§6H§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §[!<§.§'!S§.§-!B§("Error_Messages","CODE_NOT_EXIST");
            this.§#!O§("");
            §^!j§.§!f§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §[!<§.§'!S§.§-!B§("Error_Messages","CODE_USED");
            this.§#!O§("");
            §^!j§.§!f§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §'!#§.§'!S§.§?c§(_loc4_);
            §^!j§.§!f§(mUIView);
            this.§#!O§("");
         }
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
         this.§#!O§("Incorrect code");
         this.§6H§ = false;
      }
      
      public function get §]§() : §8!#§
      {
         return this.§#!,§;
      }
   }
}
