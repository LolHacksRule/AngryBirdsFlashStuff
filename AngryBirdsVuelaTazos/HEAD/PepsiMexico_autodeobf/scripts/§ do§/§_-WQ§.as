package § do§
{
   import §_-3b§.§_-Og§;
   import §_-3b§.§_-wg§;
   import §_-Di§.§_-aX§;
   import §_-Ku§.§_-Ha§;
   import §_-Qn§.§_-bo§;
   import §_-gM§.§_-NE§;
   import §_-pm§.§_-gb§;
   
   public class §_-WQ§
   {
      
      private static var §_-Ip§:Class = §_-La§;
      
      private static var §_-q4§:Array = [];
      
      private static var §_-IT§:§_-Oj§ = null;
      
      public static var §_-LM§:Boolean = false;
       
      
      public function §_-WQ§()
      {
         super();
      }
      
      private static function §_-vc§(param1:String, param2:§_-bo§) : void
      {
         var tutorialPopup:§_-Oj§ = null;
         var birdName:String = param1;
         var currentUIView:§_-bo§ = param2;
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
            tutorialPopup = new §_-Oj§(§_-NE§.§_-wH§(§_-Ip§),currentUIView,§_-wg§.§_-1N§(tutorialName,§_-Og§.§_-uP§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-q4§.push(tutorialPopup);
      }
      
      public static function §_-6P§(param1:§_-bo§) : void
      {
         var _loc2_:§_-aX§ = null;
         for each(_loc2_ in §_-gb§.§_-ls§.slingshot.§_-TO§)
         {
            if(§_-q0§.§_-AI§.§_-kv§[_loc2_.name] != true)
            {
               §_-Ha§.§for §.§_-vd§ = true;
               §_-vc§(_loc2_.name,param1);
               §_-ko§();
               §_-q0§.§_-AI§.§_-U3§(_loc2_.name);
            }
         }
      }
      
      public static function §_-RI§() : Boolean
      {
         if(§_-gb§.§_-ls§ && §_-gb§.§_-ls§.slingshot && §_-gb§.§_-ls§.slingshot.§_-TO§)
         {
            return §_-gb§.§_-ls§.slingshot.§_-TO§.length > 0;
         }
         return false;
      }
      
      private static function §_-ko§(param1:Boolean = true) : void
      {
         if(§_-LM§ == false && §_-q4§.length > 0)
         {
            §_-LM§ = true;
            §_-IT§ = §_-q4§.pop();
            §_-IT§.open(param1);
         }
      }
      
      public static function §_-77§() : void
      {
         if(§_-LM§ == true)
         {
            if(§_-q4§.length > 0)
            {
               §_-IT§.preClose(false);
               §_-LM§ = false;
               §_-ko§(false);
            }
            else
            {
               §_-LM§ = false;
               §_-IT§.preClose(true);
            }
         }
      }
   }
}
