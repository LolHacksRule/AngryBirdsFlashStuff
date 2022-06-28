package §9!Q§
{
   import §+&§.§`o§;
   import §,6§.§!o§;
   import §,6§.§4d§;
   import §1n§.§ C§;
   import §5i§.§4!]§;
   import §6z§.§`!<§;
   import §9#§.§"<§;
   import §9#§.§2!E§;
   import §9#§.§;!-§;
   import §9#§.Popup;
   
   public class §each § extends §2!E§
   {
      
      private static var §`!8§:Array = [];
      
      private static var §%!1§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §'!X§:Array;
       
      
      public function §each §()
      {
         super();
      }
      
      private static function §?!<§(param1:String, param2:§ C§) : void
      {
         var tutorialPopup:§"<§ = null;
         var birdName:String = param1;
         var currentUIView:§ C§ = param2;
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
            case "BIRD_SARDINE":
               tutorialName = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §"<§(§`!<§.§ !0§(§'U§),currentUIView,§4d§.§'!I§(tutorialName,§!o§.§^Z§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §`!8§.push(tutorialPopup);
         }
      }
      
      private static function §`d§(param1:String, param2:§ C§) : void
      {
         var tutorialPopup:§;!-§ = null;
         var powerUpName:String = param1;
         var currentUIView:§ C§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §;!-§(§`!<§.§ !0§(§[K§),currentUIView,§4d§.§'!I§(tutorialName,§!o§.§^Z§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §`!8§.push(tutorialPopup);
         }
      }
      
      private static function §&!U§() : Array
      {
         var _loc2_:§`o§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §4!]§.§8C§.slingshot.§9q§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §%!S§(param1:§ C§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §'!X§ = [];
         switch(param2)
         {
            case "POWERUP4":
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §'!X§.push(_loc4_);
               break;
            case "POWERUP1":
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §'!X§.push(_loc4_);
               break;
            case "POWERUP2":
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §'!X§.push(_loc4_);
               break;
            case "POWERUP3":
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §'!X§.push(_loc4_);
               break;
            case "ALL":
               §'!X§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §'!X§.push("POWERUP_TUTORIAL_SUPERSEED");
               §'!X§.push("POWERUP_TUTORIAL_KINGSLING");
               §'!X§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var _loc5_:Array = §'!X§;
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
            §`d§(param2,param1);
         }
      }
      
      public static function §5!b§(param1:§ C§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §&!U§();
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
            §?!<§(_loc4_,param1);
         }
         §'e§();
      }
      
      private static function §'e§(param1:Boolean = true) : void
      {
         if(!isOpen && §`!8§.length > 0)
         {
            isOpen = true;
            §%!1§ = §`!8§.pop();
            §%!1§.open(param1);
         }
      }
      
      public static function §]!U§() : void
      {
         if(isOpen == true)
         {
            if(§`!8§.length > 0)
            {
               §%!1§.preClose(false);
               isOpen = false;
               §'e§(false);
            }
            else
            {
               isOpen = false;
               §%!1§.preClose(true);
            }
         }
      }
   }
}
