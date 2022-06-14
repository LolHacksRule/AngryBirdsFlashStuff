package §7"@§
{
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §'!s§.§%?§;
   import §+N§.§@!]§;
   import §2!i§.§'M§;
   import §4!e§.§^!D§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   
   public class §1G§ extends §8!u§
   {
       
      
      protected var §]4§:Array;
      
      public function §1G§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§]4§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§]4§.push((§6w§.getItemByName("Button_Menu") as §^!D§).x);
         this.§]4§.push((§6w§.getItemByName("Button_Replay") as §^!D§).x);
         this.§]4§.push((§6w§.getItemByName("Button_MightyEagle") as §^!D§).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
         §#6§.§6!z§.background.§^!P§();
         §6w§.getItemByName("Button_FreePowerups").setVisibility(§3T§.§67§.§0+§.§3"F§);
         var _loc1_:String = LevelManager.§6!M§();
         var _loc2_:String = LevelManager.§9"D§().name;
         if(_loc2_ == "1000" || _loc2_ == "3001" || _loc1_ == null)
         {
            §6w§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SHOP":
               §%?§.§#"9§();
               break;
            case "SHARE_DEFAULT":
               §@!]§.§9"'§("shareDefault",LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§),0,false);
               break;
            case "EMBED":
               §%?§.§"!C§(LevelManager.§'!O§,LevelManager.§9"D§().writtenName + "-" + § <§.§2!V§(LevelManager.§'!O§),§#6§.§'" §.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §%?§.§-!?§();
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§>x§ = LevelManager.§9"D§();
         if(_loc2_.name == §]!K§.§"!x§)
         {
            _loc1_ = §9!X§.STATE_NAME;
         }
         else if(_loc2_.name == §]!K§.§9a§ || _loc2_.name == §]!K§.EPISODE_GREEN_DAY_EGG)
         {
            _loc1_ = §1!J§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §8"D§.STATE_NAME;
      }
   }
}
