package §'=§
{
   import §&8§.§<O§;
   import §-A§.§^!F§;
   import §2!4§.§3&§;
   import §2!4§.§5T§;
   import §2!P§.§6=§;
   import §=g§.§ `§;
   import §@!W§.§8!W§;
   
   public class §-!1§
   {
      
      private static var §78§:Class = §%m§;
      
      private static var §7!H§:Array = [];
      
      private static var §!!@§:§7T§ = null;
      
      private static var §'5§:Boolean = false;
       
      
      public function §-!1§()
      {
         super();
      }
      
      private static function §,]§(param1:String, param2:§<O§) : void
      {
         var tutorialPopup:§7T§ = null;
         var birdName:String = param1;
         var currentUIView:§<O§ = param2;
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
            tutorialPopup = new §7T§(§ `§.§2!3§(§78§),currentUIView,§3&§.§^!Z§(tutorialName,§5T§.§0!S§));
         }
         catch(e:Error)
         {
            return;
         }
         §7!H§.push(tutorialPopup);
      }
      
      public static function §;T§(param1:§<O§) : void
      {
         var _loc2_:§^!F§ = null;
         for each(_loc2_ in §8!W§.§=X§.slingshot.§3!Q§)
         {
            if(§@!!§.§<R§.§<!3§[_loc2_.name] != true)
            {
               §6=§.§6>§.isPaused = true;
               §,]§(_loc2_.name,param1);
               §^4§();
               §@!!§.§<R§.§4!3§(_loc2_.name);
            }
         }
      }
      
      public static function §2@§() : Boolean
      {
         if(§8!W§.§=X§ && §8!W§.§=X§.slingshot && §8!W§.§=X§.slingshot.§3!Q§)
         {
            return §8!W§.§=X§.slingshot.§3!Q§.length > 0;
         }
         return false;
      }
      
      private static function §^4§(param1:Boolean = true) : void
      {
         if(§,o§ == false && §7!H§.length > 0)
         {
            §'5§ = true;
            §!!@§ = §7!H§.pop();
            §!!@§.open(param1);
         }
      }
      
      public static function § !,§() : void
      {
         if(§,o§ == true)
         {
            if(§7!H§.length > 0)
            {
               §!!@§.preClose(false);
               §'5§ = false;
               §^4§(false);
            }
            else
            {
               §'5§ = false;
               §!!@§.preClose(true);
            }
         }
      }
      
      public static function get §,o§() : Boolean
      {
         return §'5§;
      }
   }
}
