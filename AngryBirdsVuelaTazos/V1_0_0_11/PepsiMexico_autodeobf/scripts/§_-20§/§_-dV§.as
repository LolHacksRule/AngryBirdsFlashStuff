package §_-20§
{
   import §_-Ah§.§_-b§;
   import §_-Bp§.§_-5N§;
   import §_-Bp§.§_-Mn§;
   import §_-QM§.§_-Ns§;
   import §_-ZG§.§_-eW§;
   import §_-d5§.§_-6Y§;
   import §_-ez§.§_-7m§;
   
   public class §_-dV§
   {
      
      private static var §_-Sz§:Class = §_-t7§;
      
      private static var §_-lh§:Array = [];
      
      private static var §_-5i§:§_-Rx§ = null;
      
      public static var §_-DU§:Boolean = false;
       
      
      public function §_-dV§()
      {
         super();
      }
      
      private static function §_-hE§(param1:String, param2:§_-Ns§) : void
      {
         var tutorialPopup:§_-Rx§ = null;
         var birdName:String = param1;
         var currentUIView:§_-Ns§ = param2;
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
            tutorialPopup = new §_-Rx§(§_-eW§.§_-Qf§(§_-Sz§),currentUIView,§_-Mn§.§_-5f§(tutorialName,§_-5N§.§_-9v§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-lh§.push(tutorialPopup);
      }
      
      public static function §_-rk§(param1:§_-Ns§) : void
      {
         var _loc2_:§_-7m§ = null;
         for each(_loc2_ in §_-b§.§_-cK§.mLevelSlingshot.mBirds)
         {
            if(§_-I8§.§_-Gn§.§_-HW§[_loc2_.name] != true)
            {
               §_-6Y§.§_-7p§.§_-ej§ = true;
               §_-hE§(_loc2_.name,param1);
               §_-NF§();
               §_-I8§.§_-Gn§.§_-Mc§(_loc2_.name);
            }
         }
      }
      
      public static function §_-F-§() : Boolean
      {
         if(§_-b§.§_-cK§ && §_-b§.§_-cK§.mLevelSlingshot && §_-b§.§_-cK§.mLevelSlingshot.mBirds)
         {
            return §_-b§.§_-cK§.mLevelSlingshot.mBirds.length > 0;
         }
         return false;
      }
      
      private static function §_-NF§(param1:Boolean = true) : void
      {
         if(§_-DU§ == false && §_-lh§.length > 0)
         {
            §_-DU§ = true;
            §_-5i§ = §_-lh§.pop();
            §_-5i§.open(param1);
         }
      }
      
      public static function §_-Eh§() : void
      {
         if(§_-DU§ == true)
         {
            if(§_-lh§.length > 0)
            {
               §_-5i§.preClose(false);
               §_-DU§ = false;
               §_-NF§(false);
            }
            else
            {
               §_-DU§ = false;
               §_-5i§.preClose(true);
            }
         }
      }
   }
}
