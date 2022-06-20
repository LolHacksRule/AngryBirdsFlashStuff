package §[!K§
{
   import §"",§.§+§;
   import §"",§.§2[§;
   import §+I§.§9!%§;
   import §,"-§.§2!P§;
   import §1"2§.§,!]§;
   import §1k§.§;W§;
   import §1k§.§`!d§;
   import §<G§.§5w§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import com.AngryBirds.friendsbar.§2!h§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   
   public class §%!_§ extends §=B§
   {
      
      public static var §=!V§:int = -1;
      
      public static const §-@§:String = "1000";
      
      public static const §2!w§:String = "2000";
      
      public static const §5H§:String = "3000";
      
      public static const EPISODE_GREEN_DAY_EGG:String = "3001";
       
      
      public function §%!_§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         var _loc1_:§]f§ = null;
         super.activate();
         _loc1_ = LevelManager.§8!§();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.name == §-@§ && !(this is §6!%§))
         {
            §2"-§.visible = false;
            mNextState = §6!%§.STATE_NAME;
            LevelManager.§[!<§ = null;
            return;
         }
         if(_loc1_.name == §2!w§ && !(this is §5w§))
         {
            §2"-§.visible = false;
            mNextState = §5w§.STATE_NAME;
            LevelManager.§[!<§ = null;
         }
         if(_loc1_.name == §5H§ && !(this is §4E§))
         {
            §2"-§.visible = false;
            mNextState = §4E§.STATE_NAME;
            LevelManager.§[!<§ = null;
            return;
         }
         §2"-§.visible = true;
         (§9!%§.§ !W§ as § W§).§""B§.§0!o§ = false;
         (§9!%§.§ !W§ as § W§).§+!9§("");
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§if §);
         if(§9!%§.§!!M§.background)
         {
            §9!%§.§!!M§.background.§+!3§();
         }
         var _loc2_:String = LevelManager.§8!§().writtenName;
         §2"-§.setText(_loc2_,"TextField_LevelName");
         this.countStarsAndFeathers(_loc1_);
         if(§=!V§ != -1)
         {
            §&!"§(§=!V§);
            §=!V§ = -1;
         }
      }
      
      protected function countStarsAndFeathers(param1:§]f§) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§@y§(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.§56§(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§8!^§(param1);
         var _loc5_:int = AngryBirdsFP11.sUserProgress.§6!X§(param1);
         this.showStarsAndFeathers(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function showStarsAndFeathers(param1:§]f§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §2"-§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §2"-§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§;W§ = § W§.§%!y§.§1`§();
         _loc1_.§>4§(§`!d§.§90§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.stopCurrentTheme();
      }
      
      protected function stopCurrentTheme() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §2!P§).§?!!§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §#!J§.§1!Y§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§"!r§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         if(param2.length > 0 && param3 is §2[§ && ((param3 as §2[§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §2[§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15"))
         {
            if(!§@!s§)
            {
               LevelManager.§'!"§(LevelManager.§?">§(param2.toLowerCase()));
               mNextState = StateCutScene.STATE_NAME;
            }
         }
         else
         {
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  mNextState = §2&§.STATE_NAME;
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§2"-§.getItemByName("TextField_LevelNumberSmall") as §+§).§"<§.text = (param1 + 1).toString();
      }
   }
}
