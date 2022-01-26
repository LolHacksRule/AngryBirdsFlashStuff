package §_-hJ§
{
   import §_-94§.§_-si§;
   import §_-Kz§.§_-FY§;
   import §_-Ye§.§_-cP§;
   import §_-aA§.§_-i7§;
   import §_-my§.§_-V0§;
   import §_-my§.§_-W5§;
   import §_-w8§.§_-S6§;
   
   public class §_-mm§
   {
      
      private static var §_-EF§:Class = §_-GG§;
      
      private static var §_-yu§:Array = [];
      
      private static var §_-Cu§:§_-v1§ = null;
      
      private static var §_-sB§:Boolean = false;
       
      
      public function §_-mm§()
      {
         super();
      }
      
      private static function §_-dn§(param1:String, param2:§_-S6§) : void
      {
         var tutorialPopup:§_-v1§ = null;
         var birdName:String = param1;
         var currentUIView:§_-S6§ = param2;
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
            tutorialPopup = new §_-v1§(§_-i7§.§_-Yj§(§_-EF§),currentUIView,§_-W5§.§_-SP§(tutorialName,§_-V0§.§_-0H§));
         }
         catch(e:Error)
         {
            return;
         }
         §_-yu§.push(tutorialPopup);
      }
      
      public static function §_-B7§(param1:§_-S6§) : void
      {
         var _loc2_:§_-FY§ = null;
         for each(_loc2_ in §_-si§.§_-HI§.slingshot.§_-Mg§)
         {
            if(§_-rs§.§_-Nr§.§_-3H§[_loc2_.name] != true)
            {
               §_-cP§.§_-Nz§.§_-Zn§ = true;
               §_-dn§(_loc2_.name,param1);
               §_-mZ§();
               §_-rs§.§_-Nr§.§_-5R§(_loc2_.name);
            }
         }
      }
      
      public static function §_-rw§() : Boolean
      {
         if(§_-si§.§_-HI§ && §_-si§.§_-HI§.slingshot && §_-si§.§_-HI§.slingshot.§_-Mg§)
         {
            return §_-si§.§_-HI§.slingshot.§_-Mg§.length > 0;
         }
         return false;
      }
      
      private static function §_-mZ§(param1:Boolean = true) : void
      {
         if(§_-Vc§ == false && §_-yu§.length > 0)
         {
            §_-sB§ = true;
            §_-Cu§ = §_-yu§.pop();
            §_-Cu§.open(param1);
         }
      }
      
      public static function §_-S4§() : void
      {
         if(§_-Vc§ == true)
         {
            if(§_-yu§.length > 0)
            {
               §_-Cu§.preClose(false);
               §_-sB§ = false;
               §_-mZ§(false);
            }
            else
            {
               §_-sB§ = false;
               §_-Cu§.preClose(true);
            }
         }
      }
      
      public static function get §_-Vc§() : Boolean
      {
         return §_-sB§;
      }
   }
}
