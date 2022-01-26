package §_-eb§
{
   import §_-5Y§.§_-UH§;
   import §_-Eo§.§_-EX§;
   import §_-M0§.§_-u4§;
   import §_-PC§.§_-Ce§;
   import §_-PC§.§_-lx§;
   import §_-Yh§.§_-fA§;
   import §_-fI§.§_-BI§;
   
   public class §_-lk§
   {
      
      private static var §_-Y3§:Class = §_-Z0§;
      
      private static var §_-6P§:Array = [];
      
      private static var §case §:§_-8Y§ = null;
      
      public static var §_-AN§:Boolean = false;
       
      
      public function §_-lk§()
      {
         super();
      }
      
      private static function §_-34§(param1:String, param2:§_-fA§) : void
      {
         var tutorialPopup:§_-8Y§ = null;
         var birdName:String = param1;
         var currentUIView:§_-fA§ = param2;
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
            tutorialPopup = new §_-8Y§(§_-EX§.§_-e9§(§_-Y3§),currentUIView,§_-Ce§.§_-cB§(tutorialName,§_-lx§.§_-aP§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-6P§.push(tutorialPopup);
      }
      
      public static function §_-Rb§(param1:§_-fA§) : void
      {
         var _loc2_:§_-UH§ = null;
         for each(_loc2_ in §_-u4§.§_-40§.slingshot.§_-zl§)
         {
            if(§_-Tj§.§_-7q§.§_-E6§[_loc2_.name] != true)
            {
               §_-BI§.§_-CE§.§_-9m§ = true;
               §_-34§(_loc2_.name,param1);
               §_-Hi§();
               §_-Tj§.§_-7q§.§_-bL§(_loc2_.name);
            }
         }
      }
      
      public static function §_-cY§() : Boolean
      {
         if(§_-u4§.§_-40§ && §_-u4§.§_-40§.slingshot && §_-u4§.§_-40§.slingshot.§_-zl§)
         {
            return §_-u4§.§_-40§.slingshot.§_-zl§.length > 0;
         }
         return false;
      }
      
      private static function §_-Hi§(param1:Boolean = true) : void
      {
         if(§_-AN§ == false && §_-6P§.length > 0)
         {
            §_-AN§ = true;
            §case § = §_-6P§.pop();
            §case §.open(param1);
         }
      }
      
      public static function §_-Xu§() : void
      {
         if(§_-AN§ == true)
         {
            if(§_-6P§.length > 0)
            {
               §case §.preClose(false);
               §_-AN§ = false;
               §_-Hi§(false);
            }
            else
            {
               §_-AN§ = false;
               §case §.preClose(true);
            }
         }
      }
   }
}
