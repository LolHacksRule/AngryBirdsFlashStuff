package
{
   import §#!q§.§6!?§;
   import §#!q§.§`q§;
   import §%!5§.§7;§;
   import §%!l§.§&t§;
   import §'!N§.§][§;
   import §+$§.§[!a§;
   import §-!F§.§2[§;
   import §1!^§.§,!n§;
   import §37§.§&!;§;
   import §3<§.§-2§;
   import §3<§.§9&§;
   import §6x§.§9E§;
   import §7!N§.§0-§;
   import §7!N§.§3!0§;
   import §7!N§.LoginHandlerEvent;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import §<! §.§#!b§;
   import §<! §.§1!6§;
   import §<! §.§<<§;
   import §[h§.§ !&§;
   import §[h§.§ set§;
   import §[h§.§49§;
   import §[h§.§]! §;
   import §]w§.§8!L§;
   import §^m§.§0!-§;
   import §^m§.§=!a§;
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
   
   public class § try§ extends §2'§ implements §<<§
   {
      
      public static const §[!1§:String = "LevelSelectionStateCustom";
      
      private static const §&![§:Number = 3000;
      
      private static const §#y§:Number = 1.5;
      
      private static var §>!f§:Boolean = false;
      
      private static var §8_§:Boolean = false;
       
      
      private var §@>§:Number = 3000;
      
      private var §#!V§:§][§ = null;
      
      private const §+9§:Boolean = true;
      
      private var §>j§:Boolean = false;
      
      private var §;!A§:String = "";
      
      private var §70§:Number;
      
      private var §!!R§:Boolean = false;
      
      private var §>J§:Vector.<§0!-§> = null;
      
      private var §8?§:Vector.<GlowFilter> = null;
      
      private var § f§:String = "";
      
      private var §`!<§:§0!-§;
      
      private var §"!k§:§#!b§;
      
      public function § try§(param1:Boolean = false, param2:String = "LevelSelectionStateCustom")
      {
         super(param1,param2);
      }
      
      public static function get §>!^§() : Boolean
      {
         return §>!f§;
      }
      
      public static function set §>!^§(param1:Boolean) : void
      {
         §>!f§ = param1;
      }
      
      public static function set §6!4§(param1:Boolean) : void
      {
         §8_§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §0!P§ = new §9E§(75,0,0,1);
         mUIView = new §-2§(this);
         mUIView.init(§9&§.§6!M§.Views.View_LevelSelectionCustom[0]);
         this.§#!V§ = new §&t§(§7;§.§1h§,"INGAME_THEME_1",false,3);
         this.§>J§ = new Vector.<§0!-§>(HighscoreSidebar.§+!m§.length,true);
         this.§8?§ = new Vector.<GlowFilter>(HighscoreSidebar.§+!m§.length,true);
         this.§"!k§ = new §#!b§(mUIView);
      }
      
      override public function activate() : void
      {
         super.activate();
         §7;§.§1h§.§^p§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§+9§)
         {
            §7;§.§1h§.§4!@§(true);
            §7;§.§1h§.§^p§(true);
            §7;§.§1h§.clearLevel();
            §7;§.setController(this.§#!V§);
            this.§#!V§.init();
         }
         §9!_§.§9§ = §[!1§;
         §9!_§.§>!X§();
         this.§6!Z§();
         this.§7!R§("");
         this.§70§ = 0;
         (mUIView.getItemByName("MovieClip_Visor") as §]! §).§7q§("Start");
         (mUIView.getItemByName("MovieClip_Visor") as §]! §).§4!V§ = true;
         (mUIView.getItemByName("MovieClip_Visor") as §]! §).setVisibility(true);
         (mUIView.getItemByName("TextField_Unlock_Code") as § set§).§,O§(§9!_§.§7O§,§9!_§.§=!n§,§9!_§.§8!X§);
         mUIView.getItemByName("Button_LS_Login").setVisibility(!§9!_§.§1!?§.§`2§);
         mUIView.getItemByName("TextField_Unlock_Code").setVisibility(§9!_§.§1!?§.§`2§);
         mUIView.getItemByName("Container_Enter_Code").setVisibility(§9!_§.§1!?§.§`2§);
         §`q§.§9$§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §`q§.§9$§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      private function §7!R§(param1:String) : void
      {
         ((mUIView.container.getItemByName("Container_Enter_Code") as § !&§).getItemByName("TextField_Unlock_Code") as § set§).setText(param1);
      }
      
      private function §7X§(param1:MouseEvent) : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7X§);
         mUIView.setText(this.§ f§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as § set§).§ !K§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§7X§);
         this.§;!1§();
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§!b§,this.§]!!§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§]!J§);
         super.deActivate();
      }
      
      private function §;!1§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§8?§.length)
         {
            this.§8?§[_loc1_ - 1] = null;
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.filters = [];
            if(this.§>J§[_loc1_ - 1] is §0!-§)
            {
               (this.§>J§[_loc1_ - 1] as §0!-§).§7!S§();
            }
            this.§>J§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(§9!_§.§1!?§.§`2§);
         sHighscoreSidebar.changeState(HighscoreSidebar.§2!R§);
         if(sHighscoreSidebar.selectedLevelName == null)
         {
            sHighscoreSidebar.loadScoreTable(HighscoreSidebar.§9!J§[2]);
         }
      }
      
      private function §6!Z§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§9!J§.length)
         {
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            if(_loc2_.TextField_LevelNum)
            {
               (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            }
            if(§0-§.§1!L§(HighscoreSidebar.§9!J§[_loc1_ - 1]))
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §49§).scaleOnMouseOver = true;
               (mUIView.getItemByName("Button_" + _loc1_) as §49§).targetSprite.useHandCursor = true;
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
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§+!m§[_loc1_ - 1];
               }
               _loc3_ = §9!_§.§1!?§.§&I§(HighscoreSidebar.§9!J§[_loc1_ - 1]);
               if(_loc2_.MovieClip_Stars)
               {
                  _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               }
            }
            else
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §49§).scaleOnMouseOver = false;
               (mUIView.getItemByName("Button_" + _loc1_) as §49§).targetSprite.useHandCursor = false;
               if(_loc2_.TextField_LevelNum)
               {
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§+!m§[_loc1_ - 1];
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
         §&!;§.§+o§(mUIView);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§!!R§)
         {
            this.§!!R§ = true;
            §6!?§.§>!I§(§6!?§.§?!a§);
            if(§3!0§.§9$§.§break§())
            {
               mUIView.container.setObjectToFront(mUIView.getItemByName("WaitingPopup"));
               mUIView.getItemByName("WaitingPopup").setVisibility(true);
               §3!0§.§9$§.addEventListener(LoginHandlerEvent.§!b§,this.§]!J§);
               §3!0§.§9$§.addEventListener(LoginHandlerEvent.ERROR,this.§]!!§);
               §3!0§.§9$§.§`n§(§3!0§.§9$§.name,§3!0§.§9$§.password,true);
            }
         }
         if(§8_§)
         {
            §8_§ = false;
            this.deActivate();
            this.activate();
         }
         if(§>!f§)
         {
            §>!f§ = false;
            §&!;§.§+o§(mUIView);
         }
         if(!this.§+9§)
         {
            §7;§.§5F§.update(param1);
         }
         else
         {
            this.§]'§(param1);
            this.§5!U§(mUIView.getItemByName("MovieClip_Visor") as §]! §,param1 / 8,true);
         }
         this.§"l§();
         if(mNextState.length > 0)
         {
            return § =§.STATE_STATUS_COMPLETED;
         }
         return § =§.STATE_STATUS_RUNNING;
      }
      
      private function §]!J§(param1:LoginHandlerEvent) : void
      {
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§!b§,this.§]!J§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§]!!§);
         this.deActivate();
         this.activate();
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §]!!§(param1:LoginHandlerEvent) : void
      {
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.§!b§,this.§]!J§);
         §3!0§.§9$§.removeEventListener(LoginHandlerEvent.ERROR,this.§]!!§);
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §"l§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§9!J§.length)
         {
            if(this.§8?§[_loc1_ - 1] != null)
            {
               _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.filters = [this.§8?§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§9!J§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§0-§.§1!L§(§2[§.§`t§(HighscoreSidebar.§9!J§[_loc5_])))
               {
                  §"e§.§[r§ = StatePlay.§[!1§;
                  §2[§.§'!T§(§2[§.§`t§(HighscoreSidebar.§9!J§[_loc5_]));
                  mNextState = StateCutScene.§[!1§;
               }
               else if(§9!_§.§1!?§.§`2§)
               {
                  this.§3!p§(_loc5_ + 1);
                  this.§6!Z§();
               }
               else
               {
                  this.§?o§();
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BUTTON_LOGIN":
               §&!;§.§+o§(mUIView);
               break;
            case "BUTTON_LOGIN_OVER":
               this.§3]§();
               break;
            case "UNLOCK_POWER_UP":
               _loc6_ = ((mUIView.container.getItemByName("Container_Enter_Code") as § !&§).getItemByName("TextField_Unlock_Code") as § set§).getText();
               this.§[+§(_loc6_);
               break;
            case "CUT_SCENE":
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §?o§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§`!<§ == null)
         {
            _loc1_ = (mUIView.container.getItemByName("Button_LS_Login") as §49§).mClip;
            this.§`!<§ = §=!a§.§9$§.§@!4§(§=!a§.§9$§.§9!H§(_loc1_,{
               "scaleX":1.1,
               "scaleY":1.1
            },null,0.25,§=!a§.§^5§),§=!a§.§9$§.§9!H§(_loc1_,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":1.1,
               "scaleY":1.1
            },0.25,§=!a§.§,!L§));
            this.§`!<§.onComplete = this.§3]§;
            this.§`!<§.play();
         }
      }
      
      private function §3]§() : void
      {
         if(this.§`!<§ != null)
         {
            this.§`!<§.stop();
            this.§`!<§ = null;
         }
      }
      
      private function §@7§() : void
      {
         this.§`!<§ = null;
      }
      
      private function §3!p§(param1:int) : void
      {
         var _loc2_:MovieClip = mUIView.getItemByName("Button_" + param1).mClip;
         if(this.§>J§[param1 - 1] is §0!-§)
         {
            if((this.§>J§[param1 - 1] as §0!-§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§8?§[param1 - 1] == null)
         {
            this.§8?§[param1 - 1] = new GlowFilter(16777215,0.6,12,4,2,3,false,false);
         }
         var _loc3_:§0!-§ = §=!a§.§9$§.§@!4§(§=!a§.§9$§.§9!H§(this.§8?§[param1 - 1],{"strength":2.5},{"strength":0},§#y§ / 4,§=!a§.§'m§),§=!a§.§9$§.§9!H§(this.§8?§[param1 - 1],{"strength":0},{"strength":2.5},§#y§ / 4,§=!a§.§[!5§),§=!a§.§9$§.§9!H§(this.§8?§[param1 - 1],{"strength":2.5},{"strength":0},§#y§ / 4,§=!a§.§'m§),§=!a§.§9$§.§9!H§(this.§8?§[param1 - 1],{"strength":0},{"strength":2.5},§#y§ / 4,§=!a§.§[!5§));
         _loc3_.play();
         this.§>J§[param1 - 1] = _loc3_;
      }
      
      private function §]'§(param1:Number) : Boolean
      {
         if((mUIView.getItemByName("MovieClip_Visor") as §]! §).§4!V§ == false)
         {
            this.§70§ += param1;
            if(this.§70§ > this.§@>§)
            {
               this.§70§ = 0;
               (mUIView.getItemByName("MovieClip_Visor") as §]! §).§7q§("Start");
               (mUIView.getItemByName("MovieClip_Visor") as §]! §).§4!V§ = true;
               (mUIView.getItemByName("MovieClip_Visor") as §]! §).setVisibility(true);
               this.§@>§ = §&![§ + Math.random() * (§&![§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §5!U§(param1:§]! §, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§4!V§ == true)
         {
            if((_loc4_ = param1.§&!§(param2)) == "End")
            {
               param1.§4!V§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §[+§(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§,!n§ = null;
         var _loc2_:String = §`q§.§9$§.§&7§("Error_Messages","CODE_NOT_EXIST");
         var _loc3_:String = §`q§.§9$§.§&7§("Error_Messages","CODE_USED");
         var _loc4_:String;
         if((_loc4_ = param1.split(" ").join("")) == "")
         {
            return;
         }
         if(_loc4_.length >= 5)
         {
            if(this.§>j§ == false && (_loc4_ != _loc2_ || _loc4_ != _loc3_))
            {
               _loc5_ = "code";
               _loc6_ = {
                  "playerId":§0-§.§6!&§.email,
                  "code":_loc4_
               };
               _loc7_ = new §,!n§(_loc6_,§9!_§.§?!k§ + _loc5_,this,§,!n§.§-I§);
               this.§>j§ = true;
            }
         }
         else
         {
            §&!;§.§&X§(mUIView,true,"CODE_NOT_EXIST");
            this.§7!R§("");
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §1!6§.§>o§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§>j§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §`q§.§9$§.§&7§("Error_Messages","CODE_NOT_EXIST");
            this.§7!R§("");
            §&!;§.§&X§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §`q§.§9$§.§&7§("Error_Messages","CODE_USED");
            this.§7!R§("");
            §&!;§.§&X§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §8!L§.§9$§.§12§(_loc4_);
            §&!;§.§&X§(mUIView);
            this.§7!R§("");
         }
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
         this.§7!R§("Incorrect code");
         this.§>j§ = false;
      }
      
      public function get §2M§() : §#!b§
      {
         return this.§"!k§;
      }
   }
}
