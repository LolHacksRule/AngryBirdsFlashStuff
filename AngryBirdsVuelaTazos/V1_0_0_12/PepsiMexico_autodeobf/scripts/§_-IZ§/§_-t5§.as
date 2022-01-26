package §_-IZ§
{
   import §_-1P§.§_-3p§;
   import §_-1P§.§_-Wm§;
   import §_-8J§.§_-8s§;
   import §_-Hw§.§_-3C§;
   import §_-RG§.§_-gL§;
   import §_-rp§.§_-cl§;
   import §_-v3§.§_-G3§;
   
   public class §_-t5§
   {
      
      private static var §_-2S§:Class = §_-bp§;
      
      private static var §_-sq§:Array = [];
      
      private static var §_-Ju§:§_-tc§ = null;
      
      public static var §_-p5§:Boolean = false;
       
      
      public function §_-t5§()
      {
         super();
      }
      
      private static function §_-JP§(param1:String, param2:§_-8s§) : void
      {
         var tutorialPopup:§_-tc§ = null;
         var birdName:String = param1;
         var currentUIView:§_-8s§ = param2;
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
            tutorialPopup = new §_-tc§(§_-gL§.§_-Bp§(§_-2S§),currentUIView,§_-Wm§.§_-KT§(tutorialName,§_-3p§.§_-WK§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-sq§.push(tutorialPopup);
      }
      
      public static function §_-3o§(param1:§_-8s§) : void
      {
         var _loc2_:§_-cl§ = null;
         for each(_loc2_ in §_-3C§.§_-bz§.mLevelSlingshot.mBirds)
         {
            if(§_-0Y§.§_-rb§.§_-R§[_loc2_.name] != true)
            {
               §_-G3§.§_-gw§.§_-be§ = true;
               §_-JP§(_loc2_.name,param1);
               §_-Do§();
               §_-0Y§.§_-rb§.§_-BV§(_loc2_.name);
            }
         }
      }
      
      public static function §_-74§() : Boolean
      {
         if(§_-3C§.§_-bz§ && §_-3C§.§_-bz§.mLevelSlingshot && §_-3C§.§_-bz§.mLevelSlingshot.mBirds)
         {
            return §_-3C§.§_-bz§.mLevelSlingshot.mBirds.length > 0;
         }
         return false;
      }
      
      private static function §_-Do§(param1:Boolean = true) : void
      {
         if(§_-p5§ == false && §_-sq§.length > 0)
         {
            §_-p5§ = true;
            §_-Ju§ = §_-sq§.pop();
            §_-Ju§.open(param1);
         }
      }
      
      public static function §_-c6§() : void
      {
         if(§_-p5§ == true)
         {
            if(§_-sq§.length > 0)
            {
               §_-Ju§.preClose(false);
               §_-p5§ = false;
               §_-Do§(false);
            }
            else
            {
               §_-p5§ = false;
               §_-Ju§.preClose(true);
            }
         }
      }
   }
}
