package §_-De§
{
   import §_-1p§.§_-K9§;
   import §_-7§.§_-ph§;
   import §_-FQ§.§_-ym§;
   import §_-JR§.§_-yh§;
   import §_-ex§.§_-MA§;
   import §_-rQ§.§_-Q2§;
   import §_-rQ§.§_-hA§;
   
   public class §_-a2§
   {
      
      private static var §_-C7§:Class = §_-Uv§;
      
      private static var §_-Et§:Array = [];
      
      private static var §each §:§_-ep§ = null;
      
      public static var §_-yI§:Boolean = false;
       
      
      public function §_-a2§()
      {
         super();
      }
      
      private static function §_-hI§(param1:String, param2:§_-K9§) : void
      {
         var tutorialPopup:§_-ep§ = null;
         var birdName:String = param1;
         var currentUIView:§_-K9§ = param2;
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
            tutorialPopup = new §_-ep§(§_-MA§.§_-lC§(§_-C7§),currentUIView,§_-Q2§.§_-Fn§(tutorialName,§_-hA§.§_-G4§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-Et§.push(tutorialPopup);
      }
      
      public static function §_-Ga§(param1:§_-K9§) : void
      {
         var _loc2_:§_-ym§ = null;
         for each(_loc2_ in §_-ph§.§_-Tw§.mLevelSlingshot.§_-KC§)
         {
            if(§_-2U§.§_-T1§.§_-5O§[_loc2_.name] != true)
            {
               §_-yh§.§_-hY§.§_-xg§ = true;
               §_-hI§(_loc2_.name,param1);
               §_-Wu§();
               §_-2U§.§_-T1§.§_-Zt§(_loc2_.name);
            }
         }
      }
      
      public static function §_-hd§() : Boolean
      {
         if(§_-ph§.§_-Tw§ && §_-ph§.§_-Tw§.mLevelSlingshot && §_-ph§.§_-Tw§.mLevelSlingshot.§_-KC§)
         {
            return §_-ph§.§_-Tw§.mLevelSlingshot.§_-KC§.length > 0;
         }
         return false;
      }
      
      private static function §_-Wu§(param1:Boolean = true) : void
      {
         if(§_-yI§ == false && §_-Et§.length > 0)
         {
            §_-yI§ = true;
            §each § = §_-Et§.pop();
            §each §.open(param1);
         }
      }
      
      public static function §_-YH§() : void
      {
         if(§_-yI§ == true)
         {
            if(§_-Et§.length > 0)
            {
               §each §.preClose(false);
               §_-yI§ = false;
               §_-Wu§(false);
            }
            else
            {
               §_-yI§ = false;
               §each §.preClose(true);
            }
         }
      }
   }
}
