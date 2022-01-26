package §6=§
{
   import §7z§.§&!>§;
   import §8K§.§>g§;
   import §8K§.§@j§;
   import §;!X§.§7`§;
   import §^!&§.§"x§;
   import §`B§.§-Z§;
   import §`M§.§'C§;
   
   public class §"!^§
   {
      
      private static var §+!O§:Class = §`!%§;
      
      private static var §=A§:Array = [];
      
      private static var §74§:§&$§ = null;
      
      private static var §2F§:Boolean = false;
       
      
      public function §"!^§()
      {
         super();
      }
      
      private static function §-§(param1:String, param2:§-Z§) : void
      {
         var tutorialPopup:§&$§ = null;
         var birdName:String = param1;
         var currentUIView:§-Z§ = param2;
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
            tutorialPopup = new §&$§(§"x§.§9!>§(§+!O§),currentUIView,§@j§.§5B§(tutorialName,§>g§.§[P§));
         }
         catch(e:Error)
         {
            return;
         }
         §=A§.push(tutorialPopup);
      }
      
      public static function §&#§(param1:§-Z§) : void
      {
         var _loc2_:§&!>§ = null;
         for each(_loc2_ in §7`§.§2'§.slingshot.§`u§)
         {
            if(§4+§.§2!K§.§@!M§[_loc2_.name] != true)
            {
               §'C§.§&=§.isPaused = true;
               §-§(_loc2_.name,param1);
               §&7§();
               §4+§.§2!K§.§ L§(_loc2_.name);
            }
         }
      }
      
      public static function §,j§() : Boolean
      {
         if(§7`§.§2'§ && §7`§.§2'§.slingshot && §7`§.§2'§.slingshot.§`u§)
         {
            return §7`§.§2'§.slingshot.§`u§.length > 0;
         }
         return false;
      }
      
      private static function §&7§(param1:Boolean = true) : void
      {
         if(§^!!§ == false && §=A§.length > 0)
         {
            §2F§ = true;
            §74§ = §=A§.pop();
            §74§.open(param1);
         }
      }
      
      public static function §]5§() : void
      {
         if(§^!!§ == true)
         {
            if(§=A§.length > 0)
            {
               §74§.preClose(false);
               §2F§ = false;
               §&7§(false);
            }
            else
            {
               §2F§ = false;
               §74§.preClose(true);
            }
         }
      }
      
      public static function get §^!!§() : Boolean
      {
         return §2F§;
      }
   }
}
