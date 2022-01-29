package §"!@§
{
   import §"!!§.§!"&§;
   import §&T§.§9#a§;
   import §&T§.Wallet;
   import §-!S§.§##>§;
   import §0#m§.§8#§;
   import §3#T§.§'§;
   import §3r§.§]!4§;
   import §5P§.§""C§;
   import §9#B§.§=!L§;
   import §;#D§.§3#U§;
   import §;$3§.§"m§;
   import §;$3§.§8=§;
   import §<h§.§"!X§;
   import §<h§.§%M§;
   import §@!M§.§!"p§;
   import §`!e§.§#"L§;
   import §`7§.§ try§;
   import §`7§.§7E§;
   import §`7§.§`"x§;
   import com.rovio.assets.§!"f§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §false§ extends §1S§ implements §7E§, §8#§, §9#a§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      public static var §4"0§:int = -1;
      
      public static const §2"O§:String = "1000";
      
      public static const §;#i§:String = "2000";
      
      public static const §2#]§:String = "pagination_";
       
      
      private var §5"§:§!"&§;
      
      private var §&"K§:Wallet;
      
      public function §false§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§5"§ = §,A§.§""`§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§"m§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name == §2"O§ && !(this is § !v§))
         {
            §`!H§.visible = false;
            §1"h§(§ !v§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
            return;
         }
         if(_loc2_.isTournament && !(this is §=!L§))
         {
            §`!H§.visible = false;
            §1"h§(§=!L§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
         }
         if(_loc2_.name == §>N§.§]$+§ && !(this is §>N§))
         {
            §`!H§.visible = false;
            §1"h§(§>N§.STATE_NAME);
         }
         §`!H§.visible = true;
         (§3#U§.§9#^§ as §,A§).§%#@§.§"!m§ = false;
         (§3#U§.§9#^§ as §,A§).§5!!§(§]!4§.§6"'§);
         if(§3#U§.§#$4§.background)
         {
            §3#U§.§#$4§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §`!H§.setText(_loc3_,"TextField_LevelName");
         this.§<# §(_loc2_);
         if(§4"0§ != -1)
         {
            moveToPage(§4"0§);
            §4"0§ = -1;
         }
         this.§,"j§();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§[?§(new Wallet(this,true,true,false));
         §`"x§.trackPageView(this,null,this.§+-§());
      }
      
      protected function §,"j§() : void
      {
         if(previousState != §>$<§.STATE_NAME)
         {
            (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§5#a§,null);
            this.§5"§.§3!-§().addEventListener(§#"L§.§-#0§,this.§92§);
            this.§5"§.§3!-§().loadItems(0,0);
         }
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         §`"x§.trackPageView(this,null,this.§+-§());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         §`"x§.trackPageView(this,null,this.§+-§());
      }
      
      protected function §<# §(param1:§"m§) : void
      {
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.§1n§(param1);
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.§]!u§(param1);
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.§2!1§(param1);
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§&#c§(param1);
         this.§@#!§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §@#!§(param1:§"m§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §`!H§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §`!H§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§["!§();
         this.§8!3§(this.§&"K§);
      }
      
      protected function §["!§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsBase.singleton.dataModel.userProgress as §##>§).§,C§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §!"f§.§##?§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * mLevelManager.getEpisodeForLevel(param1).levelsPerPage;
         return _loc6_;
      }
      
      override protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.singleton.popupManager.§#"q§())
         {
            return;
         }
         super.onKeyEvent(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         §§push(param2.length > 0 && param3 is §"!X§);
         if(param2.length > 0 && param3 is §"!X§)
         {
            §§pop();
            if((param3 as §"!X§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §"!X§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection12" || (param3 as §"!X§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15")
            {
               if(!§+"#§)
               {
                  §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
                  § try§.§"!c§ = param2.toLowerCase();
                  mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
                  §1"h§(StateCutScene.STATE_NAME);
               }
            }
            else
            {
               super.onUIInteraction(param1,param2,param3);
               switch(param2)
               {
                  case "showCredits":
                     §1"h§(§ !K§.STATE_NAME);
               }
            }
            return;
         }
         §§goto(addr83);
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§`!H§.getItemByName("TextField_LevelNumberSmall") as §%M§).§4!"§.text = (param1 + 1).toString();
      }
      
      public function §!3§() : String
      {
         return §`"x§.§3#j§ + "_" + mLevelManager.getCurrentEpisodeModel().writtenName;
      }
      
      public function §0'§() : String
      {
         if(mLevelManager.getCurrentEpisodeModel())
         {
            return mLevelManager.getCurrentEpisodeModel().writtenName;
         }
         return null;
      }
      
      public function §+-§() : String
      {
         return §2#]§ + (§<!2§ + 1).toString();
      }
      
      public function §+#k§() : String
      {
         return STATE_NAME;
      }
      
      private function §92§(param1:§#"L§) : void
      {
         this.§5"§.§3!-§().removeEventListener(§#"L§.§-#0§,this.§92§);
         (§3#U§.§9#^§ as §,A§).§]!0§(§]!4§.§5#a§,this.§5"§.§3!-§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§3#U§.§9#^§ as §,A§).§`$<§())
         {
            _loc1_ = §>"c§.§ "'§;
         }
         if(this.§&"K§)
         {
            this.§&"K§.§=#-§.scaleX = _loc1_;
            this.§&"K§.§=#-§.scaleY = _loc1_;
         }
      }
      
      public function §[?§(param1:Wallet) : void
      {
         this.§&"K§ = param1;
      }
      
      public function §8!3§(param1:Wallet) : void
      {
         if(this.§&"K§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §8"K§() : Wallet
      {
         return this.§&"K§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §`!H§.movieClip;
      }
   }
}
