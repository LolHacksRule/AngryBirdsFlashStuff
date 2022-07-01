package §?!E§
{
   import §&5§.HighscoreSidebar;
   import §'<§.§=!o§;
   import §-!G§.§!!Y§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §5!7§.§<"2§;
   import §;!b§.§%>§;
   import §?-§.§do §;
   import §@#§.§4!O§;
   import §@#§.§9!'§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import §`!_§.§'!N§;
   import §`6§.§!!]§;
   import com.angrybirds.§6U§;
   import com.angrybirds.utils.§#"+§;
   import com.angrybirds.utils.§0!D§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §;!k§ extends §5"#§
   {
      
      public static const §+B§:String = "LevelSelectionState";
       
      
      private var §;A§:§#"+§;
      
      private var §#!5§:§>L§;
      
      private var §#;§:§9!'§;
      
      private var §@C§:§'!N§;
      
      private var § h§:Vector.<§'!N§>;
      
      private var §9!8§:Timer;
      
      private var §+z§:int;
      
      public function §;!k§(param1:§=!o§, param2:§%>§, param3:§<"2§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = null;
         var _loc2_:String = (§-!l§.§"x§ as AngryBirdsCustom).§=!Q§.§8d§(§!!]§.§?!+§.§<N§()).brand;
         if(_loc2_ == "nesquik")
         {
            _loc1_ = AngryBirdsCustom.§+Z§(§+!b§.§#!P§.Views.ViewLevelSelectionCustomNesquik[0]);
         }
         else if(_loc2_ == "chocapic")
         {
            _loc1_ = AngryBirdsCustom.§+Z§(§+!b§.§#!P§.Views.ViewLevelSelectionCustomChocapic[0]);
         }
         else if(_loc2_ == "koko_krunch")
         {
            _loc1_ = AngryBirdsCustom.§+Z§(§+!b§.§#!P§.Views.ViewLevelSelectionCustomKokoKrunch[0]);
         }
         else
         {
            _loc1_ = AngryBirdsCustom.§+Z§(§+!b§.§#!P§.Views.ViewLevelSelectionCustom[0]);
         }
         return _loc1_;
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
         this.§ h§ = new Vector.<§'!N§>();
      }
      
      override public function activate(param1:String) : void
      {
         this.init();
         super.activate(param1);
         §6U§.§+_§.§ W§(false);
         §-!l§.§"x§.§,!W§.closeAllPopups();
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§;!m§(true);
         (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§!!g§(true);
         this.§?,§();
         this.§;A§ = new §#"+§();
         this.§;A§.addEventListener(§0!D§.§"k§,this.§ !H§);
         this.§#!5§ = (§#2§.container.getItemByName("Container_CodeInputBox") as §9!'§).getItemByName("TextField_InputCode") as §>L§;
         this.§#!5§.§<!=§.addEventListener(KeyboardEvent.KEY_UP,this.§^[§);
         this.§#!5§.§<!=§.maxChars = 10;
         this.§0_§();
         this.updateLocalization();
         AngryBirdsCustom.§"H§();
         §+o§.resetCurrentLevel();
         §+o§.resetPreviousLevel();
      }
      
      private function §0_§() : void
      {
         var _loc1_:int = 0;
         this.§#;§ = §#2§.container.getItemByName("Container_CodeInputBox") as §9!'§;
         this.§#;§.setVisibility(true);
         for each(_loc1_ in §!!Y§.§9!L§.§ Q§())
         {
            this.§3-§();
         }
      }
      
      override public function deActivate() : void
      {
         this.§;A§.removeEventListener(§0!D§.§"k§,this.§ !H§);
         this.§#!5§.setText("");
         this.§#!5§.§<!=§.removeEventListener(KeyboardEvent.KEY_UP,this.§^[§);
         this.§0,§();
         super.deActivate();
      }
      
      private function §?,§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§ s§.length)
         {
            _loc2_ = §#2§.getItemByName("Button_Level" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            (§#2§.getItemByName("Button_Level" + _loc1_) as §4!O§).setEnabled(true,true);
            if(§!!Y§.§5!=§(HighscoreSidebar.§ s§[_loc1_ - 1]))
            {
               (§#2§.getItemByName("Button_Level" + _loc1_) as §4!O§).scaleOnMouseOver = true;
               (§#2§.getItemByName("Button_Level" + _loc1_) as §4!O§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§^9§[_loc1_ - 1];
               _loc3_ = §-!l§.§"x§.§?"&§.userProgress.§4o§(HighscoreSidebar.§ s§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (§#2§.getItemByName("Button_Level" + _loc1_) as §4!O§).scaleOnMouseOver = false;
               (§#2§.getItemByName("Button_Level" + _loc1_) as §4!O§).mClip.useHandCursor = false;
               (§#2§.getItemByName("Button_Level" + _loc1_) as §4!O§).setEnabled(false,true);
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§^9§[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.§,D§("1-1");
               break;
            case "C1_LEVEL_2":
               this.§,D§("1-2");
               break;
            case "C1_LEVEL_3":
               this.§,D§("1-3");
               break;
            case "C1_LEVEL_4":
               this.§,D§("1-4");
               break;
            case "C1_LEVEL_5":
               this.§,D§("1-5");
               break;
            case "C2_LEVEL_1":
               this.§,D§("2-1");
               break;
            case "C2_LEVEL_2":
               this.§,D§("2-2");
               break;
            case "C2_LEVEL_3":
               this.§,D§("2-3");
               break;
            case "C2_LEVEL_4":
               this.§,D§("2-4");
               break;
            case "C2_LEVEL_5":
               this.§,D§("2-5");
               break;
            case "SUBMIT_CODE":
               this.§^!L§();
               break;
            case "OPEN_FAQ":
               this.§2!-§();
         }
      }
      
      private function §2!-§() : void
      {
         §do §.§>"-§("onFlashOpenFaq");
      }
      
      private function §,D§(param1:String) : void
      {
         if(§!!Y§.§5!=§(param1))
         {
            §+o§.loadLevel(param1);
            §0!w§(StateCutScene.§+B§);
         }
      }
      
      private function §^!L§() : void
      {
         var _loc1_:§>L§ = this.§#!5§;
         var _loc2_:String = _loc1_.getText();
         this.§;A§.§^!L§(_loc2_);
      }
      
      private function § !H§(param1:§0!D§) : void
      {
         var _loc2_:int = 0;
         if(§!!Y§.§9!L§)
         {
            for each(_loc2_ in §!!Y§.§9!L§.§ Q§())
            {
               this.§3-§();
            }
         }
         this.§?,§();
         this.§^6§();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §!!]§.§?!+§.updateTextFields(§#2§.container,"StateEpisodeSelection");
      }
      
      private function §3-§() : void
      {
         this.§#;§.setVisibility(false);
      }
      
      private function §&"%§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            this.§^!L§();
            return;
         }
      }
      
      private function §^[§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§^!L§();
            return;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§'!N§ = null;
         super.update(param1);
         for each(_loc2_ in this.§ h§)
         {
            _loc2_.update(param1);
         }
      }
      
      private function §^6§() : void
      {
         this.§9!8§ = new Timer(100);
         this.§+z§ = 0;
         this.§9!8§.addEventListener(TimerEvent.TIMER,this.§'!x§);
         this.§9!8§.start();
      }
      
      private function §>o§(param1:MovieClip, param2:int) : void
      {
         this.§@C§ = new §'!N§(AngryBirdsCustom.§`!p§,AngryBirdsCustom.§1a§,param1.x,param1.y,§'!N§.§[!i§,param2);
         §#2§.addChild(this.§@C§);
         this.§ h§.push(this.§@C§);
      }
      
      private function §0,§() : void
      {
         var _loc1_:§'!N§ = null;
         if(this.§9!8§)
         {
            this.§9!8§.stop();
            this.§9!8§.removeEventListener(TimerEvent.TIMER,this.§'!x§);
         }
         for each(_loc1_ in this.§ h§)
         {
            if(§#2§.contains(_loc1_))
            {
               §#2§.removeChild(_loc1_);
            }
            _loc1_.§=!I§();
         }
         this.§ h§ = new Vector.<§'!N§>();
      }
      
      private function §'!x§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§+z§ == 0)
         {
            _loc2_ = this.§#;§.mClip;
            this.§>o§(_loc2_,40);
         }
         else
         {
            this.§9!8§.stop();
         }
         ++this.§+z§;
      }
   }
}
