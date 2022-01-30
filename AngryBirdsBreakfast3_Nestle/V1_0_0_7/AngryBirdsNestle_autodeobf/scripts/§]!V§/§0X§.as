package §]!V§
{
   import §!!&§.§`!$§;
   import §!!n§.§+Z§;
   import §!P§.§5!1§;
   import §"q§.§6,§;
   import §'!'§.§0!p§;
   import §'!u§.§&S§;
   import §0!E§.HighscoreSidebar;
   import §7"1§.§+7§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §>P§.§%`§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §[^§.§'g§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   import com.angrybirds.utils.§2&§;
   import com.angrybirds.utils.§@!q§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §0X§ extends §>!9§
   {
      
      public static const §+a§:String = "LevelSelectionState";
       
      
      private var §<B§:§2&§;
      
      private var §65§:§%`§;
      
      private var §@[§:§]"4§;
      
      private var §1! §:§+7§;
      
      private var §-!w§:Vector.<§+7§>;
      
      private var §&#§:Timer;
      
      private var §2!O§:int;
      
      public function §0X§(param1:§5!1§, param2:§&S§, param3:§'g§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = null;
         var _loc2_:String = (§,!X§.§>!G§ as AngryBirdsCustom).§!&§.§3r§(§`!$§.§>!P§.§?""§()).brand;
         if(_loc2_ == §+Z§.§7!e§)
         {
            _loc1_ = AngryBirdsCustom.§^Z§(§=!A§.§`O§.Views.ViewLevelSelectionCustomNesquik[0]);
         }
         else if(_loc2_ == §+Z§.§;!#§)
         {
            _loc1_ = AngryBirdsCustom.§^Z§(§=!A§.§`O§.Views.ViewLevelSelectionCustomChocapic[0]);
         }
         else if(_loc2_ == §+Z§.§&!z§)
         {
            _loc1_ = AngryBirdsCustom.§^Z§(§=!A§.§`O§.Views.ViewLevelSelectionCustomKokoKrunch[0]);
         }
         else
         {
            _loc1_ = AngryBirdsCustom.§^Z§(§=!A§.§`O§.Views.ViewLevelSelectionCustom[0]);
         }
         return _loc1_;
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
         this.§-!w§ = new Vector.<§+7§>();
      }
      
      override public function activate(param1:String) : void
      {
         this.init();
         super.activate(param1);
         §#Z§.§'0§.§#o§(false);
         §,!X§.§>!G§.§5!K§.closeAllPopups();
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§5!D§(true);
         (§,!X§.§>!G§ as AngryBirdsCustom).§@b§.§?q§(true);
         this.§^!L§();
         this.§<B§ = new §2&§();
         this.§<B§.addEventListener(§@!q§.§1!4§,this.§@,§);
         this.§65§ = (§5+§.container.getItemByName("Container_CodeInputBox") as §]"4§).getItemByName("TextField_InputCode") as §%`§;
         this.§65§.§=!=§.addEventListener(KeyboardEvent.KEY_UP,this.§-!m§);
         this.§65§.§=!=§.maxChars = 10;
         this.§37§();
         this.updateLocalization();
         AngryBirdsCustom.§ " §();
         §97§.resetCurrentLevel();
         §97§.resetPreviousLevel();
      }
      
      private function §37§() : void
      {
         var _loc1_:int = 0;
         this.§@[§ = §5+§.container.getItemByName("Container_CodeInputBox") as §]"4§;
         this.§@[§.setVisibility(true);
         for each(_loc1_ in §6,§.§!!7§.§5"!§())
         {
            this.§<!l§();
         }
      }
      
      override public function deActivate() : void
      {
         this.§<B§.removeEventListener(§@!q§.§1!4§,this.§@,§);
         this.§65§.setText("");
         this.§65§.§=!=§.removeEventListener(KeyboardEvent.KEY_UP,this.§-!m§);
         this.§0!;§();
         super.deActivate();
      }
      
      private function §^!L§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§]L§.length)
         {
            _loc2_ = §5+§.getItemByName("Button_Level" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            (§5+§.getItemByName("Button_Level" + _loc1_) as §73§).setEnabled(true,true);
            if(§6,§.§1!`§(HighscoreSidebar.§]L§[_loc1_ - 1]))
            {
               (§5+§.getItemByName("Button_Level" + _loc1_) as §73§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§5$§[_loc1_ - 1];
               _loc3_ = §,!X§.§>!G§.§>!I§.userProgress.§3i§(HighscoreSidebar.§]L§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (§5+§.getItemByName("Button_Level" + _loc1_) as §73§).mClip.useHandCursor = false;
               (§5+§.getItemByName("Button_Level" + _loc1_) as §73§).setEnabled(false,true);
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§5$§[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.§2f§("1-1");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C1_LEVEL_2":
               this.§2f§("1-2");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C1_LEVEL_3":
               this.§2f§("1-3");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C1_LEVEL_4":
               this.§2f§("1-4");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C1_LEVEL_5":
               this.§2f§("1-5");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C2_LEVEL_1":
               this.§2f§("2-1");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C2_LEVEL_2":
               this.§2f§("2-2");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C2_LEVEL_3":
               this.§2f§("2-3");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C2_LEVEL_4":
               this.§2f§("2-4");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "C2_LEVEL_5":
               this.§2f§("2-5");
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "SUBMIT_CODE":
               this.§#9§();
               §%!c§.§8" §("Menu_Confirm");
               break;
            case "OPEN_FAQ":
               this.§#m§();
               §%!c§.§8" §("Menu_Confirm");
         }
      }
      
      private function §#m§() : void
      {
         §0!p§.§`_§("onFlashOpenFaq");
      }
      
      private function §2f§(param1:String) : void
      {
         if(§6,§.§1!`§(param1))
         {
            §97§.loadLevel(param1);
            §8!`§(StateCutScene.§+a§);
         }
      }
      
      private function §#9§() : void
      {
         var _loc1_:§%`§ = this.§65§;
         var _loc2_:String = _loc1_.getText();
         this.§<B§.§#9§(_loc2_);
      }
      
      private function §@,§(param1:§@!q§) : void
      {
         var _loc2_:int = 0;
         if(§6,§.§!!7§)
         {
            for each(_loc2_ in §6,§.§!!7§.§5"!§())
            {
               this.§<!l§();
            }
         }
         this.§^!L§();
         this.§=@§();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §`!$§.§>!P§.updateTextFields(§5+§.container,"StateEpisodeSelection");
      }
      
      private function §<!l§() : void
      {
         this.§@[§.setVisibility(false);
      }
      
      private function §2!A§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            this.§#9§();
            return;
         }
      }
      
      private function §-!m§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§#9§();
            return;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§+7§ = null;
         super.update(param1);
         for each(_loc2_ in this.§-!w§)
         {
            _loc2_.update(param1);
         }
      }
      
      private function §=@§() : void
      {
         this.§&#§ = new Timer(100);
         this.§2!O§ = 0;
         this.§&#§.addEventListener(TimerEvent.TIMER,this.§=o§);
         this.§&#§.start();
      }
      
      private function §'!Y§(param1:MovieClip, param2:int) : void
      {
         this.§1! § = new §+7§(AngryBirdsCustom.§]!@§,AngryBirdsCustom.§1<§,param1.x,param1.y,§+7§.§6! §,param2);
         §5+§.addChild(this.§1! §);
         this.§-!w§.push(this.§1! §);
      }
      
      private function §0!;§() : void
      {
         var _loc1_:§+7§ = null;
         if(this.§&#§)
         {
            this.§&#§.stop();
            this.§&#§.removeEventListener(TimerEvent.TIMER,this.§=o§);
         }
         for each(_loc1_ in this.§-!w§)
         {
            if(§5+§.contains(_loc1_))
            {
               §5+§.removeChild(_loc1_);
            }
            _loc1_.§^!%§();
         }
         this.§-!w§ = new Vector.<§+7§>();
      }
      
      private function §=o§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§2!O§ == 0)
         {
            _loc2_ = this.§@[§.mClip;
            this.§'!Y§(_loc2_,40);
         }
         else
         {
            this.§&#§.stop();
         }
         ++this.§2!O§;
      }
   }
}
