package §_-dA§
{
   import §_-OJ§.§_-1W§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-fR§;
   import §_-Ur§.§_-ru§;
   import §_-e3§.§_-JN§;
   import §_-gY§.§_-Vu§;
   import §_-hU§.§_-MB§;
   
   public class §_-FO§
   {
      
      private static var §_-6Q§:Class = §_-VR§;
      
      private static var §_-Xd§:Array = [];
      
      private static var §_-I0§:§_-DX§ = null;
      
      public static var §_-GJ§:Boolean = false;
       
      
      public function §_-FO§()
      {
         super();
      }
      
      private static function §_-Pi§(param1:String, param2:§_-ru§) : void
      {
         var tutorialPopup:§_-DX§ = null;
         var birdName:String = param1;
         var currentUIView:§_-ru§ = param2;
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
            tutorialPopup = new §_-DX§(§_-JN§.§_-Yd§(§_-6Q§),currentUIView,§_-fR§.§_-39§(tutorialName,§_-2X§.§_-mE§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-Xd§.push(tutorialPopup);
      }
      
      public static function §_-I8§(param1:§_-ru§) : void
      {
         var _loc2_:§_-1W§ = null;
         for each(_loc2_ in §_-MB§.§_-A7§.slingshot.§_-zK§)
         {
            if(§_-Qu§.§_-di§.§_-9w§[_loc2_.name] != true)
            {
               §_-Vu§.§_-jT§.§_-ra§ = true;
               §_-Pi§(_loc2_.name,param1);
               §_-aq§();
               §_-Qu§.§_-di§.§_-Ak§(_loc2_.name);
            }
         }
      }
      
      public static function §_-Ms§() : Boolean
      {
         if(§_-MB§.§_-A7§ && §_-MB§.§_-A7§.slingshot && §_-MB§.§_-A7§.slingshot.§_-zK§)
         {
            return §_-MB§.§_-A7§.slingshot.§_-zK§.length > 0;
         }
         return false;
      }
      
      private static function §_-aq§(param1:Boolean = true) : void
      {
         if(§_-GJ§ == false && §_-Xd§.length > 0)
         {
            §_-GJ§ = true;
            §_-I0§ = §_-Xd§.pop();
            §_-I0§.open(param1);
         }
      }
      
      public static function §_-OC§() : void
      {
         if(§_-GJ§ == true)
         {
            if(§_-Xd§.length > 0)
            {
               §_-I0§.preClose(false);
               §_-GJ§ = false;
               §_-aq§(false);
            }
            else
            {
               §_-GJ§ = false;
               §_-I0§.preClose(true);
            }
         }
      }
   }
}
