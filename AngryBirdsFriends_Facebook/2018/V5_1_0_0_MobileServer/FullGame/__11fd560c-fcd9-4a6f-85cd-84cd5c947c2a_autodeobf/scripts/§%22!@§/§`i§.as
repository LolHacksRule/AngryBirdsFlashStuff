package §"!@§
{
   import § %§.§1Q§;
   import §%!x§.§^!K§;
   import §&"`§.TabbedShopPopup;
   import §&g§.§#D§;
   import §0#m§.§8#§;
   import §1!=§.§^"U§;
   import §2G§.§#"8§;
   import §3#T§.§'§;
   import §3#T§.§@"!§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §;$3§.§?!0§;
   import §<h§.§>"0§;
   import §?P§.EmbedPopup;
   import §?P§.FirstTimePayerPopup;
   import §?P§.§]"$§;
   import §@!M§.§!"p§;
   import §@0§.§2$2§;
   import §`7§.§ try§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §`i§ extends §;$+§ implements §7E§, §8#§
   {
      
      private static var §6"B§:uint = 0;
       
      
      protected var §5!h§:Array;
      
      private var §!$%§:FirstTimePayerPopup;
      
      private const §?#C§:int = 5;
      
      private var §>W§:MovieClip;
      
      private var §@?§:§#D§;
      
      private var §&#Q§:Number = NaN;
      
      private var §5">§:int = 0;
      
      public function §`i§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         this.§5!h§ = [];
         super(param1,param2,param3,param4);
         this.§@?§ = §#D§.§6!§;
      }
      
      override protected function getViewXML() : XML
      {
         return §1Q§.§5T§.Views.View_LevelEndFailRio[0];
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&#Q§ = (§`!H§.getItemByName("Button_Menu") as §>"0§).y;
         §`!H§.getItemByName("Button_Fullscreen").setVisibility(false);
         §`!H§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
         this.§5!h§.push((§`!H§.getItemByName("Button_Menu") as §>"0§).x);
         this.§5!h§.push((§`!H§.getItemByName("Button_Replay") as §>"0§).x);
         this.§5!h§.push((§`!H§.getItemByName("Button_MightyEagle") as §>"0§).x);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§0"H§);
         §3#U§.§#$4§.background.stopAmbientSound();
         §`!H§.getItemByName("Button_FreePowerups").setVisibility(§,A§.§2#O§.§7#M§.§3!v§);
         var _loc2_:String = this.getNextIdentifier();
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().name;
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc2_ == null)
         {
            §`!H§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §`"x§.trackPageView(this,this.§0'§(),§`"x§.§&!F§);
         § try§.§!!t§().§+" §(false,this.§0'§(),this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§3#U§.§#$4§.slingshot.§`!R§() - §3#U§.§#$4§.slingshot.§]$>§(),§3#U§.§#$4§.slingshot.§`!R§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(this.§0'§()),(§3#U§.§#$4§ as §2$2§).§<Q§(),§3#U§.§8I§.getScore(),false);
         this.§1"&§();
         this.§2^§();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            if(param1.keyCode == Keyboard.RIGHT)
            {
               this.§3y§();
            }
         }
      }
      
      private function §3y§() : void
      {
         if(this.§>W§ == null)
         {
            this.§>W§ = §`!H§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc2_:§@"!§ = §`!H§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §`!H§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§>W§.visible = true;
         var _loc5_:Number = this.§&#Q§;
         ++this.§5">§;
         if(this.§5">§ >= this.§@?§.§;#<§)
         {
            this.§5">§ = 0;
         }
         this.§>W§.TF.text = this.§@?§.§'$?§(this.§5">§);
         var _loc6_:§>"0§ = §`!H§.getItemByName("Button_Replay") as §>"0§;
         (§`!H§.getItemByName("Button_NextLevel") as §>"0§).y = _loc5_;
         (§`!H§.getItemByName("Button_CutScene") as §>"0§).y = _loc5_;
         (§`!H§.getItemByName("Button_MightyEagle") as §>"0§).y = _loc5_;
         (§`!H§.getItemByName("Button_Menu") as §>"0§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      private function §1"&§() : void
      {
         if(this.§>W§ == null)
         {
            this.§>W§ = §`!H§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc1_:Boolean = false;
         if(§6"B§ % this.§?#C§ == 0)
         {
            _loc1_ = true;
         }
         ++§6"B§;
         var _loc2_:§@"!§ = §`!H§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §`!H§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§>W§.visible = _loc1_;
         var _loc5_:Number = this.§&#Q§;
         if(_loc1_)
         {
            this.§>W§.TF.text = this.§@?§.§'6§();
         }
         else
         {
            _loc5_ += 75;
         }
         var _loc6_:§>"0§ = §`!H§.getItemByName("Button_Replay") as §>"0§;
         (§`!H§.getItemByName("Button_NextLevel") as §>"0§).y = _loc5_;
         (§`!H§.getItemByName("Button_CutScene") as §>"0§).y = _loc5_;
         (§`!H§.getItemByName("Button_MightyEagle") as §>"0§).y = _loc5_;
         (§`!H§.getItemByName("Button_Menu") as §>"0§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      override public function deActivate() : void
      {
         if(this.§!$%§)
         {
            this.§!$%§.removeEventListener(FirstTimePayerPopup.§%i§,this.§&$;§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               break;
            case "SHOP":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§;<§();
               break;
            case "SHARE_DEFAULT":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §^!K§.§+"D§("shareDefault",this.§0'§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §?!0§).§7#J§(this.§0'§()),0,false);
               break;
            case "EMBED":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§?!4§(this.§0'§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §?!0§).§7#J§(this.§0'§()),§3#U§.§8I§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.§'!M§();
         }
      }
      
      protected function §;<§() : void
      {
         var _loc1_:TabbedShopPopup = new TabbedShopPopup(§]"$§.NORMAL,§^"U§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §?!4§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§]"$§.NORMAL,§^"U§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §'!M§() : void
      {
         this.§!$%§ = new FirstTimePayerPopup(§]"$§.NORMAL,§^"U§.TOP);
         this.§!$%§.addEventListener(FirstTimePayerPopup.§%i§,this.§&$;§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§!$%§);
      }
      
      protected function §&$;§(param1:Event) : void
      {
         this.§!$%§.removeEventListener(FirstTimePayerPopup.§%i§,this.§&$;§);
         §`!H§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§"m§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §false§.§2"O§)
         {
            _loc1_ = § !v§.STATE_NAME;
         }
         else if(_loc2_.name == §>N§.§]$+§)
         {
            _loc1_ = §>N§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §1S§.STATE_NAME;
      }
      
      public function §!3§() : String
      {
         return §`"x§.§2$,§;
      }
      
      public function §0'§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getNextIdentifier() : String
      {
         return mLevelManager.getNextLevelId();
      }
      
      private function get dataModel() : §#"8§
      {
         return §#"8§(§,A§.§2#O§.dataModel);
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      protected function §2^§() : void
      {
         §!"p§.§>#p§();
         §!"p§.playSound("LevelFailedPigs1","ChannelMisc");
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
