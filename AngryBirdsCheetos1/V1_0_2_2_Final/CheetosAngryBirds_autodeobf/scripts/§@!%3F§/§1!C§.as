package §@!?§
{
   import § !G§.§+!7§;
   import § `§.§2w§;
   import § `§.§>o§;
   import §!X§.§9k§;
   import §0F§.§'j§;
   import §?m§.§7?§;
   import §`C§.§9!'§;
   
   public class §1!C§
   {
      
      private static var §2a§:Class = §]5§;
      
      private static var §[l§:Array = [];
      
      private static var §@!!§:§'u§ = null;
      
      private static var §3r§:Boolean = false;
       
      
      public function §1!C§()
      {
         super();
      }
      
      private static function §-!B§(param1:String, param2:§'j§) : void
      {
         var tutorialPopup:§'u§ = null;
         var birdName:String = param1;
         var currentUIView:§'j§ = param2;
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
            tutorialPopup = new §'u§(§+!7§.§5]§(§2a§),currentUIView,§>o§.§4M§(tutorialName,§2w§.§%!O§));
         }
         catch(e:Error)
         {
            return;
         }
         §[l§.push(tutorialPopup);
      }
      
      public static function §]o§(param1:§'j§) : void
      {
         var _loc2_:§9k§ = null;
         for each(_loc2_ in §7?§.§4!H§.slingshot.§8k§)
         {
            if(§#x§.§[Y§.§ G§[_loc2_.name] != true)
            {
               §9!'§.§`!@§.isPaused = true;
               §-!B§(_loc2_.name,param1);
               §+,§();
               §#x§.§[Y§.§2g§(_loc2_.name);
            }
         }
      }
      
      public static function §0!E§() : Boolean
      {
         if(§7?§.§4!H§ && §7?§.§4!H§.slingshot && §7?§.§4!H§.slingshot.§8k§)
         {
            return §7?§.§4!H§.slingshot.§8k§.length > 0;
         }
         return false;
      }
      
      private static function §+,§(param1:Boolean = true) : void
      {
         if(§84§ == false && §[l§.length > 0)
         {
            §3r§ = true;
            §@!!§ = §[l§.pop();
            §@!!§.open(param1);
         }
      }
      
      public static function §9!!§() : void
      {
         if(§84§ == true)
         {
            if(§[l§.length > 0)
            {
               §@!!§.preClose(false);
               §3r§ = false;
               §+,§(false);
            }
            else
            {
               §3r§ = false;
               §@!!§.preClose(true);
            }
         }
      }
      
      public static function get §84§() : Boolean
      {
         return §3r§;
      }
   }
}
