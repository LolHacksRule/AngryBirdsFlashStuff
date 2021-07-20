package §2";§
{
   import § !j§.§4#c§;
   import §!#C§.§4!Q§;
   import §#,§.§ !>§;
   import §%!-§.§?l§;
   import §&!_§.§!!K§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §+#U§.§8"'§;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §0!s§.§]"Y§;
   import §1"l§.§`""§;
   import §5" §.TabbedShopPopup;
   import §8#K§.§3Z§;
   import §>2§.§"§;
   import §>z§.§#"l§;
   import §>z§.EmbedPopup;
   import §>z§.FirstTimePayerPopup;
   import §]C§.§ !+§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §="b§ extends §9#6§ implements §,!n§, §%!#§
   {
      
      private static var §-!"§:uint = 0;
       
      
      protected var §,d§:Array;
      
      private var §^!`§:FirstTimePayerPopup;
      
      private const §implements§:int = 5;
      
      private var §["9§:MovieClip;
      
      private var §-S§:§8"'§;
      
      private var § j§:Number = NaN;
      
      private var §#"C§:int = 0;
      
      public function §="b§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         this.§,d§ = [];
         super(param1,param2,param3,param4);
         this.§-S§ = §8"'§.§`"H§;
      }
      
      override protected function getViewXML() : XML
      {
         return §?l§.§3m§.Views.View_LevelEndFailRio[0];
      }
      
      override protected function init() : void
      {
         super.init();
         this.§ j§ = (§[$5§.getItemByName("Button_Menu") as § !>§).y;
         §[$5§.getItemByName("Button_Fullscreen").setVisibility(false);
         §[$5§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
         this.§,d§.push((§[$5§.getItemByName("Button_Menu") as § !>§).x);
         this.§,d§.push((§[$5§.getItemByName("Button_Replay") as § !>§).x);
         this.§,d§.push((§[$5§.getItemByName("Button_MightyEagle") as § !>§).x);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§2$?§);
         §7n§.§6#K§.background.stopAmbientSound();
         §[$5§.getItemByName("Button_FreePowerups").setVisibility(§ #v§.§1!!§.§&"6§.§5! §);
         var _loc2_:String = this.getNextIdentifier();
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().name;
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc2_ == null)
         {
            §[$5§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §0I§.trackPageView(this,this.§#"!§(),§0I§.§1!9§);
         §!!K§.§%#S§().§'D§(false,this.§#"!§(),this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§7n§.§6#K§.slingshot.§=!q§() - §7n§.§6#K§.slingshot.§;O§(),§7n§.§6#K§.slingshot.§=!q§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(this.§#"!§()),(§7n§.§6#K§ as §"#1§).§7$7§(),§7n§.§ "'§.getScore(),false);
         this.§?"%§();
         this.§ #A§();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            if(param1.keyCode == Keyboard.RIGHT)
            {
               this.§;"%§();
            }
         }
      }
      
      private function §;"%§() : void
      {
         if(this.§["9§ == null)
         {
            this.§["9§ = §[$5§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc2_:§8#=§ = §[$5§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §[$5§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§["9§.visible = true;
         var _loc5_:Number = this.§ j§;
         ++this.§#"C§;
         if(this.§#"C§ >= this.§-S§.§&#'§)
         {
            this.§#"C§ = 0;
         }
         this.§["9§.TF.text = this.§-S§.§6!A§(this.§#"C§);
         var _loc6_:§ !>§ = §[$5§.getItemByName("Button_Replay") as § !>§;
         (§[$5§.getItemByName("Button_NextLevel") as § !>§).y = _loc5_;
         (§[$5§.getItemByName("Button_CutScene") as § !>§).y = _loc5_;
         (§[$5§.getItemByName("Button_MightyEagle") as § !>§).y = _loc5_;
         (§[$5§.getItemByName("Button_Menu") as § !>§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      private function §?"%§() : void
      {
         if(this.§["9§ == null)
         {
            this.§["9§ = §[$5§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc1_:Boolean = false;
         if(§-!"§ % this.§implements§ == 0)
         {
            _loc1_ = true;
         }
         ++§-!"§;
         var _loc2_:§8#=§ = §[$5§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §[$5§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§["9§.visible = _loc1_;
         var _loc5_:Number = this.§ j§;
         if(_loc1_)
         {
            this.§["9§.TF.text = this.§-S§.§3"9§();
         }
         else
         {
            _loc5_ += 75;
         }
         var _loc6_:§ !>§ = §[$5§.getItemByName("Button_Replay") as § !>§;
         (§[$5§.getItemByName("Button_NextLevel") as § !>§).y = _loc5_;
         (§[$5§.getItemByName("Button_CutScene") as § !>§).y = _loc5_;
         (§[$5§.getItemByName("Button_MightyEagle") as § !>§).y = _loc5_;
         (§[$5§.getItemByName("Button_Menu") as § !>§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      override public function deActivate() : void
      {
         if(this.§^!`§)
         {
            this.§^!`§.removeEventListener(FirstTimePayerPopup.§]"]§,this.§'!#§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               break;
            case "SHOP":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§0z§();
               break;
            case "SHARE_DEFAULT":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               § !+§.§>$%§("shareDefault",this.§#"!§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §;#A§).§`!-§(this.§#"!§()),0,false);
               break;
            case "EMBED":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§&!P§(this.§#"!§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §;#A§).§`!-§(this.§#"!§()),§7n§.§ "'§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.§>#s§();
         }
      }
      
      protected function §0z§() : void
      {
         var _loc1_:TabbedShopPopup = new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §&!P§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§#"l§.NORMAL,§]"Y§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §>#s§() : void
      {
         this.§^!`§ = new FirstTimePayerPopup(§#"l§.NORMAL,§]"Y§.TOP);
         this.§^!`§.addEventListener(FirstTimePayerPopup.§]"]§,this.§'!#§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§^!`§);
      }
      
      protected function §'!#§(param1:Event) : void
      {
         this.§^!`§.removeEventListener(FirstTimePayerPopup.§]"]§,this.§'!#§);
         §[$5§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§ T§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §`"A§.§+#f§)
         {
            _loc1_ = §8!N§.STATE_NAME;
         }
         else if(_loc2_.name == §+!I§.§3"J§)
         {
            _loc1_ = §+!I§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §9#7§.STATE_NAME;
      }
      
      public function §;!=§() : String
      {
         return §0I§.§2!n§;
      }
      
      public function §#"!§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getNextIdentifier() : String
      {
         return mLevelManager.getNextLevelId();
      }
      
      private function get dataModel() : §4!Q§
      {
         return §4!Q§(§ #v§.§1!!§.dataModel);
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      protected function § #A§() : void
      {
         §3Z§.§3j§();
         §3Z§.playSound("LevelFailedPigs1","ChannelMisc");
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
