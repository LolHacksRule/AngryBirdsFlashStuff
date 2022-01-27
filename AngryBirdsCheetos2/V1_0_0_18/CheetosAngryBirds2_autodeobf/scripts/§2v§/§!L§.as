package §2v§
{
   import §,§.§ 3§;
   import §6;§.§%[§;
   import §9t§.§6!_§;
   import §9t§.§=!>§;
   import §>P§.§5!§;
   import §>^§.§7]§;
   import §`h§.§@!Z§;
   
   public class §!L§
   {
      
      private static var §7a§:Class = §&!1§;
      
      private static var §8!W§:Array = [];
      
      private static var §@_§:§^!§ = null;
      
      private static var §>K§:Boolean = false;
       
      
      public function §!L§()
      {
         super();
      }
      
      private static function §^h§(param1:String, param2:§5!§) : void
      {
         var tutorialPopup:§^!§ = null;
         var birdName:String = param1;
         var currentUIView:§5!§ = param2;
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
            case "BIRD_CHEETOS_BAG":
               tutorialName = "TUTORIAL_CHEETOS_BAG_THROW";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §^!§(§7]§.§#!I§(§7a§),currentUIView,§6!_§.§5-§(tutorialName,§=!>§.§'I§));
         }
         catch(e:Error)
         {
            return;
         }
         §8!W§.push(tutorialPopup);
      }
      
      public static function §'@§(param1:§5!§) : void
      {
         var _loc2_:§ 3§ = null;
         for each(_loc2_ in §@!Z§.§;!,§.slingshot.§0!b§)
         {
            if(§5!9§.§#%§.§,e§[_loc2_.name] != true)
            {
               §%[§.§6+§.isPaused = true;
               §^h§(_loc2_.name,param1);
               §try §();
               §5!9§.§#%§.saveTutorialSeen(_loc2_.name);
               §5!9§.§#%§.§2!;§(_loc2_.name);
            }
         }
      }
      
      public static function §'R§() : Boolean
      {
         if(§@!Z§.§;!,§ && §@!Z§.§;!,§.slingshot && §@!Z§.§;!,§.slingshot.§0!b§)
         {
            return §@!Z§.§;!,§.slingshot.§0!b§.length > 0;
         }
         return false;
      }
      
      private static function §try §(param1:Boolean = true) : void
      {
         if(§2!,§ == false && §8!W§.length > 0)
         {
            §>K§ = true;
            §@_§ = §8!W§.pop();
            §@_§.open(param1);
         }
      }
      
      public static function §&!Y§() : void
      {
         if(§2!,§ == true)
         {
            if(§8!W§.length > 0)
            {
               §@_§.preClose(false);
               §>K§ = false;
               §try §(false);
            }
            else
            {
               §>K§ = false;
               §@_§.preClose(true);
            }
         }
      }
      
      public static function get §2!,§() : Boolean
      {
         return §>K§;
      }
   }
}
