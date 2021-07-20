package §@",§
{
   import §&!"§.§`B§;
   import §-B§.§]!<§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §<<§.§=!L§;
   import §`!n§.§-[§;
   import §`!n§.§=!-§;
   import §`!n§.LevelManager;
   import com.AngryBirds.friendsbar.§=!7§;
   
   public class §9" § extends §9!M§
   {
       
      
      protected var §2">§:Array;
      
      public function §9" §(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§2">§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§2">§.push((§2!K§.getItemByName("Button_Menu") as §]!<§).x);
         this.§2">§.push((§2!K§.getItemByName("Button_Replay") as §]!<§).x);
         this.§2">§.push((§2!K§.getItemByName("Button_MightyEagle") as §]!<§).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§&2§.§5!k§ as §,"I§).§'!e§(§=!7§.§?J§);
         §&2§.§],§.background.§#"§();
         §2!K§.getItemByName("Button_FreePowerups").setVisibility(§,"I§.§&q§.§[y§.§?"F§);
         var _loc1_:String = LevelManager.§&4§();
         var _loc2_:String = LevelManager.§6!6§().name;
         if(_loc2_ == "1000" || _loc2_ == "3001" || _loc1_ == null)
         {
            §2!K§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SHOP":
               §`B§.§8m§();
               break;
            case "SHARE_DEFAULT":
               §=!L§.§+">§("shareDefault",LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§),0,false);
               break;
            case "EMBED":
               §`B§.§ !6§(LevelManager.§`-§,LevelManager.§6!6§().writtenName + "-" + §-[§.§8"4§(LevelManager.§`-§),§&2§.§,!x§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §`B§.§ if§();
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§=!-§ = LevelManager.§6!6§();
         if(_loc2_.name == §,!z§.§case §)
         {
            _loc1_ = §@W§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §[2§.STATE_NAME;
      }
   }
}
