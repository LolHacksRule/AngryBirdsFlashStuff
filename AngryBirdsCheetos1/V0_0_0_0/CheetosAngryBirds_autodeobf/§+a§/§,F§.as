package §+a§
{
   import § !+§.§0Z§;
   import §!J§.§[&§;
   import §+?§.§,!N§;
   import §4W§.§!]§;
   import §4W§.§9b§;
   import §9N§.§8'§;
   import §@,§.§8!#§;
   
   public class §,F§
   {
      
      private static var §;!L§:Class = §3x§;
      
      private static var §>7§:Array = [];
      
      private static var §,!V§:§#!O§ = null;
      
      private static var §#!=§:Boolean = false;
       
      
      public function §,F§()
      {
         super();
      }
      
      private static function § ! §(param1:String, param2:§,!N§) : void
      {
         var tutorialPopup:§#!O§ = null;
         var birdName:String = param1;
         var currentUIView:§,!N§ = param2;
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
            tutorialPopup = new §#!O§(§8!#§.§9C§(§;!L§),currentUIView,§9b§.§+=§(tutorialName,§!]§.§!!L§));
         }
         catch(e:Error)
         {
            return;
         }
         §>7§.push(tutorialPopup);
      }
      
      public static function § C§(param1:§,!N§) : void
      {
         var _loc2_:§8'§ = null;
         for each(_loc2_ in §[&§.§&!'§.slingshot.§`4§)
         {
            if(§,l§.§3!,§.§+x§[_loc2_.name] != true)
            {
               §0Z§.§-m§.§5!T§ = true;
               § ! §(_loc2_.name,param1);
               §[!<§();
               §,l§.§3!,§.§-!?§(_loc2_.name);
            }
         }
      }
      
      public static function §4V§() : Boolean
      {
         if(§[&§.§&!'§ && §[&§.§&!'§.slingshot && §[&§.§&!'§.slingshot.§`4§)
         {
            return §[&§.§&!'§.slingshot.§`4§.length > 0;
         }
         return false;
      }
      
      private static function §[!<§(param1:Boolean = true) : void
      {
         if(§,t§ == false && §>7§.length > 0)
         {
            §#!=§ = true;
            §,!V§ = §>7§.pop();
            §,!V§.open(param1);
         }
      }
      
      public static function §%_§() : void
      {
         if(§,t§ == true)
         {
            if(§>7§.length > 0)
            {
               §,!V§.preClose(false);
               §#!=§ = false;
               §[!<§(false);
            }
            else
            {
               §#!=§ = false;
               §,!V§.preClose(true);
            }
         }
      }
      
      public static function get §,t§() : Boolean
      {
         return §#!=§;
      }
   }
}
