package §7"@§
{
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §%!v§.§[<§;
   import §2!i§.§'M§;
   import §4!e§.§+w§;
   import §4!e§.§-"E§;
   import §6!B§.§ do§;
   import §6!B§.§&!7§;
   import §[!K§.§-k§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   
   public class §]!K§ extends §8"D§
   {
      
      public static var §`s§:int = -1;
      
      public static const §"!x§:String = "1000";
      
      public static const §!w§:String = "2000";
      
      public static const §9a§:String = "3000";
      
      public static const EPISODE_GREEN_DAY_EGG:String = "3001";
       
      
      public function §]!K§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         var _loc1_:§>x§ = null;
         super.activate();
         _loc1_ = LevelManager.§9"D§();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.name == §"!x§ && !(this is §9!X§))
         {
            §6w§.visible = false;
            mNextState = §9!X§.STATE_NAME;
            LevelManager.§'!O§ = null;
            return;
         }
         if(_loc1_.name == §!w§ && !(this is §-k§))
         {
            §6w§.visible = false;
            mNextState = §-k§.STATE_NAME;
            LevelManager.§'!O§ = null;
         }
         if(_loc1_.name == §9a§ && !(this is §1!J§))
         {
            §6w§.visible = false;
            mNextState = §1!J§.STATE_NAME;
            LevelManager.§'!O§ = null;
            return;
         }
         §6w§.visible = true;
         (§#6§.§ q§ as §3T§).§9!Q§.§`W§ = false;
         (§#6§.§ q§ as §3T§).§?D§("");
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§7!y§);
         if(§#6§.§6!z§.background)
         {
            §#6§.§6!z§.background.§^!P§();
         }
         var _loc2_:String = LevelManager.§9"D§().writtenName;
         §6w§.setText(_loc2_,"TextField_LevelName");
         this.countStarsAndFeathers(_loc1_);
         if(§`s§ != -1)
         {
            §`6§(§`s§);
            §`s§ = -1;
         }
      }
      
      protected function countStarsAndFeathers(param1:§>x§) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§9o§(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.§`!g§(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§7L§(param1);
         var _loc5_:int = AngryBirdsFP11.sUserProgress.§,!b§(param1);
         this.showStarsAndFeathers(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function showStarsAndFeathers(param1:§>x§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §6w§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §6w§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§ do§ = §3T§.§67§.§2!c§();
         _loc1_.§"!r§(§&!7§.§3V§);
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
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §[<§).§#!o§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §8B§.§6"C§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§^_§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         §§push(param2.length > 0 && param3 is §+w§);
         if(param2.length > 0 && param3 is §+w§)
         {
            §§pop();
            if((param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §+w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15")
            {
               if(!§6!H§)
               {
                  LevelManager.§-!4§(LevelManager.§;!f§(param2.toLowerCase()));
                  mNextState = StateCutScene.STATE_NAME;
               }
            }
            else
            {
               super.uiInteractionHandler(param1,param2,param3);
               switch(param2)
               {
                  case "showCredits":
                     mNextState = §9<§.STATE_NAME;
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§6w§.getItemByName("TextField_LevelNumberSmall") as §-"E§).§5!=§.text = (param1 + 1).toString();
      }
   }
}
