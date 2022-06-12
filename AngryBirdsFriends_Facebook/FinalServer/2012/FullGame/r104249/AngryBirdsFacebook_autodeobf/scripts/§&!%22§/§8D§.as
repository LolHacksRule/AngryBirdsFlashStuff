package §&!"§
{
   import §#M§.§^0§;
   import §#S§.§!K§;
   import §#S§.§?!?§;
   import §0!2§.§;M§;
   import §2!6§.§ !h§;
   import §5!G§.§&2§;
   import §63§.§;!^§;
   import §[x§.§?-§;
   
   public class §8D§ extends §?!S§
   {
      
      private static var §^";§:Array = [];
      
      private static var §[U§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §%T§:Array;
       
      
      public function §8D§()
      {
         super();
      }
      
      private static function § !X§(param1:String, param2:§^0§) : void
      {
         var tutorialPopup:§?u§ = null;
         var birdName:String = param1;
         var currentUIView:§^0§ = param2;
         var tutorialName:String = "";
         switch(birdName)
         {
            case "BIRD_BLACK":
               tutorialName = "TUTORIAL_BLACK";
               break;
            case "BIRD_BLUE":
               tutorialName = "TUTORIAL_BLUE";
               break;
            case "BIRD_RED":
               tutorialName = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               tutorialName = "TUTORIAL_WHITE";
               break;
            case "BIRD_YELLOW":
               tutorialName = "TUTORIAL_YELLOW";
               break;
            case "BIRD_GREEN":
               tutorialName = "TUTORIAL_BOOMERANG";
               break;
            case "BIRD_REDBIG":
               tutorialName = "TUTORIAL_BIG_BROTHER";
               break;
            case "BIRD_ORANGE":
               tutorialName = "TUTORIAL_PUFFER";
               break;
            case "BIRD_SARDINE":
               tutorialName = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §?u§(§?-§.§9E§(§0T§),currentUIView,§!K§.§<0§(tutorialName,§?!?§.§1[§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^";§.push(tutorialPopup);
         }
      }
      
      private static function §`[§(param1:String, param2:§^0§) : void
      {
         var tutorialPopup:§;!^§ = null;
         var powerUpName:String = param1;
         var currentUIView:§^0§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §;!^§(§?-§.§9E§(§[!G§),currentUIView,tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^";§.push(tutorialPopup);
         }
      }
      
      private static function §>j§() : Array
      {
         var _loc2_:§;M§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §&2§.§],§.slingshot.§1"&§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §@!I§(param1:§^0§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §%T§ = [];
         if(param2 == "")
         {
            param2 = "ALL_BASIC";
         }
         switch(param2)
         {
            case § !h§.§@"<§.§4W§:
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §%T§.push(_loc4_);
               break;
            case § !h§.§+!<§.§4W§:
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §%T§.push(_loc4_);
               break;
            case § !h§.§]!^§.§4W§:
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §%T§.push(_loc4_);
               break;
            case § !h§.§="'§.§4W§:
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §%T§.push(_loc4_);
               break;
            case § !h§.§36§.§4W§:
               _loc4_ = "POWERUP_TUTORIAL_EXTRABIRD";
               §%T§.push(_loc4_);
               break;
            case § !h§.§+6§.§4W§:
               _loc4_ = "POWERUP_TUTORIAL_TNTDROP";
               §%T§.push(_loc4_);
               break;
            case "ALL_BASIC":
               §%T§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §%T§.push("POWERUP_TUTORIAL_SUPERSEED");
               §%T§.push("POWERUP_TUTORIAL_KINGSLING");
               §%T§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               break;
            case "ALL_EXTRABIRD":
               §%T§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §%T§.push("POWERUP_TUTORIAL_SUPERSEED");
               §%T§.push("POWERUP_TUTORIAL_KINGSLING");
               §%T§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §%T§.push("POWERUP_TUTORIAL_EXTRABIRD");
               break;
            case "ALL_EXTRABIRD_TNT":
               §%T§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §%T§.push("POWERUP_TUTORIAL_SUPERSEED");
               §%T§.push("POWERUP_TUTORIAL_KINGSLING");
               §%T§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §%T§.push("POWERUP_TUTORIAL_EXTRABIRD");
               §%T§.push("POWERUP_TUTORIAL_TNTDROP");
         }
         var _loc5_:Array = §%T§;
         if(!param3)
         {
            _loc6_ = _loc5_.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc7_ = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(_loc5_[_loc6_]))
               {
                  _loc5_.splice(_loc6_,1);
               }
               _loc6_--;
            }
            if(_loc5_.length > 0)
            {
               AngryBirdsFP11.sUserProgress.saveTutorialSeen(_loc5_.toString());
            }
         }
         for each(param2 in _loc5_)
         {
            §`[§(param2,param1);
         }
      }
      
      public static function §1p§(param1:§^0§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §>j§();
         if(!param2)
         {
            _loc5_ = _loc3_.length - 1;
            while(_loc5_ >= 0)
            {
               if(_loc6_ = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(_loc3_[_loc5_]))
               {
                  _loc3_.splice(_loc5_,1);
               }
               _loc5_--;
            }
            if(_loc3_.length > 0)
            {
               AngryBirdsFP11.sUserProgress.saveTutorialSeen(_loc3_.toString());
            }
         }
         for each(_loc4_ in _loc3_)
         {
            § !X§(_loc4_,param1);
         }
         §3a§();
      }
      
      private static function §3a§(param1:Boolean = true) : void
      {
         if(!isOpen && §^";§.length > 0)
         {
            isOpen = true;
            §[U§ = §^";§.pop();
            §[U§.open(param1);
         }
      }
      
      public static function §-f§() : void
      {
         if(isOpen == true)
         {
            if(§^";§.length > 0)
            {
               §[U§.preClose(false);
               isOpen = false;
               §3a§(false);
            }
            else
            {
               isOpen = false;
               §[U§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         §^";§ = [];
         if(§[U§)
         {
            §-f§();
         }
      }
   }
}
