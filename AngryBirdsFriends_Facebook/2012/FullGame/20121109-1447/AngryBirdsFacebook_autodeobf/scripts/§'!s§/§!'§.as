package §'!s§
{
   import §#^§.§7!A§;
   import §3!7§.§>,§;
   import §6!D§.§0Y§;
   import §6!D§.§9R§;
   import §6o§.§5!C§;
   import §7r§.§@M§;
   import §9"!§.§;!M§;
   import §]!A§.;
   
   public class §!'§ extends §'N§
   {
      
      private static var §!%§:Array = [];
      
      private static var §4<§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §+!-§:Array;
       
      
      public function §!'§()
      {
         super();
      }
      
      private static function §?!W§(param1:String, param2:§7!A§) : void
      {
         var tutorialPopup:§'!Q§ = null;
         var birdName:String = param1;
         var currentUIView:§7!A§ = param2;
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
            tutorialPopup = new §'!Q§(§5!C§.§9G§(§8!c§),currentUIView,§9R§.§!=§(tutorialName,§0Y§.§;"§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §!%§.push(tutorialPopup);
         }
      }
      
      private static function §5"8§(param1:String, param2:§7!A§) : void
      {
         var tutorialPopup:§@M§ = null;
         var powerUpName:String = param1;
         var currentUIView:§7!A§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §@M§(§5!C§.§9G§(§=!c§),currentUIView,tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §!%§.push(tutorialPopup);
         }
      }
      
      private static function §0!"§() : Array
      {
         var _loc2_:§;!M§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §#6§.§6!z§.slingshot.§ L§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §0!J§(param1:§7!A§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §+!-§ = [];
         switch(param2)
         {
            case §>,§.§&m§.§[2§:
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §+!-§.push(_loc4_);
               break;
            case §>,§.§^Q§.§[2§:
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §+!-§.push(_loc4_);
               break;
            case §>,§.§7!C§.§[2§:
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §+!-§.push(_loc4_);
               break;
            case §>,§.§%!X§.§[2§:
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §+!-§.push(_loc4_);
               break;
            case §>,§.§," §.§[2§:
               _loc4_ = "POWERUP_TUTORIAL_EXTRABIRD";
               §+!-§.push(_loc4_);
               break;
            case "ALL_BASIC":
               §+!-§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §+!-§.push("POWERUP_TUTORIAL_SUPERSEED");
               §+!-§.push("POWERUP_TUTORIAL_KINGSLING");
               §+!-§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               break;
            case "ALL_EXTRABIRD":
               §+!-§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §+!-§.push("POWERUP_TUTORIAL_SUPERSEED");
               §+!-§.push("POWERUP_TUTORIAL_KINGSLING");
               §+!-§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §+!-§.push("POWERUP_TUTORIAL_EXTRABIRD");
         }
         var _loc5_:Array = §+!-§;
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
            §5"8§(param2,param1);
         }
      }
      
      public static function showTutorials(param1:§7!A§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §0!"§();
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
            §?!W§(_loc4_,param1);
         }
         §>!]§();
      }
      
      private static function §>!]§(param1:Boolean = true) : void
      {
         if(!isOpen && §!%§.length > 0)
         {
            isOpen = true;
            §4<§ = §!%§.pop();
            §4<§.open(param1);
         }
      }
      
      public static function §]>§() : void
      {
         if(isOpen == true)
         {
            if(§!%§.length > 0)
            {
               §4<§.preClose(false);
               isOpen = false;
               §>!]§(false);
            }
            else
            {
               isOpen = false;
               §4<§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         §!%§ = [];
         if(§4<§)
         {
            §]>§();
         }
      }
   }
}
