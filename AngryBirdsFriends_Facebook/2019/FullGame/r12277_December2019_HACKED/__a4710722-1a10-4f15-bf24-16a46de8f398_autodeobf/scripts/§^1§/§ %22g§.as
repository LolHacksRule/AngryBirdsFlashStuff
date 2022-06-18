package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import §+!n§.§+!p§;
   import §-"S§.§>#G§;
   import §2$;§.§-$5§;
   import §2$;§.§?$1§;
   import §2E§.§'@§;
   import §2E§.§'r§;
   import §2E§.§]!P§;
   import §3#t§.§>!H§;
   import §4$A§.§=$5§;
   import §8#^§.§ !w§;
   import §<8§.§8!g§;
   import §<M§.§;"P§;
   import §<M§.Wallet;
   import §?_§.§9! §;
   import §?o§.§4#?§;
   import §?o§.§79§;
   import §[#v§.§4e§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class § "g§ extends §;O§ implements §'r§, §=$5§, §;"P§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      public static var §=$1§:int = -1;
      
      public static const §>!#§:String = "1000";
      
      public static const §>#%§:String = "2000";
      
      public static const §%$-§:String = "pagination_";
       
      
      private var §3"U§:§>!H§;
      
      private var §1"w§:Wallet;
      
      public function § "g§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§3"U§ = §^"a§.§'e§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§79§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name == §>!#§ && !(this is §[!=§))
         {
            §@!D§.visible = false;
            §%!?§(§[!=§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
            return;
         }
         if(_loc2_.isTournament && !(this is §4e§))
         {
            §@!D§.visible = false;
            §%!?§(§4e§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
         }
         if(_loc2_.name == §`$D§.§8V§ && !(this is §`$D§))
         {
            §@!D§.visible = false;
            §%!?§(§`$D§.STATE_NAME);
         }
         §@!D§.visible = true;
         (§+!p§.§;"-§ as §^"a§).§""G§.§%"E§ = false;
         (§+!p§.§;"-§ as §^"a§).§7"2§(§9! §.§4$D§);
         if(§+!p§.§`?§.background)
         {
            §+!p§.§`?§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §@!D§.setText(_loc3_,"TextField_LevelName");
         this.§#B§(_loc2_);
         if(§=$1§ != -1)
         {
            moveToPage(§=$1§);
            §=$1§ = -1;
         }
         this.§1!y§();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§ "@§(new Wallet(this,true,true,false));
         §'@§.trackPageView(this,null,this.§?"t§());
      }
      
      protected function §1!y§() : void
      {
         if(previousState != §@#4§.STATE_NAME)
         {
            (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§[Q§,null);
            this.§3"U§.§@"S§().addEventListener(§ !w§.§'#y§,this.§,!6§);
            this.§3"U§.§@"S§().loadItems(0,0);
         }
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         §'@§.trackPageView(this,null,this.§?"t§());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         §'@§.trackPageView(this,null,this.§?"t§());
      }
      
      protected function §#B§(param1:§79§) : void
      {
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.§2#2§(param1);
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.§@r§(param1);
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.§72§(param1);
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§2$4§(param1);
         this.§]!;§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §]!;§(param1:§79§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §@!D§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §@!D§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§"#q§();
         this.§+E§(this.§1"w§);
      }
      
      protected function §"#q§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsBase.singleton.dataModel.userProgress as §>#G§).§<u§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §=@§.§9!x§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * mLevelManager.getEpisodeForLevel(param1).levelsPerPage;
         return _loc6_;
      }
      
      override protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.singleton.popupManager.§!=§())
         {
            return;
         }
         super.onKeyEvent(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         if(param2.length > 0 && param3 is §?$1§ && ((param3 as §?$1§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §?$1§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection12" || (param3 as §?$1§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15"))
         {
            if(!§="6§)
            {
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §]!P§.§5$5§ = param2.toLowerCase();
               mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
               §%!?§(StateCutScene.STATE_NAME);
            }
         }
         else
         {
            super.onUIInteraction(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  §%!?§(§+!Y§.STATE_NAME);
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§@!D§.getItemByName("TextField_LevelNumberSmall") as §-$5§).§>$D§.text = (param1 + 1).toString();
      }
      
      public function §2!^§() : String
      {
         return §'@§.§ "b§ + "_" + mLevelManager.getCurrentEpisodeModel().writtenName;
      }
      
      public function §6#U§() : String
      {
         if(mLevelManager.getCurrentEpisodeModel())
         {
            return mLevelManager.getCurrentEpisodeModel().writtenName;
         }
         return null;
      }
      
      public function §?"t§() : String
      {
         return §%$-§ + (§!#q§ + 1).toString();
      }
      
      public function §9M§() : String
      {
         return STATE_NAME;
      }
      
      private function §,!6§(param1:§ !w§) : void
      {
         this.§3"U§.§@"S§().removeEventListener(§ !w§.§'#y§,this.§,!6§);
         (§+!p§.§;"-§ as §^"a§).§7#$§(§9! §.§[Q§,this.§3"U§.§@"S§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§+!p§.§;"-§ as §^"a§).§&m§())
         {
            _loc1_ = §[$2§.§ #H§;
         }
         if(this.§1"w§)
         {
            this.§1"w§.§6""§.scaleX = _loc1_;
            this.§1"w§.§6""§.scaleY = _loc1_;
         }
      }
      
      public function § "@§(param1:Wallet) : void
      {
         this.§1"w§ = param1;
      }
      
      public function §+E§(param1:Wallet) : void
      {
         if(this.§1"w§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §4$8§() : Wallet
      {
         return this.§1"w§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §@!D§.movieClip;
      }
   }
}
