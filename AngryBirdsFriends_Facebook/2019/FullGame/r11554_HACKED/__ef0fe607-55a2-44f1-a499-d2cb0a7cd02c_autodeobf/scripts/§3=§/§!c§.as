package §3=§
{
   import § !D§.§4B§;
   import §!!?§.TabbedShopPopup;
   import §!§.§="D§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§[§;
   import §#M§.§<"c§;
   import §%#v§.§0"j§;
   import §&§.§&$"§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §3"G§.§16§;
   import §4!n§.§#$>§;
   import §4!n§.§'!,§;
   import §5!$§.§"S§;
   import §7#j§.§@"F§;
   import §;$5§.§9§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §?!N§.§%#§;
   import §?!N§.EmbedPopup;
   import §?!N§.FirstTimePayerPopup;
   import §]"'§.§@"%§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §!c§ extends §0K§ implements §0"+§, §="D§
   {
      
      private static var §`#u§:uint = 0;
       
      
      protected var §]#G§:Array;
      
      private var §9<§:FirstTimePayerPopup;
      
      private const §"#v§:int = 5;
      
      private var §6$+§:MovieClip;
      
      private var §-"V§:§&$"§;
      
      private var §9!G§:Number = NaN;
      
      private var §,!Y§:int = 0;
      
      public function §!c§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         this.§]#G§ = [];
         super(param1,param2,param3,param4);
         this.§-"V§ = §&$"§.§?q§;
      }
      
      override protected function getViewXML() : XML
      {
         return §0"j§.§-i§.Views.View_LevelEndFailRio[0];
      }
      
      override protected function init() : void
      {
         super.init();
         this.§9!G§ = (§<"`§.getItemByName("Button_Menu") as §"S§).y;
         §<"`§.getItemByName("Button_Fullscreen").setVisibility(false);
         §<"`§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
         this.§]#G§.push((§<"`§.getItemByName("Button_Menu") as §"S§).x);
         this.§]#G§.push((§<"`§.getItemByName("Button_Replay") as §"S§).x);
         this.§]#G§.push((§<"`§.getItemByName("Button_MightyEagle") as §"S§).x);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§=`§);
         §%"T§.§;`§.background.stopAmbientSound();
         §<"`§.getItemByName("Button_FreePowerups").setVisibility(§'"a§.§!!8§.§+!N§.§>_§);
         var _loc2_:String = this.getNextIdentifier();
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().name;
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc2_ == null)
         {
            §<"`§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §5"w§.trackPageView(this,this.§5!R§(),§5"w§.§"5§);
         §+$A§.§@"i§().§>e§(false,this.§5!R§(),this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§%"T§.§;`§.slingshot.§@$B§() - §%"T§.§;`§.slingshot.§17§(),§%"T§.§;`§.slingshot.§@$B§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(this.§5!R§()),(§%"T§.§;`§ as §4B§).§ #O§(),§%"T§.§+"M§.getScore(),false);
         this.§=!p§();
         this.§0w§();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            if(param1.keyCode == Keyboard.RIGHT)
            {
               this.§7B§();
            }
         }
      }
      
      private function §7B§() : void
      {
         if(this.§6$+§ == null)
         {
            this.§6$+§ = §<"`§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc2_:§#$>§ = §<"`§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §<"`§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§6$+§.visible = true;
         var _loc5_:Number = this.§9!G§;
         ++this.§,!Y§;
         if(this.§,!Y§ >= this.§-"V§.§?!T§)
         {
            this.§,!Y§ = 0;
         }
         this.§6$+§.TF.text = this.§-"V§.§'!-§(this.§,!Y§);
         var _loc6_:§"S§ = §<"`§.getItemByName("Button_Replay") as §"S§;
         (§<"`§.getItemByName("Button_NextLevel") as §"S§).y = _loc5_;
         (§<"`§.getItemByName("Button_CutScene") as §"S§).y = _loc5_;
         (§<"`§.getItemByName("Button_MightyEagle") as §"S§).y = _loc5_;
         (§<"`§.getItemByName("Button_Menu") as §"S§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      private function §=!p§() : void
      {
         if(this.§6$+§ == null)
         {
            this.§6$+§ = §<"`§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc1_:Boolean = false;
         if(§`#u§ % this.§"#v§ == 0)
         {
            _loc1_ = true;
         }
         ++§`#u§;
         var _loc2_:§#$>§ = §<"`§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §<"`§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§6$+§.visible = _loc1_;
         var _loc5_:Number = this.§9!G§;
         if(_loc1_)
         {
            this.§6$+§.TF.text = this.§-"V§.§,$>§();
         }
         else
         {
            _loc5_ += 75;
         }
         var _loc6_:§"S§ = §<"`§.getItemByName("Button_Replay") as §"S§;
         (§<"`§.getItemByName("Button_NextLevel") as §"S§).y = _loc5_;
         (§<"`§.getItemByName("Button_CutScene") as §"S§).y = _loc5_;
         (§<"`§.getItemByName("Button_MightyEagle") as §"S§).y = _loc5_;
         (§<"`§.getItemByName("Button_Menu") as §"S§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      override public function deActivate() : void
      {
         if(this.§9<§)
         {
            this.§9<§.removeEventListener(FirstTimePayerPopup.§2!>§,this.§"l§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               break;
            case "SHOP":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§4"Y§();
               break;
            case "SHARE_DEFAULT":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §@"F§.§^$#§("shareDefault",this.§5!R§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §,-§).§#6§(this.§5!R§()),0,false);
               break;
            case "EMBED":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§=4§(this.§5!R§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §,-§).§#6§(this.§5!R§()),§%"T§.§+"M§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.§,p§();
         }
      }
      
      protected function §4"Y§() : void
      {
         var _loc1_:TabbedShopPopup = new TabbedShopPopup(§%#§.NORMAL,§9#5§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §=4§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§%#§.NORMAL,§9#5§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §,p§() : void
      {
         this.§9<§ = new FirstTimePayerPopup(§%#§.NORMAL,§9#5§.TOP);
         this.§9<§.addEventListener(FirstTimePayerPopup.§2!>§,this.§"l§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§9<§);
      }
      
      protected function §"l§(param1:Event) : void
      {
         this.§9<§.removeEventListener(FirstTimePayerPopup.§2!>§,this.§"l§);
         §<"`§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§[#5§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §%"#§.§?S§)
         {
            _loc1_ = §&P§.STATE_NAME;
         }
         else if(_loc2_.name == §!!V§.§""W§)
         {
            _loc1_ = §!!V§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §8$8§.STATE_NAME;
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§1#&§;
      }
      
      public function §5!R§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getNextIdentifier() : String
      {
         return mLevelManager.getNextLevelId();
      }
      
      private function get dataModel() : §@"%§
      {
         return §@"%§(§'"a§.§!!8§.dataModel);
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      protected function §0w§() : void
      {
         §[#%§.§^L§();
         §[#%§.playSound("LevelFailedPigs1","ChannelMisc");
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
