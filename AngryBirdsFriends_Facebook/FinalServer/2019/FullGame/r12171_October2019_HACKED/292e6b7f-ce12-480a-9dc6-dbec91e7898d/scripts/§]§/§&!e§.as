package §]§
{
   import § "L§.§1"r§;
   import § #+§.§&#F§;
   import § $0§.§5R§;
   import §";§.§false§;
   import §#"4§.§2"M§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §#$?§.§7!b§;
   import §#g§.§!P§;
   import §+`§.§%"q§;
   import §,#,§.§=#o§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §7#$§.§3!,§;
   import §7#$§.§8$%§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.EmbedPopup;
   import §?Q§.FirstTimePayerPopup;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import §`D§.TabbedShopPopup;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §&!e§ extends §>"d§ implements §2"M§, §1k§
   {
      
      private static var §&!g§:uint = 0;
       
      
      protected var §<"#§:Array;
      
      private var §?#O§:FirstTimePayerPopup;
      
      private const §9#I§:int = 5;
      
      private var § !;§:MovieClip;
      
      private var §0!!§:§&#F§;
      
      private var §4u§:Number = NaN;
      
      private var §,!!§:int = 0;
      
      public function §&!e§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         this.§<"#§ = [];
         super(param1,param2,param3,param4);
         this.§0!!§ = §&#F§.§+!,§;
      }
      
      override protected function getViewXML() : XML
      {
         return §false§.§4#;§.Views.View_LevelEndFailRio[0];
      }
      
      override protected function init() : void
      {
         super.init();
         this.§4u§ = (§;!w§.getItemByName("Button_Menu") as §1"r§).y;
         §;!w§.getItemByName("Button_Fullscreen").setVisibility(false);
         §;!w§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
         this.§<"#§.push((§;!w§.getItemByName("Button_Menu") as §1"r§).x);
         this.§<"#§.push((§;!w§.getItemByName("Button_Replay") as §1"r§).x);
         this.§<"#§.push((§;!w§.getItemByName("Button_MightyEagle") as §1"r§).x);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§,$5§);
         §]$?§.§2#§.background.stopAmbientSound();
         §;!w§.getItemByName("Button_FreePowerups").setVisibility(§@z§.§ !D§.§0x§.§##[§);
         var _loc2_:String = this.getNextIdentifier();
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().name;
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc2_ == null)
         {
            §;!w§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §<"G§.trackPageView(this,this.§4!G§(),§<"G§.§3!#§);
         §3";§.§#"'§().§7g§(false,this.§4!G§(),this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§]$?§.§2#§.slingshot.§^"]§() - §]$?§.§2#§.slingshot.§4#$§(),§]$?§.§2#§.slingshot.§^"]§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(this.§4!G§()),(§]$?§.§2#§ as §!P§).§-!3§(),§]$?§.§;r§.getScore(),false);
         this.§7"w§();
         this.§9]§();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            if(param1.keyCode == Keyboard.RIGHT)
            {
               this.§`#9§();
            }
         }
      }
      
      private function §`#9§() : void
      {
         if(this.§ !;§ == null)
         {
            this.§ !;§ = §;!w§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc2_:§^"C§ = §;!w§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §;!w§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§ !;§.visible = true;
         var _loc5_:Number = this.§4u§;
         ++this.§,!!§;
         if(this.§,!!§ >= this.§0!!§.§%!H§)
         {
            this.§,!!§ = 0;
         }
         this.§ !;§.TF.text = this.§0!!§.§7!E§(this.§,!!§);
         var _loc6_:§1"r§ = §;!w§.getItemByName("Button_Replay") as §1"r§;
         (§;!w§.getItemByName("Button_NextLevel") as §1"r§).y = _loc5_;
         (§;!w§.getItemByName("Button_CutScene") as §1"r§).y = _loc5_;
         (§;!w§.getItemByName("Button_MightyEagle") as §1"r§).y = _loc5_;
         (§;!w§.getItemByName("Button_Menu") as §1"r§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      private function §7"w§() : void
      {
         if(this.§ !;§ == null)
         {
            this.§ !;§ = §;!w§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc1_:Boolean = false;
         if(§&!g§ % this.§9#I§ == 0)
         {
            _loc1_ = true;
         }
         ++§&!g§;
         var _loc2_:§^"C§ = §;!w§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §;!w§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§ !;§.visible = _loc1_;
         var _loc5_:Number = this.§4u§;
         if(_loc1_)
         {
            this.§ !;§.TF.text = this.§0!!§.§;#U§();
         }
         else
         {
            _loc5_ += 75;
         }
         var _loc6_:§1"r§ = §;!w§.getItemByName("Button_Replay") as §1"r§;
         (§;!w§.getItemByName("Button_NextLevel") as §1"r§).y = _loc5_;
         (§;!w§.getItemByName("Button_CutScene") as §1"r§).y = _loc5_;
         (§;!w§.getItemByName("Button_MightyEagle") as §1"r§).y = _loc5_;
         (§;!w§.getItemByName("Button_Menu") as §1"r§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      override public function deActivate() : void
      {
         if(this.§?#O§)
         {
            this.§?#O§.removeEventListener(FirstTimePayerPopup.§7"S§,this.§7"m§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               break;
            case "SHOP":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§+$>§();
               break;
            case "SHARE_DEFAULT":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §7!b§.§7@§("shareDefault",this.§4!G§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §8$%§).§0"<§(this.§4!G§()),0,false);
               break;
            case "EMBED":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§9!%§(this.§4!G§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §8$%§).§0"<§(this.§4!G§()),§]$?§.§;r§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.§2!w§();
         }
      }
      
      protected function §+$>§() : void
      {
         var _loc1_:TabbedShopPopup = new TabbedShopPopup(§@#D§.NORMAL,§5R§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §9!%§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§@#D§.NORMAL,§5R§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §2!w§() : void
      {
         this.§?#O§ = new FirstTimePayerPopup(§@#D§.NORMAL,§5R§.TOP);
         this.§?#O§.addEventListener(FirstTimePayerPopup.§7"S§,this.§7"m§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§?#O§);
      }
      
      protected function §7"m§(param1:Event) : void
      {
         this.§?#O§.removeEventListener(FirstTimePayerPopup.§7"S§,this.§7"m§);
         §;!w§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§3!,§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §!=§.§!^§)
         {
            _loc1_ = §4#§.STATE_NAME;
         }
         else if(_loc2_.name == §,x§.§0Y§)
         {
            _loc1_ = §,x§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §#!$§.STATE_NAME;
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§-m§;
      }
      
      public function §4!G§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getNextIdentifier() : String
      {
         return mLevelManager.getNextLevelId();
      }
      
      private function get dataModel() : §=#o§
      {
         return §=#o§(§@z§.§ !D§.dataModel);
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      protected function §9]§() : void
      {
         § b§.§#! §();
         § b§.playSound("LevelFailedPigs1","ChannelMisc");
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
