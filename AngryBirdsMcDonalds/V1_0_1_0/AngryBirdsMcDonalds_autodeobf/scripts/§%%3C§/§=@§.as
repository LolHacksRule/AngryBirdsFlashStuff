package §%<§
{
   import § !1§.§8!Y§;
   import § !1§.§@!g§;
   import § !1§.§[n§;
   import §'!W§.§>!m§;
   import §'Y§.§6Q§;
   import §,![§.§'!S§;
   import §,![§.§2!"§;
   import §,![§.§7'§;
   import §,![§.§[!S§;
   import §-1§.§%#§;
   import §1!D§.§0S§;
   import §1!D§.§]!§;
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §3l§.§&W§;
   import §3l§.§9m§;
   import §4i§.§9!7§;
   import §8!P§.§5e§;
   import §9!8§.§0!7§;
   import §9!8§.§8n§;
   import §=T§.§0!%§;
   import §?;§.§4t§;
   import §?H§.§>!!§;
   import §?H§.§>!X§;
   import §?H§.LoginHandlerEvent;
   import §^5§.§]!,§;
   import §`!d§.§7!§;
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
   
   public class §=@§ extends §+V§ implements §[n§
   {
      
      public static const §<P§:String = "LevelSelectionStateCustom";
      
      private static const §7A§:Number = 3000;
      
      private static const §7!f§:Number = 1.5;
      
      private static var §!]§:Boolean = false;
      
      private static var §]e§:Boolean = false;
       
      
      private var §]2§:Number = 3000;
      
      private var §6!L§:§4t§ = null;
      
      private const §0j§:Boolean = true;
      
      private var §%^§:Boolean = false;
      
      private var §`!U§:String = "";
      
      private var §%!3§:Number;
      
      private var §+R§:Boolean = false;
      
      private var §]!l§:Vector.<§&W§> = null;
      
      private var §<!n§:Vector.<GlowFilter> = null;
      
      private var §%!K§:String = "";
      
      private var §,!M§:§&W§;
      
      private var §4!R§:§@!g§;
      
      public function §=@§(param1:Boolean = false, param2:String = "LevelSelectionStateCustom")
      {
         super(param1,param2);
      }
      
      public static function get §9!f§() : Boolean
      {
         return §!]§;
      }
      
      public static function set §9!f§(param1:Boolean) : void
      {
         §!]§ = param1;
      }
      
      public static function set §5,§(param1:Boolean) : void
      {
         §]e§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §=F§ = new §>!m§(75,0,0,1);
         mUIView = new §0!7§(this);
         mUIView.init(§8n§.§8C§.Views.View_LevelSelectionCustom[0]);
         this.§6!L§ = new §9!7§(§<H§.§=3§,"INGAME_THEME_1",false,3);
         this.§]!l§ = new Vector.<§&W§>(HighscoreSidebar.§2E§.length,true);
         this.§<!n§ = new Vector.<GlowFilter>(HighscoreSidebar.§2E§.length,true);
         this.§4!R§ = new §@!g§(mUIView);
      }
      
      override public function activate() : void
      {
         super.activate();
         §<H§.§=3§.§]!<§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§0j§)
         {
            §<H§.§=3§.§&e§(true);
            §<H§.§=3§.§]!<§(true);
            §<H§.§=3§.clearLevel();
            §<H§.setController(this.§6!L§);
            this.§6!L§.init();
         }
         §;!4§.§9!1§ = §<P§;
         §;!4§.§#3§();
         this.§^v§();
         this.§1!M§("");
         this.§%!3§ = 0;
         (mUIView.getItemByName("MovieClip_Visor") as §7'§).§9B§("Start");
         (mUIView.getItemByName("MovieClip_Visor") as §7'§).§=!n§ = true;
         (mUIView.getItemByName("MovieClip_Visor") as §7'§).setVisibility(true);
         (mUIView.getItemByName("TextField_Unlock_Code") as §'!S§).§<j§(§;!4§.§]s§,§;!4§.§,!g§,§;!4§.§[N§);
         mUIView.getItemByName("Button_LS_Login").setVisibility(!§;!4§.§8'§.§2!^§);
         mUIView.getItemByName("TextField_Unlock_Code").setVisibility(§;!4§.§8'§.§2!^§);
         mUIView.getItemByName("Container_Enter_Code").setVisibility(§;!4§.§8'§.§2!^§);
         §0S§.§>E§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §0S§.§>E§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      private function §1!M§(param1:String) : void
      {
         ((mUIView.container.getItemByName("Container_Enter_Code") as §[!S§).getItemByName("TextField_Unlock_Code") as §'!S§).setText(param1);
      }
      
      private function §'@§(param1:MouseEvent) : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'@§);
         mUIView.setText(this.§%!K§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §'!S§).§'!Z§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§'@§);
         this.§2B§();
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§2t§,this.§]G§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§4!#§);
         super.deActivate();
      }
      
      private function §2B§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§<!n§.length)
         {
            this.§<!n§[_loc1_ - 1] = null;
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.filters = [];
            if(this.§]!l§[_loc1_ - 1] is §&W§)
            {
               (this.§]!l§[_loc1_ - 1] as §&W§).§'Q§();
            }
            this.§]!l§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(§;!4§.§8'§.§2!^§);
         sHighscoreSidebar.changeState(HighscoreSidebar.§0C§);
         if(sHighscoreSidebar.selectedLevelName == null)
         {
            sHighscoreSidebar.loadScoreTable(HighscoreSidebar.§8t§[2]);
         }
      }
      
      private function §^v§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§8t§.length)
         {
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            if(_loc2_.TextField_LevelNum)
            {
               (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            }
            if(§>!!§.§3N§(HighscoreSidebar.§8t§[_loc1_ - 1]))
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §2!"§).scaleOnMouseOver = true;
               (mUIView.getItemByName("Button_" + _loc1_) as §2!"§).targetSprite.useHandCursor = true;
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
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§2E§[_loc1_ - 1];
               }
               _loc3_ = §;!4§.§8'§.§5!K§(HighscoreSidebar.§8t§[_loc1_ - 1]);
               if(_loc2_.MovieClip_Stars)
               {
                  _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               }
            }
            else
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §2!"§).scaleOnMouseOver = false;
               (mUIView.getItemByName("Button_" + _loc1_) as §2!"§).targetSprite.useHandCursor = false;
               if(_loc2_.TextField_LevelNum)
               {
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§2E§[_loc1_ - 1];
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
         §0!%§.§0!k§(mUIView);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§+R§)
         {
            this.§+R§ = true;
            §]!§.§>G§(§]!§.§,!O§);
            if(§>!X§.§>E§.§%U§())
            {
               mUIView.container.setObjectToFront(mUIView.getItemByName("WaitingPopup"));
               mUIView.getItemByName("WaitingPopup").setVisibility(true);
               §>!X§.§>E§.addEventListener(LoginHandlerEvent.§2t§,this.§4!#§);
               §>!X§.§>E§.addEventListener(LoginHandlerEvent.ERROR,this.§]G§);
               §>!X§.§>E§.§[!X§(§>!X§.§>E§.name,§>!X§.§>E§.password,true);
            }
         }
         if(§]e§)
         {
            §]e§ = false;
            this.deActivate();
            this.activate();
         }
         if(§!]§)
         {
            §!]§ = false;
            §0!%§.§0!k§(mUIView);
         }
         if(!this.§0j§)
         {
            §<H§.§ u§.update(param1);
         }
         else
         {
            this.§ 9§(param1);
            this.§9!<§(mUIView.getItemByName("MovieClip_Visor") as §7'§,param1 / 8,true);
         }
         this.§,+§();
         if(mNextState.length > 0)
         {
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         return §]!,§.STATE_STATUS_RUNNING;
      }
      
      private function §4!#§(param1:LoginHandlerEvent) : void
      {
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§2t§,this.§4!#§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§]G§);
         this.deActivate();
         this.activate();
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §]G§(param1:LoginHandlerEvent) : void
      {
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.§2t§,this.§4!#§);
         §>!X§.§>E§.removeEventListener(LoginHandlerEvent.ERROR,this.§]G§);
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §,+§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§8t§.length)
         {
            if(this.§<!n§[_loc1_ - 1] != null)
            {
               _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.filters = [this.§<!n§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§8t§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§>!!§.§3N§(§7!§.§?!n§(HighscoreSidebar.§8t§[_loc5_])))
               {
                  §%!$§.§`1§ = StatePlay.§<P§;
                  §7!§.§>!R§(§7!§.§?!n§(HighscoreSidebar.§8t§[_loc5_]));
                  mNextState = StateCutScene.§<P§;
               }
               else if(§;!4§.§8'§.§2!^§)
               {
                  this.§!9§(_loc5_ + 1);
                  this.§^v§();
               }
               else
               {
                  this.§`!+§();
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BUTTON_LOGIN":
               §0!%§.§0!k§(mUIView);
               break;
            case "BUTTON_LOGIN_OVER":
               this.§"!+§();
               break;
            case "UNLOCK_POWER_UP":
               _loc6_ = ((mUIView.container.getItemByName("Container_Enter_Code") as §[!S§).getItemByName("TextField_Unlock_Code") as §'!S§).getText();
               this.§+x§(_loc6_);
               break;
            case "CUT_SCENE":
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §`!+§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§,!M§ == null)
         {
            _loc1_ = (mUIView.container.getItemByName("Button_LS_Login") as §2!"§).mClip;
            this.§,!M§ = §9m§.§>E§.§69§(§9m§.§>E§.§"0§(_loc1_,{
               "scaleX":1.1,
               "scaleY":1.1
            },null,0.25,§9m§.§'!6§),§9m§.§>E§.§"0§(_loc1_,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":1.1,
               "scaleY":1.1
            },0.25,§9m§.§,D§));
            this.§,!M§.onComplete = this.§"!+§;
            this.§,!M§.play();
         }
      }
      
      private function §"!+§() : void
      {
         if(this.§,!M§ != null)
         {
            this.§,!M§.stop();
            this.§,!M§ = null;
         }
      }
      
      private function §@=§() : void
      {
         this.§,!M§ = null;
      }
      
      private function §!9§(param1:int) : void
      {
         var _loc2_:MovieClip = mUIView.getItemByName("Button_" + param1).mClip;
         if(this.§]!l§[param1 - 1] is §&W§)
         {
            if((this.§]!l§[param1 - 1] as §&W§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§<!n§[param1 - 1] == null)
         {
            this.§<!n§[param1 - 1] = new GlowFilter(16777215,0.6,12,4,2,3,false,false);
         }
         var _loc3_:§&W§ = §9m§.§>E§.§69§(§9m§.§>E§.§"0§(this.§<!n§[param1 - 1],{"strength":2.5},{"strength":0},§7!f§ / 4,§9m§.§5!b§),§9m§.§>E§.§"0§(this.§<!n§[param1 - 1],{"strength":0},{"strength":2.5},§7!f§ / 4,§9m§.§=!U§),§9m§.§>E§.§"0§(this.§<!n§[param1 - 1],{"strength":2.5},{"strength":0},§7!f§ / 4,§9m§.§5!b§),§9m§.§>E§.§"0§(this.§<!n§[param1 - 1],{"strength":0},{"strength":2.5},§7!f§ / 4,§9m§.§=!U§));
         _loc3_.play();
         this.§]!l§[param1 - 1] = _loc3_;
      }
      
      private function § 9§(param1:Number) : Boolean
      {
         if((mUIView.getItemByName("MovieClip_Visor") as §7'§).§=!n§ == false)
         {
            this.§%!3§ += param1;
            if(this.§%!3§ > this.§]2§)
            {
               this.§%!3§ = 0;
               (mUIView.getItemByName("MovieClip_Visor") as §7'§).§9B§("Start");
               (mUIView.getItemByName("MovieClip_Visor") as §7'§).§=!n§ = true;
               (mUIView.getItemByName("MovieClip_Visor") as §7'§).setVisibility(true);
               this.§]2§ = §7A§ + Math.random() * (§7A§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §9!<§(param1:§7'§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§=!n§ == true)
         {
            if((_loc4_ = param1.§?!Z§(param2)) == "End")
            {
               param1.§=!n§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §+x§(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§6Q§ = null;
         var _loc2_:String = §0S§.§>E§.§4Z§("Error_Messages","CODE_NOT_EXIST");
         var _loc3_:String = §0S§.§>E§.§4Z§("Error_Messages","CODE_USED");
         var _loc4_:String;
         if((_loc4_ = param1.split(" ").join("")) == "")
         {
            return;
         }
         if(_loc4_.length >= 5)
         {
            if(this.§%^§ == false && (_loc4_ != _loc2_ || _loc4_ != _loc3_))
            {
               _loc5_ = "code";
               _loc6_ = {
                  "playerId":§>!!§.§^!4§.email,
                  "code":_loc4_
               };
               _loc7_ = new §6Q§(_loc6_,§;!4§.§'!O§ + _loc5_,this,§6Q§.§&!0§);
               this.§%^§ = true;
            }
         }
         else
         {
            §0!%§.§&!=§(mUIView,true,"CODE_NOT_EXIST");
            this.§1!M§("");
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §8!Y§.§%f§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§%^§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §0S§.§>E§.§4Z§("Error_Messages","CODE_NOT_EXIST");
            this.§1!M§("");
            §0!%§.§&!=§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §0S§.§>E§.§4Z§("Error_Messages","CODE_USED");
            this.§1!M§("");
            §0!%§.§&!=§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §5e§.§>E§.§8!L§(_loc4_);
            §0!%§.§&!=§(mUIView);
            this.§1!M§("");
         }
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
         this.§1!M§("Incorrect code");
         this.§%^§ = false;
      }
      
      public function get §9!"§() : §@!g§
      {
         return this.§4!R§;
      }
   }
}
