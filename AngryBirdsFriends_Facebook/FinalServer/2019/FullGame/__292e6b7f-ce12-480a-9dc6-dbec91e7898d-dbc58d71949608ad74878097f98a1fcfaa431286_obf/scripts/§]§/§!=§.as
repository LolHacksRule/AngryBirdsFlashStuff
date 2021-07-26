package §]§
{
   import § "L§.§7`§;
   import § "L§.§[" §;
   import §!!L§.§ !8§;
   import §!L§.§`#u§;
   import §#"4§.§2"M§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §%"N§.§+#?§;
   import §%"N§.Wallet;
   import §+`§.§%"q§;
   import §2!Y§.§="z§;
   import §3"V§.§ b§;
   import §7"&§.§1k§;
   import §7"X§.§6#A§;
   import §7#$§.§3!,§;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   import §^"3§.§`$4§;
   import §^"G§.§2+§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §!=§ extends §#!$§ implements §2"M§, §1k§, §+#?§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      public static var §8"?§:int = -1;
      
      public static const §!^§:String = "1000";
      
      public static const §^;§:String = "2000";
      
      public static const §2$8§:String = "pagination_";
       
      
      private var §"![§:§="z§;
      
      private var §"#W§:Wallet;
      
      public function §!=§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§"![§ = §@z§.§<"I§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§3!,§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name == §!^§ && !(this is §4#§))
         {
            §;!w§.visible = false;
            §3#§(§4#§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
            return;
         }
         if(_loc2_.isTournament && !(this is § !8§))
         {
            §;!w§.visible = false;
            §3#§(§ !8§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
         }
         if(_loc2_.name == §,x§.§0Y§ && !(this is §,x§))
         {
            §;!w§.visible = false;
            §3#§(§,x§.STATE_NAME);
         }
         §;!w§.visible = true;
         (§]$?§.§;u§ as §@z§).§`L§.§8#P§ = false;
         (§]$?§.§;u§ as §@z§).§%"r§(§2+§.§ <§);
         if(§]$?§.§2#§.background)
         {
            §]$?§.§2#§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §;!w§.setText(_loc3_,"TextField_LevelName");
         this.§const§(_loc2_);
         if(§8"?§ != -1)
         {
            moveToPage(§8"?§);
            §8"?§ = -1;
         }
         this.§<!J§();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§6"h§(new Wallet(this,true,true,false));
         §<"G§.trackPageView(this,null,this.§&!9§());
      }
      
      protected function §<!J§() : void
      {
         if(previousState != §`!^§.STATE_NAME)
         {
            (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§7!g§,null);
            this.§"![§.§!#S§().addEventListener(§6#A§.§4$&§,this.§]H§);
            this.§"![§.§!#S§().loadItems(0,0);
         }
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         §<"G§.trackPageView(this,null,this.§&!9§());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         §<"G§.trackPageView(this,null,this.§&!9§());
      }
      
      protected function §const§(param1:§3!,§) : void
      {
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.§`!t§(param1);
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.§<!S§(param1);
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.§#!r§(param1);
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§=#[§(param1);
         this.§'#z§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §'#z§(param1:§3!,§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §;!w§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §;!w§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§>!$§();
         this.§7=§(this.§"#W§);
      }
      
      protected function §>!$§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsBase.singleton.dataModel.userProgress as §`#u§).§ $%§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §[a§.§8#k§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * mLevelManager.getEpisodeForLevel(param1).levelsPerPage;
         return _loc6_;
      }
      
      override protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.singleton.popupManager.§[#a§())
         {
            return;
         }
         super.onKeyEvent(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         if(param2.length > 0 && param3 is §[" § && ((param3 as §[" §).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §[" §).mParentContainer.mParentContainer.name == "Repeater_LevelSelection12" || (param3 as §[" §).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15"))
         {
            if(!§4,§)
            {
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3";§.§,##§ = param2.toLowerCase();
               mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
               §3#§(StateCutScene.STATE_NAME);
            }
         }
         else
         {
            super.onUIInteraction(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  §3#§(§[#t§.STATE_NAME);
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§;!w§.getItemByName("TextField_LevelNumberSmall") as §7`§).§%!8§.text = (param1 + 1).toString();
      }
      
      public function §0!q§() : String
      {
         return §<"G§.§!# § + "_" + mLevelManager.getCurrentEpisodeModel().writtenName;
      }
      
      public function §4!G§() : String
      {
         if(mLevelManager.getCurrentEpisodeModel())
         {
            return mLevelManager.getCurrentEpisodeModel().writtenName;
         }
         return null;
      }
      
      public function §&!9§() : String
      {
         return §2$8§ + (§4!'§ + 1).toString();
      }
      
      public function §6#n§() : String
      {
         return STATE_NAME;
      }
      
      private function §]H§(param1:§6#A§) : void
      {
         this.§"![§.§!#S§().removeEventListener(§6#A§.§4$&§,this.§]H§);
         (§]$?§.§;u§ as §@z§).§`#6§(§2+§.§7!g§,this.§"![§.§!#S§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§]$?§.§;u§ as §@z§).§ >§())
         {
            _loc1_ = §3"E§.§3$0§;
         }
         if(this.§"#W§)
         {
            this.§"#W§.§`#8§.scaleX = _loc1_;
            this.§"#W§.§`#8§.scaleY = _loc1_;
         }
      }
      
      public function §6"h§(param1:Wallet) : void
      {
         this.§"#W§ = param1;
      }
      
      public function §7=§(param1:Wallet) : void
      {
         if(this.§"#W§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §[!a§() : Wallet
      {
         return this.§"#W§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §;!w§.movieClip;
      }
   }
}
