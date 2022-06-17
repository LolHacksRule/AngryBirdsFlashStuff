package §3=§
{
   import § "g§.§,#?§;
   import §!!t§.§'8§;
   import §!§.§="D§;
   import §"!>§.§8";§;
   import §"$=§.§'![§;
   import §"$=§.§[§;
   import §#!E§.§2#Q§;
   import §#M§.§<"c§;
   import §+#B§.§+$A§;
   import §+#B§.§0"+§;
   import §+#B§.§5"w§;
   import §,#C§.Wallet;
   import §,#C§.§["b§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §5!$§.§#$-§;
   import §5!$§.§-#j§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §%"#§ extends §8$8§ implements §0"+§, §="D§, §["b§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      public static var §>!5§:int = -1;
      
      public static const §?S§:String = "1000";
      
      public static const §4l§:String = "2000";
      
      public static const §^D§:String = "pagination_";
       
      
      private var §7"[§:§,#?§;
      
      private var §?3§:Wallet;
      
      public function §%"#§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§7"[§ = §'"a§.§`!R§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§[#5§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name == §?S§ && !(this is §&P§))
         {
            §<"`§.visible = false;
            §%D§(§&P§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
            return;
         }
         if(_loc2_.isTournament && !(this is §'8§))
         {
            §<"`§.visible = false;
            §%D§(§'8§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
         }
         if(_loc2_.name == §!!V§.§""W§ && !(this is §!!V§))
         {
            §<"`§.visible = false;
            §%D§(§!!V§.STATE_NAME);
         }
         §<"`§.visible = true;
         (§%"T§.§>$<§ as §'"a§).§ !g§.§8"N§ = false;
         (§%"T§.§>$<§ as §'"a§).§8"Y§(§<"c§.§'#r§);
         if(§%"T§.§;`§.background)
         {
            §%"T§.§;`§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §<"`§.setText(_loc3_,"TextField_LevelName");
         this.§^#§(_loc2_);
         if(§>!5§ != -1)
         {
            moveToPage(§>!5§);
            §>!5§ = -1;
         }
         this.§?$ §();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§[D§(new Wallet(this,true,true,false));
         §5"w§.trackPageView(this,null,this.§@J§());
      }
      
      protected function §?$ §() : void
      {
         if(previousState != §1#Z§.STATE_NAME)
         {
            (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§,y§,null);
            this.§7"[§.§"C§().addEventListener(§8";§.§]!T§,this.§3#u§);
            this.§7"[§.§"C§().loadItems(0,0);
         }
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         §5"w§.trackPageView(this,null,this.§@J§());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         §5"w§.trackPageView(this,null,this.§@J§());
      }
      
      protected function §^#§(param1:§[#5§) : void
      {
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.§=! §(param1);
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.§8!`§(param1);
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.§8#C§(param1);
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§]-§(param1);
         this.§@$>§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §@$>§(param1:§[#5§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §<"`§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §<"`§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;!V§();
         this.§"[§(this.§?3§);
      }
      
      protected function §;!V§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§).§5"I§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §2"O§.§`>§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * mLevelManager.getEpisodeForLevel(param1).levelsPerPage;
         return _loc6_;
      }
      
      override protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.singleton.popupManager.§`'§())
         {
            return;
         }
         super.onKeyEvent(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         if(param2.length > 0 && param3 is §#$-§ && ((param3 as §#$-§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §#$-§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection12" || (param3 as §#$-§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15"))
         {
            if(!§6"G§)
            {
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §+$A§.§<"?§ = param2.toLowerCase();
               mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
               §%D§(StateCutScene.STATE_NAME);
            }
         }
         else
         {
            super.onUIInteraction(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  §%D§(§1U§.STATE_NAME);
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§<"`§.getItemByName("TextField_LevelNumberSmall") as §-#j§).§^g§.text = (param1 + 1).toString();
      }
      
      public function §<"r§() : String
      {
         return §5"w§.§9#E§ + "_" + mLevelManager.getCurrentEpisodeModel().writtenName;
      }
      
      public function §5!R§() : String
      {
         if(mLevelManager.getCurrentEpisodeModel())
         {
            return mLevelManager.getCurrentEpisodeModel().writtenName;
         }
         return null;
      }
      
      public function §@J§() : String
      {
         return §^D§ + (§#"J§ + 1).toString();
      }
      
      public function §+"n§() : String
      {
         return STATE_NAME;
      }
      
      private function §3#u§(param1:§8";§) : void
      {
         this.§7"[§.§"C§().removeEventListener(§8";§.§]!T§,this.§3#u§);
         (§%"T§.§>$<§ as §'"a§).§##h§(§<"c§.§,y§,this.§7"[§.§"C§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§%"T§.§>$<§ as §'"a§).§?$9§())
         {
            _loc1_ = §6"H§.§!d§;
         }
         if(this.§?3§)
         {
            this.§?3§.§5#k§.scaleX = _loc1_;
            this.§?3§.§5#k§.scaleY = _loc1_;
         }
      }
      
      public function §[D§(param1:Wallet) : void
      {
         this.§?3§ = param1;
      }
      
      public function §"[§(param1:Wallet) : void
      {
         if(this.§?3§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get § !Z§() : Wallet
      {
         return this.§?3§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §<"`§.movieClip;
      }
   }
}
