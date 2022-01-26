package §_-Q2§
{
   import §_-0-K§.§_-ZK§;
   import §_-4I§.§_-Kf§;
   import §_-4I§.§_-v8§;
   import §_-KM§.§_-0A§;
   import §_-TX§.§_-0X§;
   import §_-r6§.§_-YF§;
   import §_-xL§.§_-1-§;
   
   public class §_-nx§
   {
      
      private static var §_-0-5§:Class = §_-cR§;
      
      private static var §_-2X§:Array = [];
      
      private static var §_-Ya§:§_-P3§ = null;
      
      private static var §_-gG§:Boolean = false;
       
      
      public function §_-nx§()
      {
         super();
      }
      
      private static function §_-0-p§(param1:String, param2:§_-1-§) : void
      {
         var tutorialPopup:§_-P3§ = null;
         var birdName:String = param1;
         var currentUIView:§_-1-§ = param2;
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
            tutorialPopup = new §_-P3§(§_-YF§.§_-0-I§(§_-0-5§),currentUIView,§_-Kf§.§_-Yo§(tutorialName,§_-v8§.§_-yU§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-2X§.push(tutorialPopup);
      }
      
      public static function §_-00F§(param1:§_-1-§) : void
      {
         var _loc2_:§_-ZK§ = null;
         for each(_loc2_ in §_-0X§.§_-O2§.slingshot.§_-00M§)
         {
            if(§_-WX§.§_-ZR§.§_-t3§[_loc2_.name] != true)
            {
               §_-0A§.§with§.§_-QF§ = true;
               §_-0-p§(_loc2_.name,param1);
               §_-H6§();
               §_-WX§.§_-ZR§.§_-y1§(_loc2_.name);
            }
         }
      }
      
      public static function §_-cq§() : Boolean
      {
         if(§_-0X§.§_-O2§ && §_-0X§.§_-O2§.slingshot && §_-0X§.§_-O2§.slingshot.§_-00M§)
         {
            return §_-0X§.§_-O2§.slingshot.§_-00M§.length > 0;
         }
         return false;
      }
      
      private static function §_-H6§(param1:Boolean = true) : void
      {
         if(§_-MS§ == false && §_-2X§.length > 0)
         {
            §_-gG§ = true;
            §_-Ya§ = §_-2X§.pop();
            §_-Ya§.open(param1);
         }
      }
      
      public static function §_-sX§() : void
      {
         if(§_-MS§ == true)
         {
            if(§_-2X§.length > 0)
            {
               §_-Ya§.preClose(false);
               §_-gG§ = false;
               §_-H6§(false);
            }
            else
            {
               §_-gG§ = false;
               §_-Ya§.preClose(true);
            }
         }
      }
      
      public static function get §_-MS§() : Boolean
      {
         return §_-gG§;
      }
   }
}
