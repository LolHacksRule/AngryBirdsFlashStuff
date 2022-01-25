package §#!]§
{
   import §!"§.§^!7§;
   import §!R§.§#!L§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §+T§.§'o§;
   import §2!s§.§0l§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §7"6§.§^!_§;
   import §9!!§.§2W§;
   import §;X§.§4!@§;
   import §="5§.HighscoreSidebar;
   import §`!s§.§^2§;
   import com.angrybirds.utils.§%x§;
   import com.angrybirds.utils.§&X§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   
   public class §[!d§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelSelectionState";
       
      
      private var §[<§:§&X§;
      
      private var §',§:§&0§;
      
      private var §?!T§:§%n§;
      
      private var §>!h§:§'o§;
      
      private var §6V§:Vector.<§'o§>;
      
      private var §;$§:Timer;
      
      private var §`!y§:int;
      
      public function §[!d§(param1:§-g§, param2:§^!_§, param3:§0l§, param4:Boolean = true, param5:String = "LevelSelectionState")
      {
         super(param1,param4,param5,param2);
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = null;
         var _loc2_:String = (§-!2§.§7O§ as AngryBirdsCustom).§-"'§.§=!!§(§^2§.§&!;§.§]T§()).brand;
         if(_loc2_ == §2W§.§`!F§)
         {
            _loc1_ = AngryBirdsCustom.§6-§(§%!-§.§#t§.Views.ViewLevelSelectionCustomNesquik[0]);
         }
         else if(_loc2_ == §2W§.§7!l§)
         {
            _loc1_ = AngryBirdsCustom.§6-§(§%!-§.§#t§.Views.ViewLevelSelectionCustomChocapic[0]);
         }
         else if(_loc2_ == §2W§.§]!m§)
         {
            _loc1_ = AngryBirdsCustom.§6-§(§%!-§.§#t§.Views.ViewLevelSelectionCustomKokoKrunch[0]);
         }
         else
         {
            _loc1_ = AngryBirdsCustom.§6-§(§%!-§.§#t§.Views.ViewLevelSelectionCustom[0]);
         }
         return _loc1_;
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
         this.§6V§ = new Vector.<§'o§>();
      }
      
      override public function activate(param1:String) : void
      {
         this.init();
         super.activate(param1);
         §`i§.§&!L§.§2!J§(false);
         §-!2§.§7O§.§0!l§.closeAllPopups();
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§,!a§(true);
         (§-!2§.§7O§ as AngryBirdsCustom).§6!<§.§?!§(true);
         this.§+!5§();
         this.§[<§ = new §&X§();
         this.§[<§.addEventListener(§%x§.§8!Q§,this.§3l§);
         this.§',§ = (§4!q§.container.getItemByName("Container_CodeInputBox") as §%n§).getItemByName("TextField_InputCode") as §&0§;
         this.§',§.§"S§.addEventListener(KeyboardEvent.KEY_UP,this.§'D§);
         this.§',§.§"S§.maxChars = 10;
         this.§',§.§"S§.restrict = "a-zA-Z0-9\\";
         this.§[!w§();
         this.updateLocalization();
         AngryBirdsCustom.§>q§();
         §#n§.resetCurrentLevel();
         §#n§.resetPreviousLevel();
      }
      
      private function §[!w§() : void
      {
         var _loc1_:int = 0;
         this.§?!T§ = §4!q§.container.getItemByName("Container_CodeInputBox") as §%n§;
         this.§?!T§.setVisibility(true);
         for each(_loc1_ in §^!7§.§>!8§.§%!9§())
         {
            this.§-!H§();
         }
      }
      
      override public function deActivate() : void
      {
         this.§[<§.removeEventListener(§%x§.§8!Q§,this.§3l§);
         this.§',§.setText("");
         this.§',§.§"S§.removeEventListener(KeyboardEvent.KEY_UP,this.§'D§);
         this.§80§();
         super.deActivate();
      }
      
      private function §+!5§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§2z§.length)
         {
            _loc2_ = §4!q§.getItemByName("Button_Level" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            (§4!q§.getItemByName("Button_Level" + _loc1_) as § `§).setEnabled(true,true);
            if(§^!7§.§#!,§(HighscoreSidebar.§2z§[_loc1_ - 1]))
            {
               (§4!q§.getItemByName("Button_Level" + _loc1_) as § `§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§#!1§[_loc1_ - 1];
               _loc3_ = §-!2§.§7O§.§ !n§.userProgress.§-t§(HighscoreSidebar.§2z§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
            }
            else
            {
               (§4!q§.getItemByName("Button_Level" + _loc1_) as § `§).mClip.useHandCursor = false;
               (§4!q§.getItemByName("Button_Level" + _loc1_) as § `§).setEnabled(false,true);
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§#!1§[_loc1_ - 1];
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "C1_LEVEL_1":
               this.§=Q§("1-1");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C1_LEVEL_2":
               this.§=Q§("1-2");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C1_LEVEL_3":
               this.§=Q§("1-3");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C1_LEVEL_4":
               this.§=Q§("1-4");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C1_LEVEL_5":
               this.§=Q§("1-5");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C2_LEVEL_1":
               this.§=Q§("2-1");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C2_LEVEL_2":
               this.§=Q§("2-2");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C2_LEVEL_3":
               this.§=Q§("2-3");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C2_LEVEL_4":
               this.§=Q§("2-4");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "C2_LEVEL_5":
               this.§=Q§("2-5");
               §4!@§.§`!w§("Menu_Confirm");
               break;
            case "SUBMIT_CODE":
               this.§5!`§();
               §4!@§.§`!w§("Menu_Confirm");
         }
      }
      
      private function §=Q§(param1:String) : void
      {
         if(§^!7§.§#!,§(param1))
         {
            §#n§.loadLevel(param1);
            §]a§(StateCutScene.§]!y§);
         }
      }
      
      private function §5!`§() : void
      {
         var _loc1_:§&0§ = this.§',§;
         var _loc2_:String = _loc1_.getText();
         this.§[<§.§5!`§(_loc2_);
      }
      
      private function §3l§(param1:§%x§) : void
      {
         var _loc2_:int = 0;
         if(§^!7§.§>!8§)
         {
            for each(_loc2_ in §^!7§.§>!8§.§%!9§())
            {
               this.§-!H§();
            }
         }
         this.§+!5§();
         this.§;!y§();
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         §^2§.§&!;§.updateTextFields(§4!q§.container,"StateEpisodeSelection");
      }
      
      private function §-!H§() : void
      {
         this.§?!T§.setVisibility(false);
      }
      
      private function §]"2§(param1:TextEvent) : void
      {
         if(param1.text == "\n" || param1.text == "\r")
         {
            this.§5!`§();
            return;
         }
      }
      
      private function §'D§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§5!`§();
            return;
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§'o§ = null;
         super.update(param1);
         for each(_loc2_ in this.§6V§)
         {
            _loc2_.update(param1);
         }
      }
      
      private function §;!y§() : void
      {
         this.§;$§ = new Timer(100);
         this.§`!y§ = 0;
         this.§;$§.addEventListener(TimerEvent.TIMER,this.§3`§);
         this.§;$§.start();
      }
      
      private function §3&§(param1:MovieClip, param2:int) : void
      {
         this.§>!h§ = new §'o§(AngryBirdsCustom.§6#§,AngryBirdsCustom.§1k§,param1.x,param1.y,§'o§.§]![§,param2);
         §4!q§.addChild(this.§>!h§);
         this.§6V§.push(this.§>!h§);
      }
      
      private function §80§() : void
      {
         var _loc1_:§'o§ = null;
         if(this.§;$§)
         {
            this.§;$§.stop();
            this.§;$§.removeEventListener(TimerEvent.TIMER,this.§3`§);
         }
         for each(_loc1_ in this.§6V§)
         {
            if(§4!q§.contains(_loc1_))
            {
               §4!q§.removeChild(_loc1_);
            }
            _loc1_.§6!h§();
         }
         this.§6V§ = new Vector.<§'o§>();
      }
      
      private function §3`§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         if(this.§`!y§ == 0)
         {
            _loc2_ = this.§?!T§.mClip;
            this.§3&§(_loc2_,40);
         }
         else
         {
            this.§;$§.stop();
         }
         ++this.§`!y§;
      }
   }
}
