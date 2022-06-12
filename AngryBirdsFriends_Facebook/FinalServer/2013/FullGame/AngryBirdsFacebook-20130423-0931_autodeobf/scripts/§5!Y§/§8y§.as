package §5!Y§
{
   import §+!c§.§9"H§;
   import §4!<§.§ !X§;
   import §5!,§.§0O§;
   import §<T§.§?!Z§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §^"F§.§4!2§;
   import §`"%§.§`_§;
   
   public class §8y§ extends §'!V§
   {
      
      private static var §9F§:Array = [];
      
      private static var §,f§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §>""§:Array;
       
      
      public function §8y§()
      {
         super();
      }
      
      private static function §8n§(param1:String, param2:§`_§) : void
      {
         var tutorialPopup:§;!g§ = null;
         var birdName:String = param1;
         var currentUIView:§`_§ = param2;
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
            tutorialPopup = new §;!g§(§9"H§.§5!h§(§#"9§),currentUIView,§?!Z§.§9!4§(tutorialName,§`m§.§&"5§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §9F§.push(tutorialPopup);
         }
      }
      
      private static function §=K§(param1:String, param2:§`_§) : void
      {
         var tutorialPopup:§0O§ = null;
         var powerUpName:String = param1;
         var currentUIView:§`_§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §0O§(§9"H§.§5!h§(§2b§),currentUIView,tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §9F§.push(tutorialPopup);
         }
      }
      
      private static function §=C§() : Array
      {
         var _loc2_:§ !X§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §?l§.§'h§.slingshot.§9!L§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §7"?§(param1:§`_§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §>""§ = [];
         if(param2 == "")
         {
            param2 = "ALL_BASIC";
         }
         switch(param2)
         {
            case §4!2§.§8"1§.§,§:
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §>""§.push(_loc4_);
               break;
            case §4!2§.§`!4§.§,§:
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §>""§.push(_loc4_);
               break;
            case §4!2§.§<"O§.§,§:
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §>""§.push(_loc4_);
               break;
            case §4!2§.§3"$§.§,§:
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §>""§.push(_loc4_);
               break;
            case §4!2§.§-Y§.§,§:
               _loc4_ = "POWERUP_TUTORIAL_EXTRABIRD";
               §>""§.push(_loc4_);
               break;
            case §4!2§.§!! §.§,§:
               _loc4_ = "POWERUP_TUTORIAL_MUSHROOM";
               §>""§.push(_loc4_);
               break;
            case §4!2§.§%!U§.§,§:
               _loc4_ = "POWERUP_TUTORIAL_TNTDROP";
               §>""§.push(_loc4_);
               break;
            case "ALL_BASIC":
               §>""§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §>""§.push("POWERUP_TUTORIAL_SUPERSEED");
               §>""§.push("POWERUP_TUTORIAL_KINGSLING");
               §>""§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               break;
            case "ALL_EXTRABIRD":
               §>""§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §>""§.push("POWERUP_TUTORIAL_SUPERSEED");
               §>""§.push("POWERUP_TUTORIAL_KINGSLING");
               §>""§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §>""§.push("POWERUP_TUTORIAL_EXTRABIRD");
               break;
            case "ALL_EXTRABIRD_TNT":
               §>""§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §>""§.push("POWERUP_TUTORIAL_SUPERSEED");
               §>""§.push("POWERUP_TUTORIAL_KINGSLING");
               §>""§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §>""§.push("POWERUP_TUTORIAL_EXTRABIRD");
               §>""§.push("POWERUP_TUTORIAL_TNTDROP");
               break;
            case "ALL_MUSHROOM":
               §>""§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §>""§.push("POWERUP_TUTORIAL_SUPERSEED");
               §>""§.push("POWERUP_TUTORIAL_KINGSLING");
               §>""§.push("POWERUP_TUTORIAL_SLINGSCOPE");
               §>""§.push("POWERUP_TUTORIAL_MUSHROOM");
         }
         var _loc5_:Array = §>""§;
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
            §=K§(param2,param1);
         }
      }
      
      public static function showTutorials(param1:§`_§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §=C§();
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
            §8n§(_loc4_,param1);
         }
         §^"H§();
      }
      
      private static function §^"H§(param1:Boolean = true) : void
      {
         if(!isOpen && §9F§.length > 0)
         {
            isOpen = true;
            §,f§ = §9F§.pop();
            §,f§.open(param1);
         }
      }
      
      public static function §2!C§() : void
      {
         if(isOpen == true)
         {
            if(§9F§.length > 0)
            {
               §,f§.preClose(false);
               isOpen = false;
               §^"H§(false);
            }
            else
            {
               isOpen = false;
               §,f§.preClose(true);
               §?l§.resume();
            }
         }
      }
      
      public static function deActivate() : void
      {
         §9F§ = [];
         if(§,f§)
         {
            §2!C§();
         }
      }
   }
}
