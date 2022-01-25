package §'4§
{
   import §%!G§.§ !G§;
   import §-v§.§,!1§;
   import §2l§.§#!#§;
   import §2l§.§]O§;
   import §4A§.§>!=§;
   import §?@§.§^!M§;
   
   public class §@;§
   {
      
      private static var §8Z§:Class = §+S§;
      
      private static var §0j§:Array = [];
      
      private static var §>e§:§?!_§ = null;
      
      private static var §0!G§:Boolean = false;
       
      
      public function §@;§()
      {
         super();
      }
      
      private static function §%U§(param1:String, param2:§ !G§) : void
      {
         var tutorialPopup:§?!_§ = null;
         var birdName:String = param1;
         var currentUIView:§ !G§ = param2;
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
            tutorialPopup = new §?!_§(§^!M§.§2!^§(§8Z§),currentUIView,§#!#§.§8@§(tutorialName,§]O§.§'!C§));
         }
         catch(e:Error)
         {
            return;
         }
         §0j§.push(tutorialPopup);
      }
      
      public static function §76§() : void
      {
         var birdName:String = null;
         try
         {
            for each(birdName in §1!P§())
            {
               §"!@§.§];§.data[birdName] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §1!P§() : Array
      {
         var _loc2_:§>!=§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §,!1§.§2T§.slingshot.§6e§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §^5§(param1:§ !G§) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§ !G§ = param1;
         var birdsToShow:Array = §1!P§();
         try
         {
            i = birdsToShow.length - 1;
            while(i >= 0)
            {
               birdName = birdsToShow[i];
               if(§"!@§.§];§.data[birdName] == undefined || §"!@§.§];§.data[birdName] == false)
               {
                  §"!@§.§];§.data[birdName] = true;
               }
               else
               {
                  birdsToShow.splice(i,1);
               }
               i--;
            }
            §"!@§.§];§.flush();
         }
         catch(e:Error)
         {
         }
         for each(birdName in birdsToShow)
         {
            §%U§(birdName,currentUIView);
         }
         §>N§();
      }
      
      private static function §>N§(param1:Boolean = true) : void
      {
         if(isOpen == false && §0j§.length > 0)
         {
            §0!G§ = true;
            §>e§ = §0j§.pop();
            §>e§.open(param1);
            §>e§.x = §"!@§.§`?§ / 2;
            §>e§.y = §"!@§.§9!;§ / 2;
            §>e§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §,S§() : void
      {
         if(isOpen == true)
         {
            if(§0j§.length > 0)
            {
               §>e§.preClose(false);
               §0!G§ = false;
               §>N§(false);
            }
            else
            {
               §0!G§ = false;
               §>e§.preClose(true);
            }
         }
      }
      
      public static function get isOpen() : Boolean
      {
         return §0!G§;
      }
   }
}
