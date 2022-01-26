package §,B§
{
   import §"k§.§02§;
   import §"k§.§4w§;
   import §'D§.§ I§;
   import §-!§.§-§;
   import §1!§.§@!Q§;
   import §8!`§.§3!Q§;
   import §;!K§.§+!4§;
   
   public class §#!!§
   {
      
      private static var §+#§:Class = §>p§;
      
      private static var §2-§:Array = [];
      
      private static var §=!+§:§return§ = null;
      
      private static var §[-§:Boolean = false;
       
      
      public function §#!!§()
      {
         super();
      }
      
      private static function § !Z§(param1:String, param2:§+!4§) : void
      {
         var tutorialPopup:§return§ = null;
         var birdName:String = param1;
         var currentUIView:§+!4§ = param2;
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
            tutorialPopup = new §return§(§ I§.§^!V§(§+#§),currentUIView,§4w§.§!W§(tutorialName,§02§.§!!8§));
         }
         catch(e:Error)
         {
            return;
         }
         §2-§.push(tutorialPopup);
      }
      
      public static function §@!W§(param1:§+!4§) : void
      {
         var _loc2_:§3!Q§ = null;
         for each(_loc2_ in §@!Q§.§7l§.slingshot.§%!4§)
         {
            if(§1R§.§0!N§.§0'§[_loc2_.name] != true)
            {
               §-§.§'L§.isPaused = true;
               § !Z§(_loc2_.name,param1);
               §42§();
               §1R§.§0!N§.§-V§(_loc2_.name);
            }
         }
      }
      
      public static function §1!Y§() : Boolean
      {
         if(§@!Q§.§7l§ && §@!Q§.§7l§.slingshot && §@!Q§.§7l§.slingshot.§%!4§)
         {
            return §@!Q§.§7l§.slingshot.§%!4§.length > 0;
         }
         return false;
      }
      
      private static function §42§(param1:Boolean = true) : void
      {
         if(§<3§ == false && §2-§.length > 0)
         {
            §[-§ = true;
            §=!+§ = §2-§.pop();
            §=!+§.open(param1);
         }
      }
      
      public static function §5C§() : void
      {
         if(§<3§ == true)
         {
            if(§2-§.length > 0)
            {
               §=!+§.preClose(false);
               §[-§ = false;
               §42§(false);
            }
            else
            {
               §[-§ = false;
               §=!+§.preClose(true);
            }
         }
      }
      
      public static function get §<3§() : Boolean
      {
         return §[-§;
      }
   }
}
