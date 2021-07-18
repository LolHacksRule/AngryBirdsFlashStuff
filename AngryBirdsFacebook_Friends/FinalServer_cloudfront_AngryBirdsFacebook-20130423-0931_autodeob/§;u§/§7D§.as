package §;u§
{
   import §%!I§.§]!M§;
   import §%i§.§4!w§;
   import §%i§.§4"9§;
   import §1!t§.§""B§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import com.AngryBirds.friendsbar.§]a§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   
   public class §7D§ extends §9"@§ implements §4d§
   {
      
      public static var §%"E§:int = -1;
      
      public static const §^!i§:String = "1000";
      
      public static const §9!§:String = "2000";
      
      public static const §2"#§:String = "pagination_";
       
      
      public function §7D§(param1:Boolean = false, param2:String = "LevelSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         var _loc1_:§3-§ = LevelManager.§`"Q§();
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_.name == §^!i§ && !(this is §4"Y§))
         {
            §2"@§.visible = false;
            mNextState = §4"Y§.STATE_NAME;
            LevelManager.§ T§ = null;
            return;
         }
         if(_loc1_.name == §9!§ && !(this is §]!M§))
         {
            §2"@§.visible = false;
            mNextState = §]!M§.STATE_NAME;
            LevelManager.§ T§ = null;
         }
         if(_loc1_.name == §5<§.§&7§ && !(this is §5<§))
         {
            §2"@§.visible = false;
            mNextState = §5<§.STATE_NAME;
         }
         §2"@§.visible = true;
         (§?l§.§ "G§ as §%"S§).§96§.§<!J§ = false;
         (§?l§.§ "G§ as §%"S§).§!n§("");
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§^!r§);
         if(§?l§.§'h§.background)
         {
            §?l§.§'h§.background.§!!K§();
         }
         var _loc2_:String = LevelManager.§`"Q§().writtenName;
         §2"@§.setText(_loc2_,"TextField_LevelName");
         this.§,!Z§(_loc1_);
         if(§%"E§ != -1)
         {
            §+!O§(§%"E§);
            §%"E§ = -1;
         }
         §@q§.trackPageView(this,null,this.§<"8§());
      }
      
      override protected function gotoNextPage() : void
      {
         super.gotoNextPage();
         §@q§.trackPageView(this,null,this.§<"8§());
      }
      
      override protected function gotoPrevPage() : void
      {
         super.gotoPrevPage();
         §@q§.trackPageView(this,null,this.§<"8§());
      }
      
      protected function §,!Z§(param1:§3-§) : void
      {
         var _loc2_:int = AngryBirdsFP11.sUserProgress.§[!a§(param1);
         var _loc3_:int = AngryBirdsFP11.sUserProgress.§3W§(param1);
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§]L§(param1);
         var _loc5_:int = AngryBirdsFP11.sUserProgress.§="'§(param1);
         this.§6"R§(param1,_loc2_,_loc3_,_loc4_,_loc5_);
      }
      
      protected function §6"R§(param1:§3-§, param2:int, param3:int, param4:int, param5:int) : void
      {
         §2"@§.setText(param2 + "/" + param3,"Textfield_CollectedStars");
         §2"@§.setText(param4 + "/" + param5,"Textfield_ME_Score");
      }
      
      override protected function playThemeMusic() : void
      {
         var _loc1_:§6!n§ = §%"S§.§!C§.§#"C§();
         _loc1_.§3%§(§;!e§.§^a§);
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]Y§();
      }
      
      protected function §]Y§() : void
      {
      }
      
      override protected function makeButtonForLevel(param1:String, param2:Boolean, param3:Class, param4:int, param5:int) : MovieClip
      {
         var _loc8_:MovieClip = null;
         var _loc6_:MovieClip = super.makeButtonForLevel(param1,param2,param3,param4,param5);
         var _loc7_:int;
         if((_loc7_ = (AngryBirdsFP11.sUserProgress as §#!$§).§;M§(param1)) && _loc7_ <= 3)
         {
            (_loc8_ = new §?q§.§ q§("LevelSelectionCrown")()).gotoAndStop(_loc7_);
            _loc8_.x = -78;
            _loc8_.y = -102;
            _loc6_.addChild(_loc8_);
         }
         _loc6_.TextField_LevelNum.text.text = param4 + 1 + param5 * LevelManager.§5!T§(param1).levelsPerPage;
         return _loc6_;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         if(param2.length > 0 && param3 is §4!w§ && ((param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection" || (param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection12" || (param3 as §4!w§).mParentContainer.mParentContainer.mName == "Repeater_LevelSelection15"))
         {
            if(!§?"[§)
            {
               LevelManager.§,!m§(LevelManager.§["S§(param2.toLowerCase()));
               mNextState = StateCutScene.STATE_NAME;
            }
         }
         else
         {
            super.uiInteractionHandler(param1,param2,param3);
            switch(param2)
            {
               case "showCredits":
                  mNextState = §&"[§.STATE_NAME;
            }
         }
      }
      
      override protected function updatePageNumber(param1:int) : void
      {
         (§2"@§.getItemByName("TextField_LevelNumberSmall") as §4"9§).§-" §.text = (param1 + 1).toString();
      }
      
      public function §=,§() : String
      {
         return §@q§.§>!A§;
      }
      
      public function §8"3§() : String
      {
         if(LevelManager.§`"Q§())
         {
            return LevelManager.§`"Q§().writtenName;
         }
         return null;
      }
      
      public function §<"8§() : String
      {
         return §2"#§ + (§0!y§ + 1).toString();
      }
   }
}
