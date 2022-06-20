package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § h§.§-!S§;
   import § h§.EmbedPopup;
   import § h§.FirstTimePayerPopup;
   import §+!n§.§+!p§;
   import §0"m§.§<4§;
   import §2$;§.§;!b§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§]!P§;
   import §4#l§.TabbedShopPopup;
   import §4$A§.§=$5§;
   import §9!6§.§## §;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §>#Y§.§,#b§;
   import §?$#§.§^#j§;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §?o§.§?"m§;
   import §[#A§.§&n§;
   import §]!4§.§=#c§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class §6g§ extends §%"`§ implements §'r§, §=$5§
   {
      
      private static var § $?§:uint = 0;
       
      
      protected var §+$'§:Array;
      
      private var §+"r§:FirstTimePayerPopup;
      
      private const §@!L§:int = 5;
      
      private var §6K§:MovieClip;
      
      private var §;S§:§<4§;
      
      private var §&v§:Number = NaN;
      
      private var §>i§:int = 0;
      
      public function §6g§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelEndFailState")
      {
         this.§+$'§ = [];
         super(param1,param2,param3,param4);
         this.§;S§ = §<4§.§3"1§;
      }
      
      override protected function getViewXML() : XML
      {
         return §&n§.§7a§.Views.View_LevelEndFailRio[0];
      }
      
      override protected function init() : void
      {
         super.init();
         this.§&v§ = (§@!D§.getItemByName("Button_Menu") as §;!b§).y;
         §@!D§.getItemByName("Button_Fullscreen").setVisibility(false);
         §@!D§.getItemByName("Button_NextLevel").mClip.unlocksIn.visible = false;
         this.§+$'§.push((§@!D§.getItemByName("Button_Menu") as §;!b§).x);
         this.§+$'§.push((§@!D§.getItemByName("Button_Replay") as §;!b§).x);
         this.§+$'§.push((§@!D§.getItemByName("Button_MightyEagle") as §;!b§).x);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4!-§);
         §+!p§.§`?§.background.stopAmbientSound();
         §@!D§.getItemByName("Button_FreePowerups").setVisibility(§^"a§.§9!h§.§"?§.§,"r§);
         var _loc2_:String = this.getNextIdentifier();
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().name;
         if(_loc3_ == "1000" || _loc3_ == "3001" || _loc2_ == null)
         {
            §@!D§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         §'@§.trackPageView(this,this.§6#U§(),§'@§.§`![§);
         §]!P§.§1!7§().§+!6§(false,this.§6#U§(),this.getTournamentId(),mLevelManager.getCurrentEpisodeModel().name,§+!p§.§`?§.slingshot.§?#&§() - §+!p§.§`?§.slingshot.§,"j§(),§+!p§.§`?§.slingshot.§?#&§(),AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(this.§6#U§()),(§+!p§.§`?§ as §^#j§).§"C§(),§+!p§.§-#W§.getScore(),false);
         this.§%!9§();
         this.§5$#§();
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.DEBUG_MODE_ENABLED)
         {
            if(param1.keyCode == Keyboard.RIGHT)
            {
               this.§-$C§();
            }
         }
      }
      
      private function §-$C§() : void
      {
         if(this.§6K§ == null)
         {
            this.§6K§ = §@!D§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc2_:§6!1§ = §@!D§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §@!D§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§6K§.visible = true;
         var _loc5_:Number = this.§&v§;
         ++this.§>i§;
         if(this.§>i§ >= this.§;S§.§@!I§)
         {
            this.§>i§ = 0;
         }
         this.§6K§.TF.text = this.§;S§.§'c§(this.§>i§);
         var _loc6_:§;!b§ = §@!D§.getItemByName("Button_Replay") as §;!b§;
         (§@!D§.getItemByName("Button_NextLevel") as §;!b§).y = _loc5_;
         (§@!D§.getItemByName("Button_CutScene") as §;!b§).y = _loc5_;
         (§@!D§.getItemByName("Button_MightyEagle") as §;!b§).y = _loc5_;
         (§@!D§.getItemByName("Button_Menu") as §;!b§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      private function §%!9§() : void
      {
         if(this.§6K§ == null)
         {
            this.§6K§ = §@!D§.container.mClip.Container_LevelEndStripe.LevelEndTip;
         }
         var _loc1_:Boolean = false;
         if(§ $?§ % this.§@!L§ == 0)
         {
            _loc1_ = true;
         }
         ++§ $?§;
         var _loc2_:§6!1§ = §@!D§.getItemByName("pigHolder");
         var _loc3_:MovieClip = §@!D§.container.mClip.Container_LevelEndStripe.LevelFailedTitle;
         this.§6K§.visible = _loc1_;
         var _loc5_:Number = this.§&v§;
         if(_loc1_)
         {
            this.§6K§.TF.text = this.§;S§.§ #a§();
         }
         else
         {
            _loc5_ += 75;
         }
         var _loc6_:§;!b§ = §@!D§.getItemByName("Button_Replay") as §;!b§;
         (§@!D§.getItemByName("Button_NextLevel") as §;!b§).y = _loc5_;
         (§@!D§.getItemByName("Button_CutScene") as §;!b§).y = _loc5_;
         (§@!D§.getItemByName("Button_MightyEagle") as §;!b§).y = _loc5_;
         (§@!D§.getItemByName("Button_Menu") as §;!b§).y = _loc5_;
         _loc6_.y = _loc5_;
         var _loc7_:Number = _loc3_.y + (_loc3_.height >> 1);
         var _loc8_:Number = _loc6_.y - (_loc6_.height >> 1);
         _loc2_.y = _loc7_ + (_loc8_ - _loc7_ >> 1);
      }
      
      override public function deActivate() : void
      {
         if(this.§+"r§)
         {
            this.§+"r§.removeEventListener(FirstTimePayerPopup.§^!k§,this.§=H§);
         }
         super.deActivate();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               break;
            case "SHOP":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§1$9§();
               break;
            case "SHARE_DEFAULT":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §=#c§.§<!t§("shareDefault",this.§6#U§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §?"m§).§&#W§(this.§6#U§()),0,false);
               break;
            case "EMBED":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§ #$§(this.§6#U§(),mLevelManager.getCurrentEpisodeModel().writtenName + "-" + (mLevelManager as §?"m§).§&#W§(this.§6#U§()),§+!p§.§-#W§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.§#!s§();
         }
      }
      
      protected function §1$9§() : void
      {
         var _loc1_:TabbedShopPopup = new TabbedShopPopup(§-!S§.NORMAL,§## §.TOP);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc1_);
      }
      
      protected function § #$§(param1:String, param2:String, param3:int, param4:String) : void
      {
         var _loc5_:EmbedPopup = new EmbedPopup(§-!S§.NORMAL,§## §.TOP,param1,param2,param3,param4);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc5_);
      }
      
      protected function §#!s§() : void
      {
         this.§+"r§ = new FirstTimePayerPopup(§-!S§.NORMAL,§## §.TOP);
         this.§+"r§.addEventListener(FirstTimePayerPopup.§^!k§,this.§=H§);
         AngryBirdsBase.singleton.popupManager.openPopup(this.§+"r§);
      }
      
      protected function §=H§(param1:Event) : void
      {
         this.§+"r§.removeEventListener(FirstTimePayerPopup.§^!k§,this.§=H§);
         §@!D§.getItemByName("Button_FreePowerups").setVisibility(false);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§79§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_.name == § "g§.§>!#§)
         {
            _loc1_ = §[!=§.STATE_NAME;
         }
         else if(_loc2_.name == §`$D§.§8V§)
         {
            _loc1_ = §`$D§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §;O§.STATE_NAME;
      }
      
      public function §2!^§() : String
      {
         return §'@§.§!<§;
      }
      
      public function §6#U§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function getNextIdentifier() : String
      {
         return mLevelManager.getNextLevelId();
      }
      
      private function get dataModel() : §,#b§
      {
         return §,#b§(§^"a§.§9!h§.dataModel);
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      protected function §5$#§() : void
      {
         §4$4§.§?#l§();
         §4$4§.playSound("LevelFailedPigs1","ChannelMisc");
      }
      
      protected function getTournamentId() : int
      {
         return -1;
      }
   }
}
