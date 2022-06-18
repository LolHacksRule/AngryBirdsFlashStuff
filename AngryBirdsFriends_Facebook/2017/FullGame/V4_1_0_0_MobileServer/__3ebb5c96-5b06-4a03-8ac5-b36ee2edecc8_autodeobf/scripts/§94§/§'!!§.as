package §94§
{
   import §%#A§.§=!k§;
   import §%#A§.§^!4§;
   import §%y§.§8[§;
   import §%y§.Wallet;
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §5"?§.§4"-§;
   import §6"r§.§!#A§;
   import §6V§.§7#M§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8"X§.§^!E§;
   import §<"1§.§'"S§;
   import §@!n§.§0!L§;
   import §@#§.§9##§;
   import §@#§.§^#Q§;
   import §[§.§]"w§;
   import §[G§.§9#R§;
   import §`!R§.§&"8§;
   import com.rovio.assets.§+$#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class §'!!§ extends §7!c§ implements §7#M§, §]"w§, §8[§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      public static var §^"C§:int = -1;
      
      public static const §%"]§:String = "1000";
      
      public static const §1!E§:String = "2000";
      
      public static const §0$%§:String = "pagination_";
       
      
      private var §4#3§:§9#R§;
      
      private var §3!B§:Wallet;
      
      public function §'!!§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§4#3§ = §-#+§.§03§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§9##§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name == §%"]§ && !(this is §<![§))
         {
            §?Q§.visible = false;
            §5"p§(§<![§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
            return;
         }
         if(_loc2_.isTournament && !(this is §^!E§))
         {
            §?Q§.visible = false;
            §5"p§(§^!E§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
         }
         if(_loc2_.name == §,#E§.§4#"§ && !(this is §,#E§))
         {
            §?Q§.visible = false;
            §5"p§(§,#E§.STATE_NAME);
         }
         §?Q§.visible = true;
         (§!#A§.§>q§ as §-#+§).§[#G§.§''§ = false;
         (§!#A§.§>q§ as §-#+§).§8#d§(§&"8§.§ #Y§);
         if(§!#A§.§#F§.background)
         {
            §!#A§.§#F§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §?Q§.setText(_loc3_,"TextField_LevelName");
         this.§5"&§(_loc2_);
         if(§^"C§ != -1)
         {
            moveToPage(§^"C§);
            §^"C§ = -1;
         }
         this.§3j§();
         AngryBirdsBase.singleton.playThemeMusic();
         this.§##Y§(new Wallet(this,true,true,false));
         §`"5§.trackPageView(this,null,this.§;Z§());
      }
      
      protected function §3j§() : void
      {
         if(previousState != §-!c§.STATE_NAME)
         {
            (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§[#[§,null);
            this.§4#3§.§&#_§().addEventListener(§0!L§.§@>§,this.§,h§);
            this.§4#3§.§&#_§().loadItems(0,0);
         }
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         §`"5§.trackPageView(this,null,this.§;Z§());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         §`"5§.trackPageView(this,null,this.§;Z§());
      }
      
      protected function §5"&§(param1:§9##§) : void
      {
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.§@"V§(param1);
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.§%n§(param1);
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.§8M§(param1);
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§26§(param1);
         this.§"U§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §"U§(param1:§9##§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §?Q§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §?Q§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§1#c§();
         this.§"#H§(this.§3!B§);
      }
      
      protected function §1#c§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsBase.singleton.dataModel.userProgress as §4"-§).§^x§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §+$#§.§["`§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * mLevelManager.getEpisodeForLevel(param1).levelsPerPage;
         return _loc6_;
      }
      
      override protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.singleton.popupManager.§`$§())
         {
            return;
         }
         super.onKeyEvent(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         if(param2.length > 0 && param3 is §=!k§ && ((param3 as §=!k§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §=!k§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection12" || (param3 as §=!k§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15"))
         {
            if(!§]"L§)
            {
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §?!=§.§8!I§ = param2.toLowerCase();
               mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
               §5"p§(StateCutScene.STATE_NAME);
            }
         }
         else
         {
            super.onUIInteraction(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  §5"p§(§@"X§.STATE_NAME);
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§?Q§.getItemByName("TextField_LevelNumberSmall") as §^!4§).§[!&§.text = (param1 + 1).toString();
      }
      
      public function §<"b§() : String
      {
         return §`"5§.§;"H§ + "_" + mLevelManager.getCurrentEpisodeModel().writtenName;
      }
      
      public function §>"-§() : String
      {
         if(mLevelManager.getCurrentEpisodeModel())
         {
            return mLevelManager.getCurrentEpisodeModel().writtenName;
         }
         return null;
      }
      
      public function §;Z§() : String
      {
         return §0$%§ + (§1!#§ + 1).toString();
      }
      
      public function §-"K§() : String
      {
         return STATE_NAME;
      }
      
      private function §,h§(param1:§0!L§) : void
      {
         this.§4#3§.§&#_§().removeEventListener(§0!L§.§@>§,this.§,h§);
         (§!#A§.§>q§ as §-#+§).§6#1§(§&"8§.§[#[§,this.§4#3§.§&#_§().data);
      }
      
      override protected function updateUIScale() : void
      {
         var _loc1_:Number = 1;
         if((§!#A§.§>q§ as §-#+§).§3#3§())
         {
            _loc1_ = §>!&§.§<!3§;
         }
         if(this.§3!B§)
         {
            this.§3!B§.§[!R§.scaleX = _loc1_;
            this.§3!B§.§[!R§.scaleY = _loc1_;
         }
      }
      
      public function §##Y§(param1:Wallet) : void
      {
         this.§3!B§ = param1;
      }
      
      public function §"#H§(param1:Wallet) : void
      {
         if(this.§3!B§)
         {
            param1.dispose();
         }
         param1 = null;
      }
      
      public function get §2",§() : Wallet
      {
         return this.§3!B§;
      }
      
      public function get walletContainer() : Sprite
      {
         return §?Q§.movieClip;
      }
   }
}
