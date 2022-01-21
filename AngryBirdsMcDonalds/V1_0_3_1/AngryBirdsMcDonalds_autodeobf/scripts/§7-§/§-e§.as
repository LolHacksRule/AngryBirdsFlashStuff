package §7-§
{
   import § !Y§.§2#§;
   import §&!V§.§=O§;
   import §+F§.§ !J§;
   import §,!h§.§9K§;
   import §,i§.§7;§;
   import §2y§.§4i§;
   import §2y§.§?`§;
   import §2y§.§@!a§;
   import §2y§.§]`§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §3g§.§%E§;
   import §7z§.§6!Q§;
   import §<Z§.§!!W§;
   import §<Z§.§"!8§;
   import §<Z§.§1!X§;
   import §=b§.§&!1§;
   import §=b§.§,!G§;
   import §=b§.LoginHandlerEvent;
   import §>!%§.HighscoreSidebar;
   import §?7§.§87§;
   import §?I§.§'k§;
   import §?I§.§`E§;
   import §[!L§.§9![§;
   import §`!"§.§2,§;
   import §`!"§.§;i§;
   import §finally§.§8k§;
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
   
   public class §-e§ extends §[!$§ implements §!!W§
   {
      
      public static const §<@§:String = "LevelSelectionStateCustom";
      
      private static const §2!V§:Number = 3000;
      
      private static const §4!@§:Number = 1.5;
      
      private static var §3D§:Boolean = false;
      
      private static var §,M§:Boolean = false;
       
      
      private var §^$§:Number = 3000;
      
      private var §8J§:§9![§ = null;
      
      private const §#m§:Boolean = true;
      
      private var §;Z§:Boolean = false;
      
      private var §+6§:String = "";
      
      private var §8!g§:Number;
      
      private var §<!e§:Boolean = false;
      
      private var §,2§:Vector.<§2,§> = null;
      
      private var §@!G§:Vector.<GlowFilter> = null;
      
      private var §7+§:String = "";
      
      private var §?!S§:§2,§;
      
      private var §;!>§:§1!X§;
      
      public function §-e§(param1:Boolean = false, param2:String = "LevelSelectionStateCustom")
      {
         super(param1,param2);
      }
      
      public static function get §8!F§() : Boolean
      {
         return §3D§;
      }
      
      public static function set §8!F§(param1:Boolean) : void
      {
         §3D§ = param1;
      }
      
      public static function set §-!J§(param1:Boolean) : void
      {
         §,M§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §<!o§ = new §9K§(75,0,0,1);
         mUIView = new §"!n§(this);
         mUIView.init(§%E§.§[i§.Views.View_LevelSelectionCustom[0]);
         this.§8J§ = new §6!Q§(§2#§.§"@§,"INGAME_THEME_1",false,3);
         this.§,2§ = new Vector.<§2,§>(HighscoreSidebar.§#!H§.length,true);
         this.§@!G§ = new Vector.<GlowFilter>(HighscoreSidebar.§#!H§.length,true);
         this.§;!>§ = new §1!X§(mUIView);
      }
      
      override public function activate() : void
      {
         super.activate();
         §2#§.§"@§.§5$§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§#m§)
         {
            §2#§.§"@§.§0f§(true);
            §2#§.§"@§.§5$§(true);
            §2#§.§"@§.clearLevel();
            §2#§.setController(this.§8J§);
            this.§8J§.init();
         }
         §2!M§.§4@§ = §<@§;
         §2!M§.§2!-§();
         this.§var §();
         this.§#4§("");
         this.§8!g§ = 0;
         (mUIView.getItemByName("MovieClip_Visor") as §4i§).§0!Z§("Start");
         (mUIView.getItemByName("MovieClip_Visor") as §4i§).§8!N§ = true;
         (mUIView.getItemByName("MovieClip_Visor") as §4i§).setVisibility(true);
         (mUIView.getItemByName("TextField_Unlock_Code") as §?`§).§;!!§(§2!M§.§!!9§,§2!M§.§ J§,§2!M§.§@?§);
         mUIView.getItemByName("Button_LS_Login").setVisibility(!§2!M§.§&!#§.§-!Z§);
         mUIView.getItemByName("TextField_Unlock_Code").setVisibility(§2!M§.§&!#§.§-!Z§);
         mUIView.getItemByName("Container_Enter_Code").setVisibility(§2!M§.§&!#§.§-!Z§);
         §`E§.§@!7§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §`E§.§@!7§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      private function §#4§(param1:String) : void
      {
         ((mUIView.container.getItemByName("Container_Enter_Code") as §]`§).getItemByName("TextField_Unlock_Code") as §?`§).setText(param1);
      }
      
      private function §]!C§(param1:MouseEvent) : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]!C§);
         mUIView.setText(this.§7+§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §?`§).§0!j§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§]!C§);
         this.§9i§();
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§>!F§,this.§<!N§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§>t§);
         super.deActivate();
      }
      
      private function §9i§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§@!G§.length)
         {
            this.§@!G§[_loc1_ - 1] = null;
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.filters = [];
            if(this.§,2§[_loc1_ - 1] is §2,§)
            {
               (this.§,2§[_loc1_ - 1] as §2,§).§'V§();
            }
            this.§,2§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(§2!M§.§&!#§.§-!Z§);
         sHighscoreSidebar.changeState(HighscoreSidebar.§>2§);
         if(sHighscoreSidebar.selectedLevelName == null)
         {
            sHighscoreSidebar.loadScoreTable(HighscoreSidebar.§[d§[2]);
         }
      }
      
      private function §var §() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§[d§.length)
         {
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            if(_loc2_.TextField_LevelNum)
            {
               (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            }
            if(§,!G§.§&N§(HighscoreSidebar.§[d§[_loc1_ - 1]))
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §@!a§).scaleOnMouseOver = true;
               (mUIView.getItemByName("Button_" + _loc1_) as §@!a§).targetSprite.useHandCursor = true;
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
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§#!H§[_loc1_ - 1];
               }
               _loc3_ = §2!M§.§&!#§.§]!$§(HighscoreSidebar.§[d§[_loc1_ - 1]);
               if(_loc2_.MovieClip_Stars)
               {
                  _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               }
            }
            else
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §@!a§).scaleOnMouseOver = false;
               (mUIView.getItemByName("Button_" + _loc1_) as §@!a§).targetSprite.useHandCursor = false;
               if(_loc2_.TextField_LevelNum)
               {
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§#!H§[_loc1_ - 1];
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
         § !J§.§62§(mUIView);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§<!e§)
         {
            this.§<!e§ = true;
            §'k§.§=<§(§'k§.§[$§);
            if(§&!1§.§@!7§.§[!U§())
            {
               mUIView.container.setObjectToFront(mUIView.getItemByName("WaitingPopup"));
               mUIView.getItemByName("WaitingPopup").setVisibility(true);
               §&!1§.§@!7§.addEventListener(LoginHandlerEvent.§>!F§,this.§>t§);
               §&!1§.§@!7§.addEventListener(LoginHandlerEvent.ERROR,this.§<!N§);
               §&!1§.§@!7§.§&!l§(§&!1§.§@!7§.name,§&!1§.§@!7§.password,true);
            }
         }
         if(§,M§)
         {
            §,M§ = false;
            this.deActivate();
            this.activate();
         }
         if(§3D§)
         {
            §3D§ = false;
            § !J§.§62§(mUIView);
         }
         if(!this.§#m§)
         {
            §2#§.§[I§.update(param1);
         }
         else
         {
            this.§ h§(param1);
            this.§+!1§(mUIView.getItemByName("MovieClip_Visor") as §4i§,param1 / 8,true);
         }
         this.§;!0§();
         if(mNextState.length > 0)
         {
            return §=O§.STATE_STATUS_COMPLETED;
         }
         return §=O§.STATE_STATUS_RUNNING;
      }
      
      private function §>t§(param1:LoginHandlerEvent) : void
      {
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§>!F§,this.§>t§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§<!N§);
         this.deActivate();
         this.activate();
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §<!N§(param1:LoginHandlerEvent) : void
      {
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.§>!F§,this.§>t§);
         §&!1§.§@!7§.removeEventListener(LoginHandlerEvent.ERROR,this.§<!N§);
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §;!0§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§[d§.length)
         {
            if(this.§@!G§[_loc1_ - 1] != null)
            {
               _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.filters = [this.§@!G§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§[d§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§,!G§.§&N§(§8k§.§]x§(HighscoreSidebar.§[d§[_loc5_])))
               {
                  §"_§.§@!m§ = StatePlay.§<@§;
                  §8k§.§;z§(§8k§.§]x§(HighscoreSidebar.§[d§[_loc5_]));
                  mNextState = StateCutScene.§<@§;
               }
               else if(§2!M§.§&!#§.§-!Z§)
               {
                  this.§8!D§(_loc5_ + 1);
                  this.§var §();
               }
               else
               {
                  this.§=K§();
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BUTTON_LOGIN":
               § !J§.§62§(mUIView);
               break;
            case "BUTTON_LOGIN_OVER":
               this.§%D§();
               break;
            case "UNLOCK_POWER_UP":
               _loc6_ = ((mUIView.container.getItemByName("Container_Enter_Code") as §]`§).getItemByName("TextField_Unlock_Code") as §?`§).getText();
               this.§9U§(_loc6_);
               break;
            case "CUT_SCENE":
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §=K§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§?!S§ == null)
         {
            _loc1_ = (mUIView.container.getItemByName("Button_LS_Login") as §@!a§).mClip;
            this.§?!S§ = §;i§.§@!7§.§?O§(§;i§.§@!7§.§@!6§(_loc1_,{
               "scaleX":1.1,
               "scaleY":1.1
            },null,0.25,§;i§.§#!m§),§;i§.§@!7§.§@!6§(_loc1_,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":1.1,
               "scaleY":1.1
            },0.25,§;i§.§56§));
            this.§?!S§.onComplete = this.§%D§;
            this.§?!S§.play();
         }
      }
      
      private function §%D§() : void
      {
         if(this.§?!S§ != null)
         {
            this.§?!S§.stop();
            this.§?!S§ = null;
         }
      }
      
      private function §`!T§() : void
      {
         this.§?!S§ = null;
      }
      
      private function §8!D§(param1:int) : void
      {
         var _loc2_:MovieClip = mUIView.getItemByName("Button_" + param1).mClip;
         if(this.§,2§[param1 - 1] is §2,§)
         {
            if((this.§,2§[param1 - 1] as §2,§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§@!G§[param1 - 1] == null)
         {
            this.§@!G§[param1 - 1] = new GlowFilter(16777215,0.6,12,4,2,3,false,false);
         }
         var _loc3_:§2,§ = §;i§.§@!7§.§?O§(§;i§.§@!7§.§@!6§(this.§@!G§[param1 - 1],{"strength":2.5},{"strength":0},§4!@§ / 4,§;i§.§%!J§),§;i§.§@!7§.§@!6§(this.§@!G§[param1 - 1],{"strength":0},{"strength":2.5},§4!@§ / 4,§;i§.§<!A§),§;i§.§@!7§.§@!6§(this.§@!G§[param1 - 1],{"strength":2.5},{"strength":0},§4!@§ / 4,§;i§.§%!J§),§;i§.§@!7§.§@!6§(this.§@!G§[param1 - 1],{"strength":0},{"strength":2.5},§4!@§ / 4,§;i§.§<!A§));
         _loc3_.play();
         this.§,2§[param1 - 1] = _loc3_;
      }
      
      private function § h§(param1:Number) : Boolean
      {
         if((mUIView.getItemByName("MovieClip_Visor") as §4i§).§8!N§ == false)
         {
            this.§8!g§ += param1;
            if(this.§8!g§ > this.§^$§)
            {
               this.§8!g§ = 0;
               (mUIView.getItemByName("MovieClip_Visor") as §4i§).§0!Z§("Start");
               (mUIView.getItemByName("MovieClip_Visor") as §4i§).§8!N§ = true;
               (mUIView.getItemByName("MovieClip_Visor") as §4i§).setVisibility(true);
               this.§^$§ = §2!V§ + Math.random() * (§2!V§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §+!1§(param1:§4i§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§8!N§ == true)
         {
            if((_loc4_ = param1.§'f§(param2)) == "End")
            {
               param1.§8!N§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §9U§(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§7;§ = null;
         var _loc2_:String = §`E§.§@!7§.§!!>§("Error_Messages","CODE_NOT_EXIST");
         var _loc3_:String = §`E§.§@!7§.§!!>§("Error_Messages","CODE_USED");
         var _loc4_:String;
         if((_loc4_ = param1.split(" ").join("")) == "")
         {
            return;
         }
         if(_loc4_.length >= 5)
         {
            if(this.§;Z§ == false && (_loc4_ != _loc2_ || _loc4_ != _loc3_))
            {
               _loc5_ = "code";
               _loc6_ = {
                  "playerId":§,!G§.§-!8§.email,
                  "code":_loc4_
               };
               _loc7_ = new §7;§(_loc6_,§2!M§.§`8§ + _loc5_,this,§7;§.§[%§);
               this.§;Z§ = true;
            }
         }
         else
         {
            § !J§.§ 9§(mUIView,true,"CODE_NOT_EXIST");
            this.§#4§("");
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §"!8§.§&!p§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§;Z§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §`E§.§@!7§.§!!>§("Error_Messages","CODE_NOT_EXIST");
            this.§#4§("");
            § !J§.§ 9§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §`E§.§@!7§.§!!>§("Error_Messages","CODE_USED");
            this.§#4§("");
            § !J§.§ 9§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §87§.§@!7§.§>&§(_loc4_);
            § !J§.§ 9§(mUIView);
            this.§#4§("");
         }
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
         this.§#4§("Incorrect code");
         this.§;Z§ = false;
      }
      
      public function get §5!0§() : §1!X§
      {
         return this.§;!>§;
      }
   }
}
