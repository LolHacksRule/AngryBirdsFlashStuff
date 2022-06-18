package §1e§
{
   import § N§.§]!A§;
   import §0V§.§6!G§;
   import §94§.§&!7§;
   import §>!D§.§;,§;
   import §^Q§.§,^§;
   import §`n§.§#H§;
   import §`n§.§`1§;
   
   public class §>c§
   {
      
      private static var native:Class = §]"§;
      
      private static var §,![§:Array = [];
      
      private static var §7!K§:§ in§ = null;
      
      private static var §5!`§:Boolean = false;
       
      
      public function §>c§()
      {
         super();
      }
      
      private static function §2!&§(param1:String, param2:§;,§) : void
      {
         var tutorialPopup:§ in§ = null;
         var birdName:String = param1;
         var currentUIView:§;,§ = param2;
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
            tutorialPopup = new § in§(§]!A§.§#?§(native),currentUIView,§`1§.§-!%§(tutorialName,§#H§.§%b§));
         }
         catch(e:Error)
         {
            return;
         }
         §,![§.push(tutorialPopup);
      }
      
      public static function §,!^§(param1:§;,§) : void
      {
         var _loc2_:§6!G§ = null;
         for each(_loc2_ in §,^§.§0K§.slingshot.§0#§)
         {
            if(§7d§.§4'§.§6!"§[_loc2_.name] != true)
            {
               §&!7§.§ h§.isPaused = true;
               §2!&§(_loc2_.name,param1);
               §8E§();
               §7d§.§4'§.§[n§(_loc2_.name);
            }
         }
      }
      
      public static function §,! §() : Boolean
      {
         if(§,^§.§0K§ && §,^§.§0K§.slingshot && §,^§.§0K§.slingshot.§0#§)
         {
            return §,^§.§0K§.slingshot.§0#§.length > 0;
         }
         return false;
      }
      
      private static function §8E§(param1:Boolean = true) : void
      {
         if(§;!M§ == false && §,![§.length > 0)
         {
            §5!`§ = true;
            §7!K§ = §,![§.pop();
            §7!K§.open(param1);
         }
      }
      
      public static function §!l§() : void
      {
         if(§;!M§ == true)
         {
            if(§,![§.length > 0)
            {
               §7!K§.preClose(false);
               §5!`§ = false;
               §8E§(false);
            }
            else
            {
               §5!`§ = false;
               §7!K§.preClose(true);
            }
         }
      }
      
      public static function get §;!M§() : Boolean
      {
         return §5!`§;
      }
   }
}
