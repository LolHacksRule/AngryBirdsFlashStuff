package §9!Z§
{
   import §!!V§.§%§;
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §%t§.§7G§;
   import §9!2§.§'![§;
   import §9!2§.§@o§;
   import §]!Y§.§5W§;
   
   public class §2!,§
   {
      
      private static var §#!3§:Class = §-!%§;
      
      private static var §4!D§:Array = [];
      
      private static var §]!9§:§%0§ = null;
      
      private static var §`!K§:Boolean = false;
       
      
      public function §2!,§()
      {
         super();
      }
      
      private static function §"!W§(param1:String, param2:§5W§) : void
      {
         var tutorialPopup:§%0§ = null;
         var birdName:String = param1;
         var currentUIView:§5W§ = param2;
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
            case "BIRD_RED_BIG":
               tutorialName = "TUTORIAL_RED_BIG";
               break;
            case "BIRD_SARDINE":
               tutorialName = "TUTORIAL_MIGHTYEAGLE";
               break;
            case "BIRD_CHEETOS_BAG":
               tutorialName = "TUTORIAL_CHEETOS_BAG_THROW";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §%0§(§7G§.§-^§(§#!3§),currentUIView,§@o§.§3!F§(tutorialName,§'![§.§0E§));
         }
         catch(e:Error)
         {
            return;
         }
         §4!D§.push(tutorialPopup);
      }
      
      public static function §"z§(param1:§5W§) : void
      {
         var _loc2_:§%§ = null;
         for each(_loc2_ in §"_§.§+!^§.slingshot.§3r§)
         {
            if(§2!-§.§5R§.§8O§[_loc2_.name] != true)
            {
               §<h§.§4!J§.isPaused = true;
               §"!W§(_loc2_.name,param1);
               §#k§();
               §2!-§.§5R§.§=!W§(_loc2_.name);
            }
         }
      }
      
      public static function §1!B§() : Boolean
      {
         if(§"_§.§+!^§ && §"_§.§+!^§.slingshot && §"_§.§+!^§.slingshot.§3r§)
         {
            return §"_§.§+!^§.slingshot.§3r§.length > 0;
         }
         return false;
      }
      
      private static function §#k§(param1:Boolean = true) : void
      {
         if(§<+§ == false && §4!D§.length > 0)
         {
            §`!K§ = true;
            §]!9§ = §4!D§.pop();
            §]!9§.open(param1);
         }
      }
      
      public static function §+!`§() : void
      {
         if(§<+§ == true)
         {
            if(§4!D§.length > 0)
            {
               §]!9§.preClose(false);
               §`!K§ = false;
               §#k§(false);
            }
            else
            {
               §`!K§ = false;
               §]!9§.preClose(true);
            }
         }
      }
      
      public static function get §<+§() : Boolean
      {
         return §`!K§;
      }
   }
}
