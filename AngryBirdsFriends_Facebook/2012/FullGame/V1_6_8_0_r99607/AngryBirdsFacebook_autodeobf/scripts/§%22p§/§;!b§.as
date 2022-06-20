package §"p§
{
   import §"",§.§<+§;
   import §"",§.§<?§;
   import §,"-§.§2!P§;
   import §1"2§.§,!]§;
   import §7N§.§43§;
   import §<!e§.§[!t§;
   import §<G§.§5w§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §;!b§ extends §5w§
   {
      
      public static var §,!b§:Boolean = false;
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §#?§:int = 4;
       
      
      public function §;!b§(param1:Boolean = false, param2:String = "TournamentState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LotusTournament[0]);
         (§2"-§.getItemByName("MovieClip_ContestBox") as §<+§).mClip.gotoAndStop("CONTEST_EMPTY");
      }
      
      override public function injectData() : void
      {
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         super.injectData();
         var _loc1_:Boolean = true;
         var _loc2_:§2!P§ = AngryBirdsFP11.sUserProgress as §2!P§;
         var _loc3_:int = 0;
         while(_loc3_ < §#?§)
         {
            _loc6_ = §3B§[_loc3_];
            _loc7_ = _loc2_.§8l§(_loc6_);
            if((_loc8_ = _loc2_.getStarsForLevel(_loc6_,_loc7_)) < 1)
            {
               _loc1_ = false;
               break;
            }
            _loc3_++;
         }
         var _loc4_:String = !!_loc1_ ? "CONTEST_ENTER" : "CONTEST_INFO";
         (§2"-§.getItemByName("MovieClip_ContestBox") as §<+§).mClip.gotoAndStop(_loc4_);
         (§2"-§.getItemByName("Button_CompetitionEnter") as §<?§).setActiveStatus(_loc1_);
         (§2"-§.getItemByName("Button_CompetitionEnter") as §<?§).setVisibility(_loc1_);
         var _loc5_:Boolean;
         if((_loc5_ = Boolean(§[!t§.§8c§.§ h§)) || §,!b§)
         {
            (§2"-§.getItemByName("MovieClip_ContestBox") as §<+§).mClip.gotoAndStop("CONTEST_ALREADY_ENTERED");
            (§2"-§.getItemByName("Button_CompetitionEnter") as §<?§).setActiveStatus(false);
            (§2"-§.getItemByName("Button_CompetitionEnter") as §<?§).setVisibility(false);
         }
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "ENTER_COMPETITION":
               §43§.§24§();
               break;
            case "LOTUS_LINK":
               navigateToURL(new URLRequest("https://www.facebook.com/LotusRenaultGP"),"_blank");
         }
      }
   }
}
