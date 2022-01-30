package §,#§
{
   import §!"+§.§2!H§;
   import §"!G§.§3!f§;
   import §%f§.§[@§;
   import §&!>§.§2!V§;
   import §2X§.§8!=§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;"+§.§"!I§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §=0§.HighscoreSidebar;
   import §=b§.§+!'§;
   import §>P§.§,3§;
   import §^t§.§4!C§;
   import com.angrybirds.§4"6§;
   import com.angrybirds.utils.§3!v§;
   import com.angrybirds.utils.§="0§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §'!&§ extends §@!4§
   {
      
      public static const §'u§:String = "LevelSelectionState";
       
      
      private var §#!q§:§3!v§;
      
      private var §^x§:§"!I§;
      
      private var §;g§:§^!i§;
      
      private var §#?§:§+!'§;
      
      private var §5![§:Vector.<§+!'§>;
      
      private var §&!n§:Timer;
      
      private var §1!y§:int;
      
      public function §'!&§(param1:§3"&§, param2:§3!f§, param3:§2!H§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = null;
         var _loc2_:String = (§-O§.§5!1§ as AngryBirdsCustom).§;J§.§"!X§(§[@§.§"e§.§]f§()).brand;
         if(_loc2_ == §8!=§.§^2§)
         {
            _loc1_ = AngryBirdsCustom.§3!z§(§8!1§.§31§.Views.ViewLevelSelectionCustomNesquik[0]);
         }
         else if(_loc2_ == §8!=§.§3!V§)
         {
            _loc1_ = AngryBirdsCustom.§3!z§(§8!1§.§31§.Views.ViewLevelSelectionCustomChocapic[0]);
         }
         else if(_loc2_ == §8!=§.§-!R§)
         {
            _loc1_ = AngryBirdsCustom.§3!z§(§8!1§.§31§.Views.ViewLevelSelectionCustomKokoKrunch[0]);
         }
         else
         {
            _loc1_ = AngryBirdsCustom.§3!z§(§8!1§.§31§.Views.ViewLevelSelectionCustom[0]);
         }
         return _loc1_;
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
         this.§5![§ = new Vector.<§+!'§>();
      }
      
      override public function activate(param1:String) : void
      {
         this.init();
         super.activate(param1);
         §4"6§.§;!k§.§7!X§(false);
         §-O§.§5!1§.§-6§.closeAllPopups();
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!b§(true);
         (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§+;§(true);
         this.§3[§();
         this.§#!q§ = new §3!v§();
         this.§#!q§.addEventListener(§="0§.§+c§,this.§3F§);
         this.§^x§ = (§^!6§.container.getItemByName("Container_CodeInputBox") as §^!i§).getItemByName("TextField_InputCode") as §"!I§;
         this.§^x§.§6s§.addEventListener(KeyboardEvent.KEY_UP,this.§+w§);
         this.§^x§.§6s§.maxChars = 10;
         this.§-A§();
         this.updateLocalization();
         AngryBirdsCustom.§"-§();
         §!3§.resetCurrentLevel();
         §!3§.resetPreviousLevel();
      }
      
      private function §-A§() : void
      {
         var _loc1_:int = 0;
         this.§;g§ = §^!6§.container.getItemByName("Container_CodeInputBox") as §^!i§;
         this.§;g§.setVisibility(true);
         for each(_loc1_ in §2!V§.§!!?§.§#!a§())
         {
            this.§[!9§();
         }
      }
      
      override public function deActivate() : void
      {
         this.§#!q§.removeEventListener(§="0§.§+c§,this.§3F§);
         this.§^x§.setText("");
         this.§^x§.§6s§.removeEventListener(KeyboardEvent.KEY_UP,this.§+w§);
         this.§=!5§();
         super.deActivate();
      }
      
      private function §3[§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§9K§.length)
         {
            _loc2_ = §^!6§.getItemByName("Button_Level" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            (§^!6§.getItemByName("Button_Level" + _loc1_) as §9!M§).setEnabled(true,true);
            if(§2!V§.§"L§(HighscoreSidebar.§9K§[_loc1_ - 1]))
            {
               (§^!6§.getItemByName("Button_Level" + _loc1_) as §9!M§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§?X§[_loc1_ - 1];
               _loc3_ = §-O§.§5!1§.§]u§.userProgress.§<!8§(HighscoreSidebar.§9K§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (§^!6§.getItemByName("Button_Level" + _loc1_) as §9!M§).mClip.useHandCursor = false;
               (§^!6§.getItemByName("Button_Level" + _loc1_) as §9!M§).setEnabled(false,true);
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§?X§[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.§0!§("1-1");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C1_LEVEL_2":
               this.§0!§("1-2");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C1_LEVEL_3":
               this.§0!§("1-3");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C1_LEVEL_4":
               this.§0!§("1-4");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C1_LEVEL_5":
               this.§0!§("1-5");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C2_LEVEL_1":
               this.§0!§("2-1");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C2_LEVEL_2":
               this.§0!§("2-2");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C2_LEVEL_3":
               this.§0!§("2-3");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C2_LEVEL_4":
               this.§0!§("2-4");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "C2_LEVEL_5":
               this.§0!§("2-5");
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "SUBMIT_CODE":
               this.§6! §();
               §]d§.§^!J§("Menu_Confirm");
               break;
            case "OPEN_FAQ":
               this.§,! §();
               §]d§.§^!J§("Menu_Confirm");
         }
      }
      
      private function §,! §() : void
      {
         §4!C§.§6'§("onFlashOpenFaq");
      }
      
      private function §0!§(param1:String) : void
      {
         if(§2!V§.§"L§(param1))
         {
            §!3§.loadLevel(param1);
            §'"6§(StateCutScene.§'u§);
         }
      }
      
      private function §6! §() : void
      {
         var _loc1_:§"!I§ = this.§^x§;
         var _loc2_:String = _loc1_.getText();
         this.§#!q§.§6! §(_loc2_);
      }
      
      private function §3F§(param1:§="0§) : void
      {
         var _loc2_:int = 0;
         if(§2!V§.§!!?§)
         {
            for each(_loc2_ in §2!V§.§!!?§.§#!a§())
            {
               this.§[!9§();
            }
         }
         this.§3[§();
         this.§+d§();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §[@§.§"e§.updateTextFields(§^!6§.container,"StateEpisodeSelection");
      }
      
      private function §[!9§() : void
      {
         this.§;g§.setVisibility(false);
      }
      
      private function §#"$§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            this.§6! §();
            return;
         }
      }
      
      private function §+w§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§6! §();
            return;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§+!'§ = null;
         super.update(param1);
         for each(_loc2_ in this.§5![§)
         {
            _loc2_.update(param1);
         }
      }
      
      private function §+d§() : void
      {
         this.§&!n§ = new Timer(100);
         this.§1!y§ = 0;
         this.§&!n§.addEventListener(TimerEvent.TIMER,this.§@!1§);
         this.§&!n§.start();
      }
      
      private function §#"&§(param1:MovieClip, param2:int) : void
      {
         this.§#?§ = new §+!'§(AngryBirdsCustom.§<v§,AngryBirdsCustom.§-v§,param1.x,param1.y,§+!'§.§0!K§,param2);
         §^!6§.addChild(this.§#?§);
         this.§5![§.push(this.§#?§);
      }
      
      private function §=!5§() : void
      {
         var _loc1_:§+!'§ = null;
         if(this.§&!n§)
         {
            this.§&!n§.stop();
            this.§&!n§.removeEventListener(TimerEvent.TIMER,this.§@!1§);
         }
         for each(_loc1_ in this.§5![§)
         {
            if(§^!6§.contains(_loc1_))
            {
               §^!6§.removeChild(_loc1_);
            }
            _loc1_.§6T§();
         }
         this.§5![§ = new Vector.<§+!'§>();
      }
      
      private function §@!1§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§1!y§ == 0)
         {
            _loc2_ = this.§;g§.mClip;
            this.§#"&§(_loc2_,40);
         }
         else
         {
            this.§&!n§.stop();
         }
         ++this.§1!y§;
      }
   }
}
