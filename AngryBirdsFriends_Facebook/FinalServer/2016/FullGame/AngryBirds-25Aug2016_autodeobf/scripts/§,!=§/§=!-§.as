package §,!=§
{
   import §#v§.§#!?§;
   import §#v§.§=!Z§;
   import §'!U§.§0!?§;
   import §'U§.§]#[§;
   import §-"i§.§%!'§;
   import §0#d§.§<#u§;
   import §4#%§.§@#@§;
   import §4q§.§!#Q§;
   import §6"r§.§9a§;
   import §6"r§.§]$!§;
   import §8§.§ ;§;
   import §8§.§#$+§;
   import §8§.§,#`§;
   import §9!s§.§8!P§;
   import §;4§.§9X§;
   import §>!#§.§ 1§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?§.§>"$§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   
   public class §=!-§ extends §<!B§ implements § 1§, §@#@§
   {
      
      public static const STATE_NAME:String = "LevelSelectionState";
      
      public static var §%$,§:int = -1;
      
      public static const §%d§:String = "LevelConfirmSound";
      
      public static const §?"v§:int = 1;
      
      public static const §-!w§:Number = 1;
      
      public static const §]#o§:String = "1000";
      
      public static const §&!>§:String = "2000";
      
      public static const §`#a§:String = "pagination_";
       
      
      private var §;r§:§9X§;
      
      public function §=!-§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelSelectionState")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§.getItemByName("Button_Fullscreen").setVisibility(false);
         §#$+§.§9"]§(§%d§,§?"v§,§-!w§);
         this.§;r§ = §8G§.§6!r§;
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         var _loc2_:§=!Z§ = mLevelManager.getCurrentEpisodeModel();
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.name == §]#o§ && !(this is §!a§))
         {
            §!$§.visible = false;
            §7P§(§!a§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
            return;
         }
         if(_loc2_.isTournament && !(this is §%!'§))
         {
            §!$§.visible = false;
            §7P§(§%!'§.STATE_NAME);
            mLevelManager.resetCurrentLevel();
         }
         if(_loc2_.name == §5#J§.§2#W§ && !(this is §5#J§))
         {
            §!$§.visible = false;
            §7P§(§5#J§.STATE_NAME);
         }
         §!$§.visible = true;
         (§>"$§.§<_§ as §8G§).§0"n§.§'"C§ = false;
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§4$&§);
         if(§>"$§.§3#'§.background)
         {
            §>"$§.§3#'§.background.stopAmbientSound();
         }
         var _loc3_:String = mLevelManager.getCurrentEpisodeModel().writtenName;
         §!$§.setText(_loc3_,"TextField_LevelName");
         this.§3E§(_loc2_);
         if(§%$,§ != -1)
         {
            moveToPage(§%$,§);
            §%$,§ = -1;
         }
         this.§9"m§();
         §,"W§.trackPageView(this,null,this.§^#r§());
      }
      
      protected function §9"m§() : void
      {
         if(previousState != §-!1§.STATE_NAME)
         {
            (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§'$7§,null);
            this.§;r§.§%!P§().addEventListener(§8!P§.§,"m§,this.§7!B§);
            this.§;r§.§%!P§().loadItems(0,0);
         }
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         §,"W§.trackPageView(this,null,this.§^#r§());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         §,"W§.trackPageView(this,null,this.§^#r§());
      }
      
      protected function §3E§(param1:§=!Z§) : void
      {
         var _loc2_:int = AngryBirdsBase.singleton.dataModel.userProgress.§1#N§(param1);
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.§5#A§(param1);
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.§;]§(param1);
         var _loc5_:int = AngryBirdsBase.singleton.dataModel.userProgress.§ !m§(param1);
         this.§%$2§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §%$2§(param1:§=!Z§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §!$§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §!$§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§,#`§ = §8G§.§%#S§.§[A§();
         _loc1_.§6x§(§ ;§.§0e§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§`e§();
      }
      
      protected function §`e§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§).§-a§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §@`§.§4!i§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * mLevelManager.getEpisodeForLevel(param1).levelsPerPage;
         return _loc6_;
      }
      
      override protected function onKeyEvent(param1:KeyboardEvent) : void
      {
         if(AngryBirdsBase.singleton.popupManager.§5"'§())
         {
            return;
         }
         super.onKeyEvent(param1);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         if(param2.length > 0 && param3 is §9a§ && ((param3 as §9a§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection" || (param3 as §9a§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection12" || (param3 as §9a§).mParentContainer.mParentContainer.name == "Repeater_LevelSelection15"))
         {
            if(!§7!s§)
            {
               §#$+§.playSound("Menu_Confirm",§%d§);
               §-#A§.§["'§ = param2.toLowerCase();
               mLevelManager.loadLevel(mLevelManager.getValidLevelId(param2.toLowerCase()));
               §7P§(StateCutScene.STATE_NAME);
            }
         }
         else
         {
            super.onUIInteraction(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  §7P§(§"$6§.STATE_NAME);
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§!$§.getItemByName("TextField_LevelNumberSmall") as §]$!§).§@]§.text = (param1 + 1).toString();
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§-`§ + "_" + mLevelManager.getCurrentEpisodeModel().writtenName;
      }
      
      public function §7">§() : String
      {
         if(mLevelManager.getCurrentEpisodeModel())
         {
            return mLevelManager.getCurrentEpisodeModel().writtenName;
         }
         return null;
      }
      
      public function §^#r§() : String
      {
         return §`#a§ + (§?"1§ + 1).toString();
      }
      
      public function §<$#§() : String
      {
         return STATE_NAME;
      }
      
      private function §7!B§(param1:§8!P§) : void
      {
         this.§;r§.§%!P§().removeEventListener(§8!P§.§,"m§,this.§7!B§);
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§'$7§,this.§;r§.§%!P§().data);
      }
   }
}
