package §_-zM§
{
   import §_-2r§.§_-9j§;
   import §_-5p§.§_-0-B§;
   import §_-5p§.§_-Kf§;
   import §_-U0§.§_-JP§;
   import §_-gC§.§_-XR§;
   import §_-q6§.§_-ZW§;
   import §_-vB§.§_-Kk§;
   
   public class §_-kL§
   {
      
      private static var §_-if§:Class = §_-77§;
      
      private static var §_-Zn§:Array = [];
      
      private static var §_-Pg§:§_-g0§ = null;
      
      private static var §_-Qd§:Boolean = false;
       
      
      public function §_-kL§()
      {
         super();
      }
      
      private static function §_-Su§(param1:String, param2:§_-ZW§) : void
      {
         var tutorialPopup:§_-g0§ = null;
         var birdName:String = param1;
         var currentUIView:§_-ZW§ = param2;
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
            tutorialPopup = new §_-g0§(§_-JP§.§_-t5§(§_-if§),currentUIView,§_-0-B§.§_-Lu§(tutorialName,§_-Kf§.§var §));
         }
         catch(e:Error)
         {
            return;
         }
         §_-Zn§.push(tutorialPopup);
      }
      
      public static function §_-90§(param1:§_-ZW§) : void
      {
         var _loc2_:§_-9j§ = null;
         for each(_loc2_ in §_-XR§.§_-Xv§.slingshot.§_-a6§)
         {
            if(§_-Vc§.§_-3K§.§_-Dw§[_loc2_.name] != true)
            {
               §_-Kk§.§_-qh§.§_-xg§ = true;
               §_-Su§(_loc2_.name,param1);
               §_-8M§();
               §_-Vc§.§_-3K§.§_-pz§(_loc2_.name);
            }
         }
      }
      
      public static function §_-G1§() : Boolean
      {
         if(§_-XR§.§_-Xv§ && §_-XR§.§_-Xv§.slingshot && §_-XR§.§_-Xv§.slingshot.§_-a6§)
         {
            return §_-XR§.§_-Xv§.slingshot.§_-a6§.length > 0;
         }
         return false;
      }
      
      private static function §_-8M§(param1:Boolean = true) : void
      {
         if(§_-PV§ == false && §_-Zn§.length > 0)
         {
            §_-Qd§ = true;
            §_-Pg§ = §_-Zn§.pop();
            §_-Pg§.open(param1);
         }
      }
      
      public static function §_-Lr§() : void
      {
         if(§_-PV§ == true)
         {
            if(§_-Zn§.length > 0)
            {
               §_-Pg§.preClose(false);
               §_-Qd§ = false;
               §_-8M§(false);
            }
            else
            {
               §_-Qd§ = false;
               §_-Pg§.preClose(true);
            }
         }
      }
      
      public static function get §_-PV§() : Boolean
      {
         return §_-Qd§;
      }
   }
}
