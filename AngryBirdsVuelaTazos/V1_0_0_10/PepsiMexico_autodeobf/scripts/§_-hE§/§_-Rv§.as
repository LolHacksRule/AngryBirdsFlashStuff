package §_-hE§
{
   import §_-0y§.§_-YK§;
   import §_-B2§.§_-H4§;
   import §_-I1§.§_-2N§;
   import §_-KS§.§_-ia§;
   import §_-KS§.§_-n-§;
   import §_-Ux§.§_-2E§;
   import §_-ot§.§_-TP§;
   
   public class §_-Rv§
   {
      
      private static var §_-ZH§:Class = §_-7M§;
      
      private static var §_-7i§:Array = [];
      
      private static var §_-iW§:§_-A2§ = null;
      
      public static var §_-eu§:Boolean = false;
       
      
      public function §_-Rv§()
      {
         super();
      }
      
      private static function §_-86§(param1:String, param2:§_-2E§) : void
      {
         var tutorialPopup:§_-A2§ = null;
         var birdName:String = param1;
         var currentUIView:§_-2E§ = param2;
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
            default:
               return;
         }
         try
         {
            tutorialPopup = new §_-A2§(§_-TP§.§_-bz§(§_-ZH§),currentUIView,§_-n-§.§_-8i§(tutorialName,§_-ia§.§_-vJ§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-7i§.push(tutorialPopup);
      }
      
      public static function §_-0K§(param1:§_-2E§) : void
      {
         var _loc2_:§_-YK§ = null;
         for each(_loc2_ in §_-2N§.§_-iP§.mLevelSlingshot.mBirds)
         {
            if(§_-5e§.§_-Yn§.§_-Qv§[_loc2_.name] != true)
            {
               §_-H4§.§_-5y§.§_-Jq§ = true;
               §_-86§(_loc2_.name,param1);
               §_-8E§();
               §_-5e§.§_-Yn§.§_-cm§(_loc2_.name);
            }
         }
      }
      
      public static function §super§() : Boolean
      {
         if(§_-2N§.§_-iP§ && §_-2N§.§_-iP§.mLevelSlingshot && §_-2N§.§_-iP§.mLevelSlingshot.mBirds)
         {
            return §_-2N§.§_-iP§.mLevelSlingshot.mBirds.length > 0;
         }
         return false;
      }
      
      private static function §_-8E§(param1:Boolean = true) : void
      {
         if(§_-eu§ == false && §_-7i§.length > 0)
         {
            §_-eu§ = true;
            §_-iW§ = §_-7i§.pop();
            §_-iW§.open(param1);
         }
      }
      
      public static function §_-DT§() : void
      {
         if(§_-eu§ == true)
         {
            if(§_-7i§.length > 0)
            {
               §_-iW§.preClose(false);
               §_-eu§ = false;
               §_-8E§(false);
            }
            else
            {
               §_-eu§ = false;
               §_-iW§.preClose(true);
            }
         }
      }
   }
}
