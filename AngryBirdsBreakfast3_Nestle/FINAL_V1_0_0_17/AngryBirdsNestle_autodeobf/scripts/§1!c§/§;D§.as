package §1!c§
{
   import §%!B§.§0![§;
   import §%8§.§4O§;
   import §'"!§.§+§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§^!D§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§]"%§;
   import §4!i§.§@"#§;
   import §4[§.§2P§;
   import §<S§.HighscoreSidebar;
   import §[!Z§.§>D§;
   import §[+§.§+"'§;
   import com.angrybirds.utils.§1"1§;
   import com.angrybirds.utils.§@,§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §;D§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelSelectionState";
       
      
      private var §=!;§:§1"1§;
      
      private var § !h§:§7!&§;
      
      private var §4M§:§,6§;
      
      private var §2^§:§^!D§;
      
      private var §2"6§:Vector.<§^!D§>;
      
      private var §#p§:Timer;
      
      private var §<g§:int;
      
      public function §;D§(param1:§0![§, param2:§+f§, param3:§4O§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = null;
         var _loc2_:String = (§ !4§.§%"7§ as AngryBirdsCustom).§6!g§.§^S§(§@"#§.§,2§.§0!x§()).brand;
         if(_loc2_ == §+"'§.§[3§)
         {
            _loc1_ = AngryBirdsCustom.§9!>§(§7I§.§7!%§.Views.ViewLevelSelectionCustomNesquik[0]);
         }
         else if(_loc2_ == §+"'§.§&X§)
         {
            _loc1_ = AngryBirdsCustom.§9!>§(§7I§.§7!%§.Views.ViewLevelSelectionCustomChocapic[0]);
         }
         else if(_loc2_ == §+"'§.§ !`§)
         {
            _loc1_ = AngryBirdsCustom.§9!>§(§7I§.§7!%§.Views.ViewLevelSelectionCustomKokoKrunch[0]);
         }
         else
         {
            _loc1_ = AngryBirdsCustom.§9!>§(§7I§.§7!%§.Views.ViewLevelSelectionCustom[0]);
         }
         return _loc1_;
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
         this.§2"6§ = new Vector.<§^!D§>();
      }
      
      override public function activate(param1:String) : void
      {
         this.init();
         super.activate(param1);
         §@!S§.§2A§.§`!V§(false);
         § !4§.§%"7§.§+!J§.closeAllPopups();
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§9!z§(true);
         (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§;!I§(true);
         this.§0! §();
         this.§=!;§ = new §1"1§();
         this.§=!;§.addEventListener(§@,§.§=h§,this.§<A§);
         this.§ !h§ = (§^!T§.container.getItemByName("Container_CodeInputBox") as §,6§).getItemByName("TextField_InputCode") as §7!&§;
         this.§ !h§.§'!"§.addEventListener(KeyboardEvent.KEY_UP,this.§7!G§);
         this.§ !h§.§'!"§.maxChars = 10;
         this.§ !h§.§'!"§.restrict = "a-zA-Z0-9\\";
         this.§3!N§();
         this.updateLocalization();
         AngryBirdsCustom.§get §();
         §4a§.resetCurrentLevel();
         §4a§.resetPreviousLevel();
      }
      
      private function §3!N§() : void
      {
         var _loc1_:int = 0;
         this.§4M§ = §^!T§.container.getItemByName("Container_CodeInputBox") as §,6§;
         this.§4M§.setVisibility(true);
         for each(_loc1_ in §2P§.§[!$§.§+[§())
         {
            this.§ +§();
         }
      }
      
      override public function deActivate() : void
      {
         this.§=!;§.removeEventListener(§@,§.§=h§,this.§<A§);
         this.§ !h§.setText("");
         this.§ !h§.§'!"§.removeEventListener(KeyboardEvent.KEY_UP,this.§7!G§);
         this.§8!Z§();
         super.deActivate();
      }
      
      private function §0! §() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§#!D§.length)
         {
            _loc2_ = §^!T§.getItemByName("Button_Level" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            (§^!T§.getItemByName("Button_Level" + _loc1_) as §]"%§).setEnabled(true,true);
            if(§2P§.§0!a§(HighscoreSidebar.§#!D§[_loc1_ - 1]))
            {
               (§^!T§.getItemByName("Button_Level" + _loc1_) as §]"%§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§]!p§[_loc1_ - 1];
               _loc3_ = § !4§.§%"7§.§@D§.userProgress.§1]§(HighscoreSidebar.§#!D§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (§^!T§.getItemByName("Button_Level" + _loc1_) as §]"%§).mClip.useHandCursor = false;
               (§^!T§.getItemByName("Button_Level" + _loc1_) as §]"%§).setEnabled(false,true);
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§]!p§[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.§<&§("1-1");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C1_LEVEL_2":
               this.§<&§("1-2");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C1_LEVEL_3":
               this.§<&§("1-3");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C1_LEVEL_4":
               this.§<&§("1-4");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C1_LEVEL_5":
               this.§<&§("1-5");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C2_LEVEL_1":
               this.§<&§("2-1");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C2_LEVEL_2":
               this.§<&§("2-2");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C2_LEVEL_3":
               this.§<&§("2-3");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C2_LEVEL_4":
               this.§<&§("2-4");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "C2_LEVEL_5":
               this.§<&§("2-5");
               §>D§.§9!q§("Menu_Confirm");
               break;
            case "SUBMIT_CODE":
               this.§0!h§();
               §>D§.§9!q§("Menu_Confirm");
         }
      }
      
      private function §<&§(param1:String) : void
      {
         if(§2P§.§0!a§(param1))
         {
            §4a§.loadLevel(param1);
            §7"6§(StateCutScene.§8"%§);
         }
      }
      
      private function §0!h§() : void
      {
         var _loc1_:§7!&§ = this.§ !h§;
         var _loc2_:String = _loc1_.getText();
         this.§=!;§.§0!h§(_loc2_);
      }
      
      private function §<A§(param1:§@,§) : void
      {
         var _loc2_:int = 0;
         if(§2P§.§[!$§)
         {
            for each(_loc2_ in §2P§.§[!$§.§+[§())
            {
               this.§ +§();
            }
         }
         this.§0! §();
         this.§1N§();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §@"#§.§,2§.updateTextFields(§^!T§.container,"StateEpisodeSelection");
      }
      
      private function § +§() : void
      {
         this.§4M§.setVisibility(false);
      }
      
      private function §@!F§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            this.§0!h§();
            return;
         }
      }
      
      private function §7!G§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§0!h§();
            return;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§^!D§ = null;
         super.update(param1);
         for each(_loc2_ in this.§2"6§)
         {
            _loc2_.update(param1);
         }
      }
      
      private function §1N§() : void
      {
         this.§#p§ = new Timer(100);
         this.§<g§ = 0;
         this.§#p§.addEventListener(TimerEvent.TIMER,this.§1T§);
         this.§#p§.start();
      }
      
      private function §1!C§(param1:MovieClip, param2:int) : void
      {
         this.§2^§ = new §^!D§(AngryBirdsCustom.§1"&§,AngryBirdsCustom.§`!,§,param1.x,param1.y,§^!D§.§2k§,param2);
         §^!T§.addChild(this.§2^§);
         this.§2"6§.push(this.§2^§);
      }
      
      private function §8!Z§() : void
      {
         var _loc1_:§^!D§ = null;
         if(this.§#p§)
         {
            this.§#p§.stop();
            this.§#p§.removeEventListener(TimerEvent.TIMER,this.§1T§);
         }
         for each(_loc1_ in this.§2"6§)
         {
            if(§^!T§.contains(_loc1_))
            {
               §^!T§.removeChild(_loc1_);
            }
            _loc1_.§,!#§();
         }
         this.§2"6§ = new Vector.<§^!D§>();
      }
      
      private function §1T§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§<g§ == 0)
         {
            _loc2_ = this.§4M§.mClip;
            this.§1!C§(_loc2_,40);
         }
         else
         {
            this.§#p§.stop();
         }
         ++this.§<g§;
      }
   }
}
