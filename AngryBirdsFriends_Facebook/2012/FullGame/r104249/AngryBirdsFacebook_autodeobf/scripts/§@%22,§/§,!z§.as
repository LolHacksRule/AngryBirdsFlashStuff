package §@",§
{
   import §-B§.§#p§;
   import §-B§.§8"B§;
   import §5!G§.§&2§;
   import §6k§.§-#§;
   import §;n§.§^!;§;
   import §<";§.§'y§;
   import §>s§.§;"&§;
   import §>s§.§@c§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   
   public class §,!z§ extends §[2§
   {
      
      public static var §;!N§:int = -1;
      
      public static const §case §:String = "1000";
      
      public static const §1o§:String = "2000";
       
      
      public function §,!z§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         var _loc1_:§=!-§ = null;
         super.activate();
         _loc1_ = LevelManager.§6!6§();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.name == §case § && !(this is §@W§))
         {
            §2!K§.visible = false;
            mNextState = §@W§.STATE_NAME;
            LevelManager.§`-§ = null;
            return;
         }
         if(_loc1_.name == §1o§ && !(this is §-#§))
         {
            §2!K§.visible = false;
            mNextState = §-#§.STATE_NAME;
            LevelManager.§`-§ = null;
         }
         §2!K§.visible = true;
         (§&2§.§5!k§ as §,"I§).§=_§.§3_§ = false;
         (§&2§.§5!k§ as §,"I§).§'"'§("");
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§&"5§);
         if(§&2§.§],§.background)
         {
            §&2§.§],§.background.§#"§();
         }
         var _loc2_:String = LevelManager.§6!6§().writtenName;
         §2!K§.setText(_loc2_,"TextField_LevelName");
         this.§3!]§(_loc1_);
         if(§;!N§ != -1)
         {
            §;"B§(§;!N§);
            §;!N§ = -1;
         }
      }
      
      protected function §3!]§(param1:§=!-§) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§9!C§(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.§!5§(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§8!;§(param1);
         var _loc5_:int = AngryBirdsFP11.sUserProgress.§+"1§(param1);
         this.§#x§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §#x§(param1:§=!-§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §2!K§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §2!K§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§;"&§ = §,"I§.§&q§.§1H§();
         _loc1_.§ 7§(§@c§.§?!M§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?"0§();
      }
      
      protected function §?"0§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §'y§).§7I§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §>"5§.§6s§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§0"§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         if(param2.length > 0 && param3 is §8"B§ && ((param3 as §8"B§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §8"B§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15"))
         {
            if(!§1!e§)
            {
               LevelManager.§^p§(LevelManager.§&!1§(param2.toLowerCase()));
               mNextState = StateCutScene.STATE_NAME;
            }
         }
         else
         {
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  mNextState = §`f§.STATE_NAME;
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§2!K§.getItemByName("TextField_LevelNumberSmall") as §#p§).§`E§.text = (param1 + 1).toString();
      }
   }
}
