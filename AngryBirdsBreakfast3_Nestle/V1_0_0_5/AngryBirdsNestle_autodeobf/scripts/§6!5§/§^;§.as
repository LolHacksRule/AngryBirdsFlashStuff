package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §%z§.§?8§;
   import §&<§.§^!#§;
   import §+!5§.§#!>§;
   import §2W§.§+!d§;
   import §4!§.§-!q§;
   import §63§.§^!!§;
   import §8x§.§]"-§;
   import §@!6§.§3!5§;
   import §[!F§.§1c§;
   import §[!F§.§3j§;
   import §[!F§.§^!g§;
   import §]K§.HighscoreSidebar;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import com.angrybirds.utils.§>!R§;
   import com.angrybirds.utils.§super§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §^;§ extends §3!3§
   {
      
      public static const §7w§:String = "LevelSelectionState";
       
      
      private var §-!r§:§super§;
      
      private var §6!!§:§1c§;
      
      private var §3!^§:§3j§;
      
      private var §!!§:§#!>§;
      
      private var §["0§:Vector.<§#!>§>;
      
      private var §^d§:Timer;
      
      private var §;!_§:int;
      
      public function §^;§(param1:§ q§, param2:§>u§, param3:§?8§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = null;
         var _loc2_:String = (§-!I§.§[f§ as AngryBirdsCustom).§1!!§.§0!4§(§+!d§.§<"5§.§'!G§()).brand;
         if(_loc2_ == §-!q§.§@^§)
         {
            _loc1_ = AngryBirdsCustom.§>@§(§#p§.§'"0§.Views.ViewLevelSelectionCustomNesquik[0]);
         }
         else if(_loc2_ == §-!q§.§+"-§)
         {
            _loc1_ = AngryBirdsCustom.§>@§(§#p§.§'"0§.Views.ViewLevelSelectionCustomChocapic[0]);
         }
         else if(_loc2_ == §-!q§.§?s§)
         {
            _loc1_ = AngryBirdsCustom.§>@§(§#p§.§'"0§.Views.ViewLevelSelectionCustomKokoKrunch[0]);
         }
         else
         {
            _loc1_ = AngryBirdsCustom.§>@§(§#p§.§'"0§.Views.ViewLevelSelectionCustom[0]);
         }
         return _loc1_;
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
         this.§["0§ = new Vector.<§#!>§>();
      }
      
      override public function activate(param1:String) : void
      {
         this.init();
         super.activate(param1);
         §6!E§.§7I§.§'F§(false);
         §-!I§.§[f§.§@!C§.closeAllPopups();
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§4!y§(true);
         (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§70§(true);
         this.§["#§();
         this.§-!r§ = new §super§();
         this.§-!r§.addEventListener(§>!R§.§%!m§,this.§?"1§);
         this.§6!!§ = (§ !z§.container.getItemByName("Container_CodeInputBox") as §3j§).getItemByName("TextField_InputCode") as §1c§;
         this.§6!!§.§ e§.addEventListener(KeyboardEvent.KEY_UP,this.§7! §);
         this.§6!!§.§ e§.maxChars = 10;
         this.§';§();
         this.updateLocalization();
         AngryBirdsCustom.§[g§();
         §="4§.resetCurrentLevel();
         §="4§.resetPreviousLevel();
      }
      
      private function §';§() : void
      {
         var _loc1_:int = 0;
         this.§3!^§ = § !z§.container.getItemByName("Container_CodeInputBox") as §3j§;
         this.§3!^§.setVisibility(true);
         for each(_loc1_ in §^!!§.§]!P§.§5X§())
         {
            this.§5`§();
         }
      }
      
      override public function deActivate() : void
      {
         this.§-!r§.removeEventListener(§>!R§.§%!m§,this.§?"1§);
         this.§6!!§.setText("");
         this.§6!!§.§ e§.removeEventListener(KeyboardEvent.KEY_UP,this.§7! §);
         this.§-!@§();
         super.deActivate();
      }
      
      private function §["#§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§,!S§.length)
         {
            _loc2_ = § !z§.getItemByName("Button_Level" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            (§ !z§.getItemByName("Button_Level" + _loc1_) as §^!g§).setEnabled(true,true);
            if(§^!!§.§=!"§(HighscoreSidebar.§,!S§[_loc1_ - 1]))
            {
               (§ !z§.getItemByName("Button_Level" + _loc1_) as §^!g§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§?!'§[_loc1_ - 1];
               _loc3_ = §-!I§.§[f§.§?4§.userProgress.§`!E§(HighscoreSidebar.§,!S§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (§ !z§.getItemByName("Button_Level" + _loc1_) as §^!g§).mClip.useHandCursor = false;
               (§ !z§.getItemByName("Button_Level" + _loc1_) as §^!g§).setEnabled(false,true);
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§?!'§[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.§+!8§("1-1");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C1_LEVEL_2":
               this.§+!8§("1-2");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C1_LEVEL_3":
               this.§+!8§("1-3");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C1_LEVEL_4":
               this.§+!8§("1-4");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C1_LEVEL_5":
               this.§+!8§("1-5");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C2_LEVEL_1":
               this.§+!8§("2-1");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C2_LEVEL_2":
               this.§+!8§("2-2");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C2_LEVEL_3":
               this.§+!8§("2-3");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C2_LEVEL_4":
               this.§+!8§("2-4");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "C2_LEVEL_5":
               this.§+!8§("2-5");
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "SUBMIT_CODE":
               this.§1",§();
               §3!5§.§<!9§("Menu_Confirm");
               break;
            case "OPEN_FAQ":
               this.§2"'§();
               §3!5§.§<!9§("Menu_Confirm");
         }
      }
      
      private function §2"'§() : void
      {
         §]"-§.§6V§("onFlashOpenFaq");
      }
      
      private function §+!8§(param1:String) : void
      {
         if(§^!!§.§=!"§(param1))
         {
            §="4§.loadLevel(param1);
            §?n§(StateCutScene.§7w§);
         }
      }
      
      private function §1",§() : void
      {
         var _loc1_:§1c§ = this.§6!!§;
         var _loc2_:String = _loc1_.getText();
         this.§-!r§.§1",§(_loc2_);
      }
      
      private function §?"1§(param1:§>!R§) : void
      {
         var _loc2_:int = 0;
         if(§^!!§.§]!P§)
         {
            for each(_loc2_ in §^!!§.§]!P§.§5X§())
            {
               this.§5`§();
            }
         }
         this.§["#§();
         this.§+O§();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §+!d§.§<"5§.updateTextFields(§ !z§.container,"StateEpisodeSelection");
      }
      
      private function §5`§() : void
      {
         this.§3!^§.setVisibility(false);
      }
      
      private function §+6§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            this.§1",§();
            return;
         }
      }
      
      private function §7! §(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§1",§();
            return;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§#!>§ = null;
         super.update(param1);
         for each(_loc2_ in this.§["0§)
         {
            _loc2_.update(param1);
         }
      }
      
      private function §+O§() : void
      {
         this.§^d§ = new Timer(100);
         this.§;!_§ = 0;
         this.§^d§.addEventListener(TimerEvent.TIMER,this.§-6§);
         this.§^d§.start();
      }
      
      private function §^`§(param1:MovieClip, param2:int) : void
      {
         this.§!!§ = new §#!>§(AngryBirdsCustom.§"4§,AngryBirdsCustom.§<N§,param1.x,param1.y,§#!>§.§>!P§,param2);
         § !z§.addChild(this.§!!§);
         this.§["0§.push(this.§!!§);
      }
      
      private function §-!@§() : void
      {
         var _loc1_:§#!>§ = null;
         if(this.§^d§)
         {
            this.§^d§.stop();
            this.§^d§.removeEventListener(TimerEvent.TIMER,this.§-6§);
         }
         for each(_loc1_ in this.§["0§)
         {
            if(§ !z§.contains(_loc1_))
            {
               § !z§.removeChild(_loc1_);
            }
            _loc1_.§[!R§();
         }
         this.§["0§ = new Vector.<§#!>§>();
      }
      
      private function §-6§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§;!_§ == 0)
         {
            _loc2_ = this.§3!^§.mClip;
            this.§^`§(_loc2_,40);
         }
         else
         {
            this.§^d§.stop();
         }
         ++this.§;!_§;
      }
   }
}
