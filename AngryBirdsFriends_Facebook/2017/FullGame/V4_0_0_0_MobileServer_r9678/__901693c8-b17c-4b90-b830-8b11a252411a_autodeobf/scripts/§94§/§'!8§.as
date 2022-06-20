package §94§
{
   import § o§.§%"!§;
   import § o§.EmbedPopup;
   import § o§.FirstTimePayerPopup;
   import §%#A§.§,#w§;
   import §&"J§.§`]§;
   import §&$!§.§+#!§;
   import §+!C§.§#!L§;
   import §1#W§.§!#&§;
   import §6!0§.§ "8§;
   import §6"r§.§!#A§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §7",§.TabbedShopPopup;
   import §8#D§.§=>§;
   import §<!w§.§0"H§;
   import §<"1§.§'"S§;
   import §<"1§.§[!K§;
   import §<#m§.§^#o§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §[§.§]"w§;
   import §`!R§.§&"8§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §'!8§ extends §[j§ implements §7#M§, §]"w§
   {
      
      private static var §["a§:uint = 0;
       
      
      protected var §49§:Array;
      
      private var §`!N§:FirstTimePayerPopup;
      
      private const §2#V§:int = 5;
      
      private var §^g§:MovieClip;
      
      private var §+$1§:§0"H§;
      
      private var §!,§:Number = NaN;
      
      private var §;+§:int = 0;
      
      public function §'!8§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         this.§49§ = [];
         super(param1,param2,param3,param4);
         this.§+$1§ = §0"H§.§ "D§;
      }
      
      override protected function getViewXML() : XML
      {
         return §=>§.§%" §.Views.View_LevelEndFailRio[0];
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!,§ = (§?Q§.getItemByName("Button_Menu") as §,#w§).y;
         §?Q§.getItemByName("Button_Fullscreen").setVisibility(false);
         §?Q§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
         this.§49§.push((§?Q§.getItemByName("Button_Menu") as §,#w§).x);
         this.§49§.push((§?Q§.getItemByName("Button_Replay") as §,#w§).x);
         this.§49§.push((§?Q§.getItemByName("Button_MightyEagle") as §,#w§).x);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§`!%§);
         §!#A§.§#F§.background.stopAmbientSound();
         §?Q§.getItemByName("Button_FreePowerups").setVisibility(§-#+§.§;!$§.§6#Q§.§42§);
         var _loc2_:String = this.getNextIdentifier();
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().name;
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc2_ == null)
         {
            §?Q§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §`"5§.trackPageView(this,this.§>"-§(),§`"5§.§,$&§);
         §?!=§.§3!q§().§?l§(false,this.§>"-§(),mLevelManager.getCurrentEpisodeModel().name,§!#A§.§#F§.slingshot.§ "+§() - §!#A§.§#F§.slingshot.§%a§(),§!#A§.§#F§.slingshot.§ "+§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(this.§>"-§()),(§!#A§.§#F§ as §#!L§).§>#Z§(),§!#A§.§=![§.getScore(),false);
         this.§8!i§();
         this.playFailSound();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            if(param1.keyCode == Keyboard.RIGHT)
            {
               this.§-!8§();
            }
         }
      }
      
      private function §-!8§() : void
      {
         if(this.§^g§ == null)
         {
            this.§^g§ = §?Q§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc2_:§[!K§ = §?Q§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §?Q§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§^g§.visible = true;
         var _loc5_:Number = this.§!,§;
         ++this.§;+§;
         if(this.§;+§ >= this.§+$1§.§^!]§)
         {
            this.§;+§ = 0;
         }
         this.§^g§.TF.text = this.§+$1§.§ R§(this.§;+§);
         var _loc6_:§,#w§ = §?Q§.getItemByName("Button_Replay") as §,#w§;
         (§?Q§.getItemByName("Button_NextLevel") as §,#w§).y = _loc5_;
         (§?Q§.getItemByName("Button_CutScene") as §,#w§).y = _loc5_;
         (§?Q§.getItemByName("Button_MightyEagle") as §,#w§).y = _loc5_;
         (§?Q§.getItemByName("Button_Menu") as §,#w§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      private function §8!i§() : void
      {
         if(this.§^g§ == null)
         {
            this.§^g§ = §?Q§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc1_:Boolean = false;
         if(§["a§ % this.§2#V§ == 0)
         {
            _loc1_ = true;
         }
         ++§["a§;
         var _loc2_:§[!K§ = §?Q§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §?Q§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§^g§.visible = _loc1_;
         var _loc5_:Number = this.§!,§;
         if(_loc1_)
         {
            this.§^g§.TF.text = this.§+$1§.§1#[§();
         }
         else
         {
            _loc5_ += 75;
         }
         var _loc6_:§,#w§ = §?Q§.getItemByName("Button_Replay") as §,#w§;
         (§?Q§.getItemByName("Button_NextLevel") as §,#w§).y = _loc5_;
         (§?Q§.getItemByName("Button_CutScene") as §,#w§).y = _loc5_;
         (§?Q§.getItemByName("Button_MightyEagle") as §,#w§).y = _loc5_;
         (§?Q§.getItemByName("Button_Menu") as §,#w§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      override public function deActivate() : void
      {
         if(this.§`!N§)
         {
            this.§`!N§.removeEventListener(FirstTimePayerPopup.§<!_§,this.§<"k§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               break;
            case "SHOP":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§]"9§();
               break;
            case "SHARE_DEFAULT":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               § "8§.§ "§("shareDefault",this.§>"-§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §`!Q§).§+#O§(this.§>"-§()),0,false);
               break;
            case "EMBED":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§""b§(this.§>"-§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §`!Q§).§+#O§(this.§>"-§()),§!#A§.§=![§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.§ #;§();
         }
      }
      
      protected function §]"9§() : void
      {
         var _loc1_:TabbedShopPopup = new TabbedShopPopup(§%"!§.NORMAL,§^#o§.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function §""b§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§%"!§.NORMAL,§^#o§.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function § #;§() : void
      {
         this.§`!N§ = new FirstTimePayerPopup(§%"!§.NORMAL,§^#o§.TOP);
         this.§`!N§.addEventListener(FirstTimePayerPopup.§<!_§,this.§<"k§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§`!N§);
      }
      
      protected function §<"k§(param1:Event) : void
      {
         this.§`!N§.removeEventListener(FirstTimePayerPopup.§<!_§,this.§<"k§);
         §?Q§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§9##§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == §'!!§.§%"]§)
         {
            _loc1_ = §<![§.STATE_NAME;
         }
         else if(_loc2_.name == §,#E§.§4#"§)
         {
            _loc1_ = §,#E§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §7!c§.STATE_NAME;
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§<^§;
      }
      
      public function §>"-§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getNextIdentifier() : String
      {
         return mLevelManager.getNextLevelId();
      }
      
      private function get dataModel() : §`]§
      {
         return §`]§(§-#+§.§;!$§.dataModel);
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
      
      protected function playFailSound() : void
      {
         §!#&§.§^!2§();
         §!#&§.playSound("LevelFailedPigs1","ChannelMisc");
      }
   }
}
