package §2V§
{
   import §!4§.§6!@§;
   import §%b§.§&b§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §@!§.§>!4§;
   import §@!§.§?! §;
   import §]_§.§!F§;
   
   public class §&!Q§
   {
      
      private static var §2!J§:Class = §1! §;
      
      private static var §5"§:Array = [];
      
      private static var §^r§:§catch§ = null;
      
      private static var §&H§:Boolean = false;
       
      
      public function §&!Q§()
      {
         super();
      }
      
      private static function §@!A§(param1:String, param2:§;J§) : void
      {
         var tutorialPopup:§catch§ = null;
         var birdName:String = param1;
         var currentUIView:§;J§ = param2;
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
            tutorialPopup = new §catch§(§6!@§.§![§(§2!J§),currentUIView,§>!4§.§#$§(tutorialName,§?! §.§,§));
         }
         catch(e:Error)
         {
            return;
         }
         §5"§.push(tutorialPopup);
      }
      
      public static function §%!Y§(param1:§;J§) : void
      {
         var _loc2_:§&b§ = null;
         for each(_loc2_ in §3>§.§8!$§.slingshot.§^!O§)
         {
            if(§3§.§6!Z§.§6!Y§[_loc2_.name] != true)
            {
               §!F§.§5!H§.isPaused = true;
               §@!A§(_loc2_.name,param1);
               §+@§();
               §3§.§6!Z§.§>!2§(_loc2_.name);
            }
         }
      }
      
      public static function §0!V§() : Boolean
      {
         if(§3>§.§8!$§ && §3>§.§8!$§.slingshot && §3>§.§8!$§.slingshot.§^!O§)
         {
            return §3>§.§8!$§.slingshot.§^!O§.length > 0;
         }
         return false;
      }
      
      private static function §+@§(param1:Boolean = true) : void
      {
         if(§=T§ == false && §5"§.length > 0)
         {
            §&H§ = true;
            §^r§ = §5"§.pop();
            §^r§.open(param1);
         }
      }
      
      public static function §8Y§() : void
      {
         if(§=T§ == true)
         {
            if(§5"§.length > 0)
            {
               §^r§.preClose(false);
               §&H§ = false;
               §+@§(false);
            }
            else
            {
               §&H§ = false;
               §^r§.preClose(true);
            }
         }
      }
      
      public static function get §=T§() : Boolean
      {
         return §&H§;
      }
   }
}
