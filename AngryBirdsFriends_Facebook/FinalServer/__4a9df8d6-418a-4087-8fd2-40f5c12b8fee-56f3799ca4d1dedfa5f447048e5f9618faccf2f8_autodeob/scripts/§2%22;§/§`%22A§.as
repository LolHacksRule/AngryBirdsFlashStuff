package §2";§
{
   import § !j§.§4#c§;
   import §"z§.§&>§;
   import §"z§.Wallet;
   import §#,§.§=!7§;
   import §#,§.§`"$§;
   import §&!_§.§!!K§;
   import §&!_§.§,!n§;
   import §&!_§.§0I§;
   import §,!Q§.§6"n§;
   import §,"v§.§ T§;
   import §,"v§.§;"n§;
   import §0"B§.§6$5§;
   import §1"l§.§`""§;
   import §3+§.§;!H§;
   import §7R§.§ #`§;
   import §8#K§.§3Z§;
   import §?!]§.§2#_§;
   import §^&§.§%!#§;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §`"A§ extends §9#7§ implements §,!n§, §%!#§, §&>§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      public static var §?t§:int = -1;
      
      public static const §+#f§:String = "1000";
      
      public static const §1!5§:String = "2000";
      
      public static const §7K§:String = "pagination_";
       
      
      private var §?"v§:§6$5§;
      
      private var §1!B§:Wallet;
      
      public function §`"A§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§?"v§ = § #v§.§,"§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§ T§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name == §+#f§ && !(this is §8!N§))
         {
            §[$5§.visible = false;
            §1!L§(§8!N§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
            return;
         }
         if(_loc2_.isTournament && !(this is §;!H§))
         {
            §[$5§.visible = false;
            §1!L§(§;!H§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
         }
         if(_loc2_.name == §+!I§.§3"J§ && !(this is §+!I§))
         {
            §[$5§.visible = false;
            §1!L§(§+!I§.STATE_NAME);
         }
         §[$5§.visible = true;
         (§7n§.§-$<§ as § #v§).§?"_§.§=$<§ = false;
         (§7n§.§-$<§ as § #v§).§%"j§(§`""§.§"!V§);
         if(§7n§.§6#K§.background)
         {
            §7n§.§6#K§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §[$5§.setText(_loc3_,"TextField_LevelName");
         this.§,y§(_loc2_);
         if(§?t§ != -1)
         {
            moveToPage(§?t§);
            §?t§ = -1;
         }
         this.§4"7§();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§0!A§(new Wallet(this,true,true,false));
         §0I§.trackPageView(this,null,this.§+!1§());
      }
      
      protected function §4"7§() : void
      {
         if(previousState != §3,§.STATE_NAME)
         {
            (§7n§.§-$<§ as § #v§).§<z§(§`""§.§&!&§,null);
            this.§?"v§.§"X§().addEventListener(§2#_§.§]"I§,this.§9$"§);
            this.§?"v§.§"X§().loadItems(0,0);
         }
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         §0I§.trackPageView(this,null,this.§+!1§());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         §0I§.trackPageView(this,null,this.§+!1§());
      }
      
      protected function §,y§(param1:§ T§) : void
      {
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.§ $3§(param1);
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.§["B§(param1);
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.§`c§(param1);
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§]""§(param1);
         this.§-#E§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §-#E§(param1:§ T§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §[$5§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §[$5§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§8"t§();
         this.§&!U§(this.§1!B§);
      }
      
      protected function §8"t§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsBase.singleton.dataModel.userProgress as § #`§).§ #T§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §6$A§.§1!m§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * mLevelManager.getEpisodeForLevel(param1).levelsPerPage;
         return _loc6_;
      }
      
      override protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.singleton.popupManager.§?"N§())
         {
            return;
         }
         super.onKeyEvent(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         if(param2.length > 0 && param3 is §=!7§ && ((param3 as §=!7§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §=!7§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection12" || (param3 as §=!7§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15"))
         {
            if(!§1#1§)
            {
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §!!K§.§2$-§ = param2.toLowerCase();
               mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
               §1!L§(StateCutScene.STATE_NAME);
            }
         }
         else
         {
            super.onUIInteraction(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  §1!L§(§'#J§.STATE_NAME);
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§[$5§.getItemByName("TextField_LevelNumberSmall") as §`"$§).§2"<§.text = (param1 + 1).toString();
      }
      
      public function §;!=§() : String
      {
         return §0I§.§<!N§ + "_" + mLevelManager.getCurrentEpisodeModel().writtenName;
      }
      
      public function §#"!§() : String
      {
         if(mLevelManager.getCurrentEpisodeModel())
         {
            return mLevelManager.getCurrentEpisodeModel().writtenName;
         }
         return null;
      }
      
      public function §+!1§() : String
      {
         return §7K§ + (§<[§ + 1).toString();
      }
      
      public function §+"-§() : String
      {
         return STATE_NAME;
      }
      
      private function §9$"§(param1:§2#_§) : void
      {
         this.§?"v§.§"X§().removeEventListener(§2#_§.§]"I§,this.§9$"§);
         (§7n§.§-$<§ as § #v§).§<z§(§`""§.§&!&§,this.§?"v§.§"X§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§7n§.§-$<§ as § #v§).§]#p§())
         {
            _loc1_ = §95§.§^"_§;
         }
         if(this.§1!B§)
         {
            this.§1!B§.§+F§.scaleX = _loc1_;
            this.§1!B§.§+F§.scaleY = _loc1_;
         }
      }
      
      public function §0!A§(param1:Wallet) : void
      {
         this.§1!B§ = param1;
      }
      
      public function §&!U§(param1:Wallet) : void
      {
         if(this.§1!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §#"F§() : Wallet
      {
         return this.§1!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §[$5§.movieClip;
      }
   }
}
