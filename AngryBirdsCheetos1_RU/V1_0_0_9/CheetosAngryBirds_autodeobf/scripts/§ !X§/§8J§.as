package § !X§
{
   import §"A§.§?3§;
   import §'!S§.§,!%§;
   import §-!6§.§!P§;
   import §3E§.§>o§;
   import §7!U§.§2!7§;
   import §`!B§.§&?§;
   import §`!B§.§=m§;
   
   public class §8J§
   {
      
      private static var §>R§:Class = §1!A§;
      
      private static var §#!@§:Array = [];
      
      private static var §5#§:§7!%§ = null;
      
      private static var §'2§:Boolean = false;
       
      
      public function §8J§()
      {
         super();
      }
      
      private static function §01§(param1:String, param2:§?3§) : void
      {
         var tutorialPopup:§7!%§ = null;
         var birdName:String = param1;
         var currentUIView:§?3§ = param2;
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
            tutorialPopup = new §7!%§(§!P§.§=!K§(§>R§),currentUIView,§&?§.§85§(tutorialName,§=m§.§!5§));
         }
         catch(e:Error)
         {
            return;
         }
         §#!@§.push(tutorialPopup);
      }
      
      public static function §^a§(param1:§?3§) : void
      {
         var _loc2_:§>o§ = null;
         for each(_loc2_ in §2!7§.§5G§.slingshot.§0!`§)
         {
            if(§+§.§3s§.§[!§[_loc2_.name] != true)
            {
               §,!%§.§7x§.isPaused = true;
               §01§(_loc2_.name,param1);
               §]m§();
               §+§.§3s§.§^!<§(_loc2_.name);
            }
         }
      }
      
      public static function §8!>§() : Boolean
      {
         if(§2!7§.§5G§ && §2!7§.§5G§.slingshot && §2!7§.§5G§.slingshot.§0!`§)
         {
            return §2!7§.§5G§.slingshot.§0!`§.length > 0;
         }
         return false;
      }
      
      private static function §]m§(param1:Boolean = true) : void
      {
         if(§@!U§ == false && §#!@§.length > 0)
         {
            §'2§ = true;
            §5#§ = §#!@§.pop();
            §5#§.open(param1);
         }
      }
      
      public static function §8U§() : void
      {
         if(§@!U§ == true)
         {
            if(§#!@§.length > 0)
            {
               §5#§.preClose(false);
               §'2§ = false;
               §]m§(false);
            }
            else
            {
               §'2§ = false;
               §5#§.preClose(true);
            }
         }
      }
      
      public static function get §@!U§() : Boolean
      {
         return §'2§;
      }
   }
}
