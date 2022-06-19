package §[!K§
{
   import §"",§.§<?§;
   import §+I§.§9!%§;
   import §1"2§.§,!]§;
   import §7N§.§43§;
   import §<"1§.§,U§;
   import §[!z§.§"5§;
   import §[!z§.LevelManager;
   import §[!z§.§]f§;
   import com.AngryBirds.friendsbar.§2!h§;
   
   public class §6!y§ extends §,+§
   {
       
      
      private var §#v§:Array;
      
      public function §6!y§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§#v§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§#v§.push((§2"-§.getItemByName("Button_Menu") as §<?§).x);
         this.§#v§.push((§2"-§.getItemByName("Button_Replay") as §<?§).x);
         this.§#v§.push((§2"-§.getItemByName("Button_MightyEagle") as §<?§).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§9!%§.§ !W§ as § W§).§+"#§(§2!h§.§7f§);
         §9!%§.§!!M§.background.§+!3§();
         §2"-§.getItemByName("Button_FreePowerups").setVisibility(§ W§.§%!y§.§2Q§.§&b§);
         var _loc1_:String = LevelManager.§3$§();
         var _loc2_:String = LevelManager.§8!§().name;
         if(_loc2_ == "1000" || _loc2_ == "3001" || _loc1_ == null)
         {
            §2"-§.getItemByName("Button_NextLevel").setVisibility(false);
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SHOP":
               §43§.§9C§();
               break;
            case "SHARE_DEFAULT":
               §,U§.§53§("shareDefault",LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§),0,false);
               break;
            case "EMBED":
               §43§.§!R§(LevelManager.§[!<§,LevelManager.§8!§().writtenName + "-" + §"5§.§3t§(LevelManager.§[!<§),§9!%§.§&N§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §43§.§`!N§();
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§]f§ = LevelManager.§8!§();
         if(_loc2_.name == §%!_§.§-@§)
         {
            _loc1_ = §6!%§.STATE_NAME;
         }
         else if(_loc2_.name == §%!_§.§5H§ || _loc2_.name == §%!_§.EPISODE_GREEN_DAY_EGG)
         {
            _loc1_ = §4E§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §=B§.STATE_NAME;
      }
   }
}
