package §[l§
{
   import § e§.§&!&§;
   import § e§.§?`§;
   import §"!g§.§2!H§;
   import §"f§.§%1§;
   import §"f§.§@4§;
   import §#M§.§+!Z§;
   import §%r§.§;!X§;
   import §'d§.§8!]§;
   import §0;§.§3=§;
   import §0;§.§`!`§;
   import §31§.§ !A§;
   import §31§.§#!d§;
   import §31§.§?![§;
   import §31§.§@^§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import §7!>§.§0!_§;
   import §7!Q§.§=!G§;
   import §7!Q§.LoginHandlerEvent;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §<!R§.HighscoreSidebar;
   import §>!<§.§-E§;
   import §]q§.§6l§;
   import §`!@§.§!!Y§;
   import §`!@§.§#e§;
   import §`!@§.§[!X§;
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
   
   public class § A§ extends §,Q§ implements §[!X§
   {
      
      public static const §!_§:String = "LevelSelectionStateCustom";
      
      private static const §7!L§:Number = 3000;
      
      private static const §'!"§:Number = 1.5;
      
      private static var §3<§:Boolean = false;
      
      private static var §,G§:Boolean = false;
       
      
      private var §`!W§:Number = 3000;
      
      private var §-!O§:§2!H§ = null;
      
      private const §[o§:Boolean = true;
      
      private var §^n§:Boolean = false;
      
      private var §81§:String = "";
      
      private var §do §:Number;
      
      private var §8k§:Boolean = false;
      
      private var §1A§:Vector.<§@4§> = null;
      
      private var §^6§:Vector.<GlowFilter> = null;
      
      private var §=!=§:String = "";
      
      private var §%!`§:§@4§;
      
      private var §+!@§:§#e§;
      
      public function § A§(param1:Boolean = false, param2:String = "LevelSelectionStateCustom")
      {
         super(param1,param2);
      }
      
      public static function get § P§() : Boolean
      {
         return §3<§;
      }
      
      public static function set § P§(param1:Boolean) : void
      {
         §3<§ = param1;
      }
      
      public static function set §+!E§(param1:Boolean) : void
      {
         §,G§ = param1;
      }
      
      override public function init() : void
      {
         super.init();
         §6K§ = new §8!]§(75,0,0,1);
         mUIView = new §3=§(this);
         mUIView.init(§`!`§.§2=§.Views.View_LevelSelectionCustom[0]);
         this.§-!O§ = new §;!X§(§+!Z§.§?!<§,"INGAME_THEME_1",false,3);
         this.§1A§ = new Vector.<§@4§>(HighscoreSidebar.§;n§.length,true);
         this.§^6§ = new Vector.<GlowFilter>(HighscoreSidebar.§;n§.length,true);
         this.§+!@§ = new §#e§(mUIView);
      }
      
      override public function activate() : void
      {
         super.activate();
         §+!Z§.§?!<§.§#!Z§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§[o§)
         {
            §+!Z§.§?!<§.§,!7§(true);
            §+!Z§.§?!<§.§#!Z§(true);
            §+!Z§.§?!<§.clearLevel();
            §+!Z§.setController(this.§-!O§);
            this.§-!O§.init();
         }
         § 4§.§#!m§ = §!_§;
         § 4§.§8!4§();
         this.§;p§();
         this.§0!2§("");
         this.§do § = 0;
         (mUIView.getItemByName("MovieClip_Visor") as §@^§).§%=§("Start");
         (mUIView.getItemByName("MovieClip_Visor") as §@^§).§9! § = true;
         (mUIView.getItemByName("MovieClip_Visor") as §@^§).setVisibility(true);
         (mUIView.getItemByName("TextField_Unlock_Code") as §?![§).§8!,§(§ 4§.§5x§,§ 4§.§!!l§,§ 4§.§9!`§);
         mUIView.getItemByName("Button_LS_Login").setVisibility(!§ 4§.§?H§.§4!A§);
         mUIView.getItemByName("TextField_Unlock_Code").setVisibility(§ 4§.§?H§.§4!A§);
         mUIView.getItemByName("Container_Enter_Code").setVisibility(§ 4§.§?H§.§4!A§);
         §&!&§.§+j§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §&!&§.§+j§.updateTextFields(mUIView,"LevelSelectionStateCustom");
      }
      
      private function §0!2§(param1:String) : void
      {
         ((mUIView.container.getItemByName("Container_Enter_Code") as § !A§).getItemByName("TextField_Unlock_Code") as §?![§).setText(param1);
      }
      
      private function §`h§(param1:MouseEvent) : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`h§);
         mUIView.setText(this.§=!=§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (mUIView.getItemByName("TextField_Unlock_Code") as §?![§).§&t§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`h§);
         this.§?U§();
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§=!J§,this.§ !,§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§3!g§);
         super.deActivate();
      }
      
      private function §?U§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§^6§.length)
         {
            this.§^6§[_loc1_ - 1] = null;
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.filters = [];
            if(this.§1A§[_loc1_ - 1] is §@4§)
            {
               (this.§1A§[_loc1_ - 1] as §@4§).§%e§();
            }
            this.§1A§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.enableLogOutButton(§ 4§.§?H§.§4!A§);
         sHighscoreSidebar.changeState(HighscoreSidebar.§ each§);
         if(sHighscoreSidebar.selectedLevelName == null)
         {
            sHighscoreSidebar.loadScoreTable(HighscoreSidebar.§^7§[2]);
         }
      }
      
      private function §;p§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§^7§.length)
         {
            _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
            if(_loc2_.TextField_LevelNum)
            {
               (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            }
            if(§[!5§.§'A§(HighscoreSidebar.§^7§[_loc1_ - 1]))
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §#!d§).scaleOnMouseOver = true;
               (mUIView.getItemByName("Button_" + _loc1_) as §#!d§).targetSprite.useHandCursor = true;
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
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§;n§[_loc1_ - 1];
               }
               _loc3_ = § 4§.§?H§.§&!7§(HighscoreSidebar.§^7§[_loc1_ - 1]);
               if(_loc2_.MovieClip_Stars)
               {
                  _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               }
            }
            else
            {
               (mUIView.getItemByName("Button_" + _loc1_) as §#!d§).scaleOnMouseOver = false;
               (mUIView.getItemByName("Button_" + _loc1_) as §#!d§).targetSprite.useHandCursor = false;
               if(_loc2_.TextField_LevelNum)
               {
                  _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§;n§[_loc1_ - 1];
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
         §6l§.§;0§(mUIView);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§8k§)
         {
            this.§8k§ = true;
            §?`§.§%p§(§?`§.§#!E§);
            if(§=!G§.§+j§.§[!d§())
            {
               mUIView.container.setObjectToFront(mUIView.getItemByName("WaitingPopup"));
               mUIView.getItemByName("WaitingPopup").setVisibility(true);
               §=!G§.§+j§.addEventListener(LoginHandlerEvent.§=!J§,this.§3!g§);
               §=!G§.§+j§.addEventListener(LoginHandlerEvent.ERROR,this.§ !,§);
               §=!G§.§+j§.§4!L§(§=!G§.§+j§.name,§=!G§.§+j§.password,true);
            }
         }
         if(§,G§)
         {
            §,G§ = false;
            this.deActivate();
            this.activate();
         }
         if(§3<§)
         {
            §3<§ = false;
            §6l§.§;0§(mUIView);
         }
         if(!this.§[o§)
         {
            §+!Z§.§8j§.update(param1);
         }
         else
         {
            this.§?!J§(param1);
            this.§,j§(mUIView.getItemByName("MovieClip_Visor") as §@^§,param1 / 8,true);
         }
         this.§!-§();
         if(mNextState.length > 0)
         {
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         return §1!b§.STATE_STATUS_RUNNING;
      }
      
      private function §3!g§(param1:LoginHandlerEvent) : void
      {
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§=!J§,this.§3!g§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !,§);
         this.deActivate();
         this.activate();
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function § !,§(param1:LoginHandlerEvent) : void
      {
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.§=!J§,this.§3!g§);
         §=!G§.§+j§.removeEventListener(LoginHandlerEvent.ERROR,this.§ !,§);
         mUIView.getItemByName("WaitingPopup").setVisibility(false);
      }
      
      private function §!-§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§^7§.length)
         {
            if(this.§^6§[_loc1_ - 1] != null)
            {
               _loc2_ = mUIView.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.filters = [this.§^6§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§^7§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§[!5§.§'A§(§^d§.§?;§(HighscoreSidebar.§^7§[_loc5_])))
               {
                  §26§.§`!,§ = StatePlay.§!_§;
                  §^d§.§^N§(§^d§.§?;§(HighscoreSidebar.§^7§[_loc5_]));
                  mNextState = StateCutScene.§!_§;
               }
               else if(§ 4§.§?H§.§4!A§)
               {
                  this.§>!T§(_loc5_ + 1);
                  this.§;p§();
               }
               else
               {
                  this.§?!§();
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "BUTTON_LOGIN":
               §6l§.§;0§(mUIView);
               break;
            case "BUTTON_LOGIN_OVER":
               this.§-!'§();
               break;
            case "UNLOCK_POWER_UP":
               _loc6_ = ((mUIView.container.getItemByName("Container_Enter_Code") as § !A§).getItemByName("TextField_Unlock_Code") as §?![§).getText();
               this.§+!C§(_loc6_);
               break;
            case "CUT_SCENE":
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §?!§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§%!`§ == null)
         {
            _loc1_ = (mUIView.container.getItemByName("Button_LS_Login") as §#!d§).mClip;
            this.§%!`§ = §%1§.§+j§.§[!C§(§%1§.§+j§.§78§(_loc1_,{
               "scaleX":1.1,
               "scaleY":1.1
            },null,0.25,§%1§.§-!X§),§%1§.§+j§.§78§(_loc1_,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":1.1,
               "scaleY":1.1
            },0.25,§%1§.§=i§));
            this.§%!`§.onComplete = this.§-!'§;
            this.§%!`§.play();
         }
      }
      
      private function §-!'§() : void
      {
         if(this.§%!`§ != null)
         {
            this.§%!`§.stop();
            this.§%!`§ = null;
         }
      }
      
      private function §;M§() : void
      {
         this.§%!`§ = null;
      }
      
      private function §>!T§(param1:int) : void
      {
         var _loc2_:MovieClip = mUIView.getItemByName("Button_" + param1).mClip;
         if(this.§1A§[param1 - 1] is §@4§)
         {
            if((this.§1A§[param1 - 1] as §@4§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§^6§[param1 - 1] == null)
         {
            this.§^6§[param1 - 1] = new GlowFilter(16777215,0.6,12,4,2,3,false,false);
         }
         var _loc3_:§@4§ = §%1§.§+j§.§[!C§(§%1§.§+j§.§78§(this.§^6§[param1 - 1],{"strength":2.5},{"strength":0},§'!"§ / 4,§%1§.§2!<§),§%1§.§+j§.§78§(this.§^6§[param1 - 1],{"strength":0},{"strength":2.5},§'!"§ / 4,§%1§.§=!B§),§%1§.§+j§.§78§(this.§^6§[param1 - 1],{"strength":2.5},{"strength":0},§'!"§ / 4,§%1§.§2!<§),§%1§.§+j§.§78§(this.§^6§[param1 - 1],{"strength":0},{"strength":2.5},§'!"§ / 4,§%1§.§=!B§));
         _loc3_.play();
         this.§1A§[param1 - 1] = _loc3_;
      }
      
      private function §?!J§(param1:Number) : Boolean
      {
         if((mUIView.getItemByName("MovieClip_Visor") as §@^§).§9! § == false)
         {
            this.§do § += param1;
            if(this.§do § > this.§`!W§)
            {
               this.§do § = 0;
               (mUIView.getItemByName("MovieClip_Visor") as §@^§).§%=§("Start");
               (mUIView.getItemByName("MovieClip_Visor") as §@^§).§9! § = true;
               (mUIView.getItemByName("MovieClip_Visor") as §@^§).setVisibility(true);
               this.§`!W§ = §7!L§ + Math.random() * (§7!L§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §,j§(param1:§@^§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§9! § == true)
         {
            if((_loc4_ = param1.§1J§(param2)) == "End")
            {
               param1.§9! § = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §+!C§(param1:String) : void
      {
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:§-E§ = null;
         var _loc2_:String = §&!&§.§+j§.§'f§("Error_Messages","CODE_NOT_EXIST");
         var _loc3_:String = §&!&§.§+j§.§'f§("Error_Messages","CODE_USED");
         var _loc4_:String;
         if((_loc4_ = param1.split(" ").join("")) == "")
         {
            return;
         }
         if(_loc4_.length >= 5)
         {
            if(this.§^n§ == false && (_loc4_ != _loc2_ || _loc4_ != _loc3_))
            {
               _loc5_ = "code";
               _loc6_ = {
                  "playerId":§[!5§.§7!h§.email,
                  "code":_loc4_
               };
               _loc7_ = new §-E§(_loc6_,§ 4§.§=R§ + _loc5_,this,§-E§.§]!,§);
               this.§^n§ = true;
            }
         }
         else
         {
            §6l§.§[!7§(mUIView,true,"CODE_NOT_EXIST");
            this.§0!2§("");
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Array = null;
         var _loc2_:Object = §!!Y§.§@M§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§^n§ = false;
         if(_loc2_ && _loc2_.error == "CODE_NOT_EXIST")
         {
            _loc3_ = §&!&§.§+j§.§'f§("Error_Messages","CODE_NOT_EXIST");
            this.§0!2§("");
            §6l§.§[!7§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = §&!&§.§+j§.§'f§("Error_Messages","CODE_USED");
            this.§0!2§("");
            §6l§.§[!7§(mUIView,true,_loc2_.error);
         }
         else if(_loc2_ && _loc2_.items)
         {
            _loc4_ = _loc2_.items;
            §0!_§.§+j§.§?@§(_loc4_);
            §6l§.§[!7§(mUIView);
            this.§0!2§("");
         }
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
         this.§0!2§("Incorrect code");
         this.§^n§ = false;
      }
      
      public function get §8O§() : §#e§
      {
         return this.§+!@§;
      }
   }
}
