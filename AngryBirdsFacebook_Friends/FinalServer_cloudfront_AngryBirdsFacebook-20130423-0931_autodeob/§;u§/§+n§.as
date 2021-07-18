package §;u§
{
   import §%i§.§7"0§;
   import §,l§.§+I§;
   import §1!t§.§""B§;
   import §30§.§'"+§;
   import §5!Y§.§9"6§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§4d§;
   import §9@§.§@q§;
   import §<"F§.§6h§;
   import §@!"§.§?l§;
   import com.AngryBirds.friendsbar.§]a§;
   import flash.display.MovieClip;
   
   public class §+n§ extends §]S§ implements §4d§
   {
       
      
      protected var §'!U§:Array;
      
      private var §]1§:§6h§;
      
      public function §+n§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         this.§'!U§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§.getItemByName("Button_Fullscreen").setVisibility(false);
         this.§'!U§.push((§2"@§.getItemByName("Button_Menu") as §7"0§).x);
         this.§'!U§.push((§2"@§.getItemByName("Button_Replay") as §7"0§).x);
         this.§'!U§.push((§2"@§.getItemByName("Button_MightyEagle") as §7"0§).x);
      }
      
      override public function activate() : void
      {
         super.activate();
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§!!;§);
         §?l§.§'h§.background.§!!K§();
         §2"@§.getItemByName("Button_FreePowerups").setVisibility(§%"S§.§!C§.§^!F§.§#!=§);
         var _loc1_:String = LevelManager.§8t§();
         var _loc2_:String = LevelManager.§`"Q§().name;
         if(_loc2_ == "1000" || _loc2_ == "3001" || _loc1_ == null)
         {
            §2"@§.getItemByName("Button_NextLevel").setVisibility(false);
         }
         if(this.§9"%§.§7"T§)
         {
            if(this.§9"%§.§7"T§.§+!!§())
            {
               this.§#"?§();
            }
         }
         §@q§.trackPageView(this,this.§8"3§(),§@q§.§@"<§);
      }
      
      private function §#"?§() : void
      {
         var _loc1_:MovieClip = null;
         if(this.§9"%§.§7"T§.§+!!§() && LevelManager.§ T§.indexOf(§+"9§.§!!'§) != -1)
         {
            this.§]1§ = new §6h§(this.§9"%§.§7"T§.§="U§,"",false,false);
            this.§]1§.eggs = this.§9"%§.§7"T§.§5!4§;
            this.§]1§.x = -70;
            this.§]1§.y = -70;
            _loc1_ = §2"@§.getItemByName("EggRaffleBasketContainer").mClip;
            _loc1_.addChild(this.§]1§);
         }
      }
      
      private function §6U§() : void
      {
         var _loc1_:MovieClip = §2"@§.getItemByName("EggRaffleBasketContainer").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
      }
      
      override public function deActivate() : void
      {
         this.§6U§();
         super.deActivate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "SHOP":
               §9"6§.§;!w§();
               break;
            case "SHARE_DEFAULT":
               §'"+§.§'!#§("shareDefault",LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),0,false);
               break;
            case "EMBED":
               §9"6§.§-L§(LevelManager.§ T§,LevelManager.§`"Q§().writtenName + "-" + §!J§.§;6§(LevelManager.§ T§),§?l§.§5-§.getScore(),"");
               break;
            case "FREE_POWERUPS":
               §9"6§.§#z§();
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc1_:String = null;
         var _loc2_:§3-§ = LevelManager.§`"Q§();
         if(_loc2_.name == §7D§.§^!i§)
         {
            _loc1_ = §4"Y§.STATE_NAME;
         }
         return _loc1_ != null ? _loc1_ : §9"@§.STATE_NAME;
      }
      
      public function §=,§() : String
      {
         return §@q§.§%"$§;
      }
      
      public function §8"3§() : String
      {
         return LevelManager.§ T§;
      }
      
      private function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
