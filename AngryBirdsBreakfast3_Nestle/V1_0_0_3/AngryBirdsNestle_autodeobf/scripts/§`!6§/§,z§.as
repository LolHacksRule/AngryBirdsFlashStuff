package §`!6§
{
   import § !H§.§0!m§;
   import §!!<§.§-"4§;
   import §&!'§.§3!0§;
   import §-!F§.§[!Q§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §3!!§.native;
   import §<[§.HighscoreSidebar;
   import §=X§.§3j§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import com.angrybirds.utils.§9$§;
   import com.angrybirds.utils.§]"!§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §,z§ extends §-!c§
   {
      
      public static const §]O§:String = "LevelSelectionState";
       
      
      private var §^!q§:§]"!§;
      
      private var §=!r§:native;
      
      private var §[3§:§5" §;
      
      private var §2!k§:§3!0§;
      
      private var §#<§:Vector.<§3!0§>;
      
      private var §@!w§:Timer;
      
      private var §&w§:int;
      
      public function §,z§(param1:§5l§, param2:§-!<§, param3:§-"4§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = null;
         var _loc2_:String = (§&N§.§#Y§ as AngryBirdsCustom).§7!J§.§ "%§(§[!Q§.§=J§.§%w§()).brand;
         if(_loc2_ == "nesquik")
         {
            _loc1_ = AngryBirdsCustom.§5!g§(§"!j§.§3=§.Views.ViewLevelSelectionCustomNesquik[0]);
         }
         else if(_loc2_ == "chocapic")
         {
            _loc1_ = AngryBirdsCustom.§5!g§(§"!j§.§3=§.Views.ViewLevelSelectionCustomChocapic[0]);
         }
         else if(_loc2_ == "koko_krunch")
         {
            _loc1_ = AngryBirdsCustom.§5!g§(§"!j§.§3=§.Views.ViewLevelSelectionCustomKokoKrunch[0]);
         }
         else
         {
            _loc1_ = AngryBirdsCustom.§5!g§(§"!j§.§3=§.Views.ViewLevelSelectionCustom[0]);
         }
         return _loc1_;
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
         this.§#<§ = new Vector.<§3!0§>();
      }
      
      override public function activate(param1:String) : void
      {
         this.init();
         super.activate(param1);
         §4!l§.§,!8§.§&!L§(false);
         §&N§.§#Y§.§@!H§.closeAllPopups();
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"$§(true);
         (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§,v§(true);
         this.§"2§();
         this.§^!q§ = new §]"!§();
         this.§^!q§.addEventListener(§9$§.§1"5§,this.§6-§);
         this.§=!r§ = (§!^§.container.getItemByName("Container_CodeInputBox") as §5" §).getItemByName("TextField_InputCode") as native;
         this.§=!r§.§&!K§.addEventListener(TextEvent.TEXT_INPUT,this.§??§);
         this.§=!r§.§&!K§.maxChars = 10;
         this.§=E§();
         this.updateLocalization();
         AngryBirdsCustom.§''§();
         §^!§.resetCurrentLevel();
         §^!§.resetPreviousLevel();
      }
      
      private function §=E§() : void
      {
         var _loc1_:int = 0;
         this.§[3§ = §!^§.container.getItemByName("Container_CodeInputBox") as §5" §;
         this.§[3§.setVisibility(true);
         for each(_loc1_ in §3j§.§0!i§.§7!>§())
         {
            this.§%![§();
         }
      }
      
      override public function deActivate() : void
      {
         this.§^!q§.removeEventListener(§9$§.§1"5§,this.§6-§);
         this.§=!r§.setText("");
         this.§=!r§.§&!K§.removeEventListener(TextEvent.TEXT_INPUT,this.§??§);
         this.§5w§();
         super.deActivate();
      }
      
      private function §"2§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§'x§.length)
         {
            _loc2_ = §!^§.getItemByName("Button_Level" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            (§!^§.getItemByName("Button_Level" + _loc1_) as §?v§).setEnabled(true,true);
            if(§3j§.§@z§(HighscoreSidebar.§'x§[_loc1_ - 1]))
            {
               (§!^§.getItemByName("Button_Level" + _loc1_) as §?v§).scaleOnMouseOver = true;
               (§!^§.getItemByName("Button_Level" + _loc1_) as §?v§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§1!`§[_loc1_ - 1];
               _loc3_ = §&N§.§#Y§.§`"$§.userProgress.§7?§(HighscoreSidebar.§'x§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (§!^§.getItemByName("Button_Level" + _loc1_) as §?v§).scaleOnMouseOver = false;
               (§!^§.getItemByName("Button_Level" + _loc1_) as §?v§).mClip.useHandCursor = false;
               (§!^§.getItemByName("Button_Level" + _loc1_) as §?v§).setEnabled(false,true);
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§1!`§[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.§%! §("1-1");
               break;
            case "C1_LEVEL_2":
               this.§%! §("1-2");
               break;
            case "C1_LEVEL_3":
               this.§%! §("1-3");
               break;
            case "C1_LEVEL_4":
               this.§%! §("1-4");
               break;
            case "C1_LEVEL_5":
               this.§%! §("1-5");
               break;
            case "C2_LEVEL_1":
               this.§%! §("2-1");
               break;
            case "C2_LEVEL_2":
               this.§%! §("2-2");
               break;
            case "C2_LEVEL_3":
               this.§%! §("2-3");
               break;
            case "C2_LEVEL_4":
               this.§%! §("2-4");
               break;
            case "C2_LEVEL_5":
               this.§%! §("2-5");
               break;
            case "SUBMIT_CODE":
               this.§3!#§();
               break;
            case "OPEN_FAQ":
               this.§^A§();
         }
      }
      
      private function §^A§() : void
      {
         §0!m§.§<Q§("onFlashOpenFaq");
      }
      
      private function §%! §(param1:String) : void
      {
         if(§3j§.§@z§(param1))
         {
            §^!§.loadLevel(param1);
            §8=§(StateCutScene.§]O§);
         }
      }
      
      private function §3!#§() : void
      {
         var _loc1_:native = this.§=!r§;
         var _loc2_:String = _loc1_.getText();
         this.§^!q§.§3!#§(_loc2_);
      }
      
      private function §6-§(param1:§9$§) : void
      {
         var _loc2_:int = 0;
         if(§3j§.§0!i§)
         {
            for each(_loc2_ in §3j§.§0!i§.§7!>§())
            {
               this.§%![§();
            }
         }
         this.§"2§();
         this.§>!V§();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §[!Q§.§=J§.updateTextFields(§!^§.container,"StateEpisodeSelection");
      }
      
      private function §%![§() : void
      {
         this.§[3§.setVisibility(false);
      }
      
      private function §??§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            this.§3!#§();
            return;
         }
      }
      
      private function §8!c§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§3!#§();
            return;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§3!0§ = null;
         super.update(param1);
         for each(_loc2_ in this.§#<§)
         {
            _loc2_.update(param1);
         }
      }
      
      private function §>!V§() : void
      {
         this.§@!w§ = new Timer(100);
         this.§&w§ = 0;
         this.§@!w§.addEventListener(TimerEvent.TIMER,this.§?!l§);
         this.§@!w§.start();
      }
      
      private function §%!J§(param1:MovieClip, param2:int) : void
      {
         this.§2!k§ = new §3!0§(AngryBirdsCustom.§1M§,AngryBirdsCustom.§^!y§,param1.x,param1.y,§3!0§.§2o§,param2);
         §!^§.addChild(this.§2!k§);
         this.§#<§.push(this.§2!k§);
      }
      
      private function §5w§() : void
      {
         var _loc1_:§3!0§ = null;
         if(this.§@!w§)
         {
            this.§@!w§.stop();
            this.§@!w§.removeEventListener(TimerEvent.TIMER,this.§?!l§);
         }
         for each(_loc1_ in this.§#<§)
         {
            if(§!^§.contains(_loc1_))
            {
               §!^§.removeChild(_loc1_);
            }
            _loc1_.§3!<§();
         }
         this.§#<§ = new Vector.<§3!0§>();
      }
      
      private function §?!l§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§&w§ == 0)
         {
            _loc2_ = this.§[3§.mClip;
            this.§%!J§(_loc2_,40);
         }
         else
         {
            this.§@!w§.stop();
         }
         ++this.§&w§;
      }
   }
}
