package §?!1§
{
   import §!J§.§[&§;
   import §&!W§.§2!'§;
   import §&!W§.§8!K§;
   import §&N§.§0l§;
   import §-M§.§3!6§;
   import §7W§.§ !+§;
   import §?'§.§[!N§;
   
   public class §,t§
   {
      
      private static var §,F§:Class = §%_§;
      
      private static var §;!L§:Array = [];
      
      private static var §>7§:§<!Q§ = null;
      
      private static var §=V§:Boolean = false;
       
      
      public function §,t§()
      {
         super();
      }
      
      private static function §,!V§(param1:String, param2:§3!6§) : void
      {
         var tutorialPopup:§<!Q§ = null;
         var birdName:String = param1;
         var currentUIView:§3!6§ = param2;
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
            tutorialPopup = new §<!Q§(§0l§.§8!#§(§,F§),currentUIView,§2!'§.§3z§(tutorialName,§8!K§.§-!U§));
         }
         catch(e:Error)
         {
            return;
         }
         §;!L§.push(tutorialPopup);
      }
      
      public static function § ! §(param1:§3!6§) : void
      {
         var _loc2_:§[!N§ = null;
         for each(_loc2_ in §[&§.§&!'§.slingshot.§ !J§)
         {
            if(§,l§.§3!,§.§+x§[_loc2_.name] != true)
            {
               § !+§.§?!L§.§5!T§ = true;
               §,!V§(_loc2_.name,param1);
               §4V§();
               §,l§.§3!,§.§-!?§(_loc2_.name);
            }
         }
      }
      
      public static function § C§() : Boolean
      {
         if(§[&§.§&!'§ && §[&§.§&!'§.slingshot && §[&§.§&!'§.slingshot.§ !J§)
         {
            return §[&§.§&!'§.slingshot.§ !J§.length > 0;
         }
         return false;
      }
      
      private static function §4V§(param1:Boolean = true) : void
      {
         if(§#!=§ == false && §;!L§.length > 0)
         {
            §=V§ = true;
            §>7§ = §;!L§.pop();
            §>7§.open(param1);
         }
      }
      
      public static function §[!<§() : void
      {
         if(§#!=§ == true)
         {
            if(§;!L§.length > 0)
            {
               §>7§.preClose(false);
               §=V§ = false;
               §4V§(false);
            }
            else
            {
               §=V§ = false;
               §>7§.preClose(true);
            }
         }
      }
      
      public static function get §#!=§() : Boolean
      {
         return §=V§;
      }
   }
}
