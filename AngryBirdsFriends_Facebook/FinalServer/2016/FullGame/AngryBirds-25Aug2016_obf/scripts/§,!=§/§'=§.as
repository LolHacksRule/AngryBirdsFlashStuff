package §,!=§
{
   import §"!U§.TabbedShopPopup;
   import §#v§.§#!?§;
   import §#v§.§6^§;
   import §#v§.§=!Z§;
   import §%$!§.§+3§;
   import §'!U§.§0!?§;
   import §'!U§.§>$$§;
   import §'U§.§]#[§;
   import §+"%§.§6X§;
   import §0#d§.§<#u§;
   import §3-§.§<! §;
   import §4#%§.§@#@§;
   import §52§.§#%§;
   import §6"r§.§=O§;
   import §8§.§#$+§;
   import §;!Q§.§^"!§;
   import §<!O§.§@#`§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?"R§.EmbedPopup;
   import §?"R§.FirstTimePayerPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§<d§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §'=§ extends §6!'§ implements § 1§, §@#@§
   {
      
      private static var §=3§:uint = 0;
       
      
      protected var §1#Q§:Array;
      
      private var §?#D§:§^"!§;
      
      private var §<j§:FirstTimePayerPopup;
      
      private const §5#j§:int = 5;
      
      private var §6!L§:MovieClip;
      
      private var §&N§:§<! §;
      
      private var §?"w§:Number = NaN;
      
      private var §`!Q§:int = 0;
      
      public function §'=§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         this.§1#Q§ = [];
         super(param1,param2,param3,param4);
         this.§&N§ = §<! §.§3!]§;
      }
      
      override protected function getViewXML() : XML
      {
         return §@#`§.§#!c§.Views.View_LevelEndFailRio[0];
      }
      
      override protected function init() : void
      {
         super.init();
         this.§?"w§ = (§!$§.getItemByName("Button_Menu") as §=O§).y;
         §!$§.getItemByName("Button_Fullscreen").setVisibility(false);
         §!$§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
         this.§1#Q§.push((§!$§.getItemByName("Button_Menu") as §=O§).x);
         this.§1#Q§.push((§!$§.getItemByName("Button_Replay") as §=O§).x);
         this.§1#Q§.push((§!$§.getItemByName("Button_MightyEagle") as §=O§).x);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§=$8§);
         §>"$§.§3#'§.background.stopAmbientSound();
         §!$§.getItemByName("Button_FreePowerups").setVisibility(§8G§.§%#S§.§+T§.§""O§);
         var _loc2_:String = this.getNextIdentifier();
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().name;
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc2_ == null)
         {
            §!$§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         if(this.dataModel.§&!?§)
         {
            if(this.dataModel.§&!?§.§=#t§())
            {
               this.§ "F§();
            }
         }
         §,"W§.trackPageView(this,this.§7">§(),§,"W§.§-"Z§);
         §-#A§.§6$2§().§?!5§(false,this.§7">§(),mLevelManager.getCurrentEpisodeModel().name,§>"$§.§3#'§.slingshot.§`b§() - §>"$§.§3#'§.slingshot.§3!4§(),§>"$§.§3#'§.slingshot.§`b§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(this.§7">§()),(§>"$§.§3#'§ as §#%§).§[5§(),§>"$§.§#0§.getScore(),false);
         this.§=!I§();
         this.playFailSound();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            if(param1.keyCode == Keyboard.RIGHT)
            {
               this.§1#Y§();
            }
         }
      }
      
      private function §1#Y§() : void
      {
         if(this.§6!L§ == null)
         {
            this.§6!L§ = §!$§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc1_:Boolean = true;
         var _loc2_:§>$$§ = §!$§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §!$§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§6!L§.visible = _loc1_;
         var _loc5_:Number = this.§?"w§;
         ++this.§`!Q§;
         if(this.§`!Q§ >= this.§&N§.§]!7§)
         {
            this.§`!Q§ = 0;
         }
         this.§6!L§.TF.text = this.§&N§.§9w§(this.§`!Q§);
         var _loc6_:§=O§ = §!$§.getItemByName("Button_Replay") as §=O§;
         (§!$§.getItemByName("Button_NextLevel") as §=O§).y = _loc5_;
         (§!$§.getItemByName("Button_CutScene") as §=O§).y = _loc5_;
         (§!$§.getItemByName("Button_MightyEagle") as §=O§).y = _loc5_;
         (§!$§.getItemByName("Button_Menu") as §=O§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      private function §=!I§() : void
      {
         if(this.§6!L§ == null)
         {
            this.§6!L§ = §!$§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc1_:Boolean = false;
         if(§=3§ % this.§5#j§ == 0)
         {
            _loc1_ = true;
         }
         ++§=3§;
         var _loc2_:§>$$§ = §!$§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §!$§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§6!L§.visible = _loc1_;
         var _loc4_:int = 75;
         var _loc5_:Number = this.§?"w§;
         if(_loc1_)
         {
            this.§6!L§.TF.text = this.§&N§.§+K§();
         }
         else
         {
            _loc5_ += _loc4_;
         }
         var _loc6_:§=O§ = §!$§.getItemByName("Button_Replay") as §=O§;
         (§!$§.getItemByName("Button_NextLevel") as §=O§).y = _loc5_;
         (§!$§.getItemByName("Button_CutScene") as §=O§).y = _loc5_;
         (§!$§.getItemByName("Button_MightyEagle") as §=O§).y = _loc5_;
         (§!$§.getItemByName("Button_Menu") as §=O§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      private function § "F§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.dataModel.§&!?§.§=#t§() && this.§7">§().indexOf(§,#?§.§;s§) != -1)
         {
            this.§?#D§ = new §^"!§(this.dataModel.§&!?§.§?!>§,"",false,false);
            this.§?#D§.§4"E§ = this.dataModel.§&!?§.§ #g§;
            this.§?#D§.x = -70;
            this.§?#D§.y = -70;
            _loc1_ = §!$§.getItemByName("EggRaffleBasketContainer").mClip;
            _loc1_.addChild(this.§?#D§);
         }
      }
      
      private function §3"v§() : void
      {
         var _loc1_:MovieClip = §!$§.getItemByName("EggRaffleBasketContainer").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
      }
      
      override public function deActivate() : void
      {
         this.§3"v§();
         if(this.§<j§)
         {
            this.§<j§.removeEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §#$+§.playSound("Menu_Confirm",§=!-§.§%d§);
               break;
            case "SHOP":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§8#l§();
               break;
            case "SHARE_DEFAULT":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §6X§.§3U§("shareDefault",this.§7">§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §6^§).§[!2§(this.§7">§()),0,false);
               break;
            case "EMBED":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§4G§(this.§7">§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §6^§).§[!2§(this.§7">§()),§>"$§.§#0§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§?#X§();
         }
      }
      
      protected function §8#l§() : void
      {
         var _loc1_:TabbedShopPopup = new TabbedShopPopup(§[W§.NORMAL,§<d§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §4G§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§[W§.NORMAL,§<d§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §?#X§() : void
      {
         this.§<j§ = new FirstTimePayerPopup(§[W§.NORMAL,§<d§.TOP);
         this.§<j§.addEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§<j§);
      }
      
      protected function §8"@§(param1:Event) : void
      {
         this.§<j§.removeEventListener(FirstTimePayerPopup.§-$9§,this.§8"@§);
         §!$§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§=!Z§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §=!-§.§]#o§)
         {
            _loc1_ = §!a§.STATE_NAME;
         }
         else if(_loc2_.name == §5#J§.§2#W§)
         {
            _loc1_ = §5#J§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §<!B§.STATE_NAME;
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§9"H§;
      }
      
      public function §7">§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getNextIdentifier() : String
      {
         return mLevelManager.getNextLevelId();
      }
      
      private function get dataModel() : §+3§
      {
         return §+3§(§8G§.§%#S§.dataModel);
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
      
      protected function playFailSound() : void
      {
         §#$+§.§#$-§();
         §#$+§.playSound("LevelFailedPigs1","ChannelMisc");
      }
   }
}
