package §4p§
{
   import §+!^§.§'Y§;
   import §7!P§.§`!§;
   import §8v§.§#Z§;
   import §9T§.§%!_§;
   import §=0§.§6j§;
   import §=0§.§>O§;
   import §>N§.§"u§;
   
   public class §;O§
   {
      
      private static var §4x§:Class = §9!F§;
      
      private static var §7B§:Array = [];
      
      private static var §,L§:§[!C§ = null;
      
      private static var §=!L§:Boolean = false;
       
      
      public function §;O§()
      {
         super();
      }
      
      private static function §@X§(param1:String, param2:§#Z§) : void
      {
         var tutorialPopup:§[!C§ = null;
         var birdName:String = param1;
         var currentUIView:§#Z§ = param2;
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
            tutorialPopup = new §[!C§(§`!§.§1!a§(§4x§),currentUIView,§6j§.§9u§(tutorialName,§>O§.§<?§));
         }
         catch(e:Error)
         {
            return;
         }
         §7B§.push(tutorialPopup);
      }
      
      public static function §]8§(param1:§#Z§) : void
      {
         var _loc2_:§%!_§ = null;
         for each(_loc2_ in §'Y§.§@j§.slingshot.§2!R§)
         {
            if(§7!^§.§3!U§.§,!Y§[_loc2_.name] != true)
            {
               §"u§.§4f§.isPaused = true;
               §@X§(_loc2_.name,param1);
               §2U§();
               §7!^§.§3!U§.§5!U§(_loc2_.name);
            }
         }
      }
      
      public static function §^1§() : Boolean
      {
         if(§'Y§.§@j§ && §'Y§.§@j§.slingshot && §'Y§.§@j§.slingshot.§2!R§)
         {
            return §'Y§.§@j§.slingshot.§2!R§.length > 0;
         }
         return false;
      }
      
      private static function §2U§(param1:Boolean = true) : void
      {
         if(§%?§ == false && §7B§.length > 0)
         {
            §=!L§ = true;
            §,L§ = §7B§.pop();
            §,L§.open(param1);
         }
      }
      
      public static function §=%§() : void
      {
         if(§%?§ == true)
         {
            if(§7B§.length > 0)
            {
               §,L§.preClose(false);
               §=!L§ = false;
               §2U§(false);
            }
            else
            {
               §=!L§ = false;
               §,L§.preClose(true);
            }
         }
      }
      
      public static function get §%?§() : Boolean
      {
         return §=!L§;
      }
   }
}
