package §;C§
{
   import §5!?§.§;!Y§;
   import §6!Q§.§,![§;
   import §8r§.§5Q§;
   import §8r§.§@V§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   
   public class §9!P§
   {
      
      private static var §9D§:Class = §;!0§;
      
      private static var §7!&§:Array = [];
      
      private static var §^A§:§,%§ = null;
      
      private static var §?!?§:Boolean = false;
       
      
      public function §9!P§()
      {
         super();
      }
      
      private static function §#n§(param1:String, param2:§4!0§) : void
      {
         var tutorialPopup:§,%§ = null;
         var birdName:String = param1;
         var currentUIView:§4!0§ = param2;
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
            tutorialPopup = new §,%§(§,![§.§6b§(§9D§),currentUIView,§5Q§.§5!S§(tutorialName,§@V§.§`G§));
         }
         catch(e:Error)
         {
            return;
         }
         §7!&§.push(tutorialPopup);
      }
      
      public static function §&P§() : void
      {
         var birdName:String = null;
         try
         {
            for each(birdName in §6x§())
            {
               §=i§.§0§.data[birdName] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §6x§() : Array
      {
         var _loc2_:§;!Y§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §"n§.§[b§.slingshot.§%X§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §4_§(param1:§4!0§) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§4!0§ = param1;
         var birdsToShow:Array = §6x§();
         try
         {
            i = birdsToShow.length - 1;
            while(i >= 0)
            {
               birdName = birdsToShow[i];
               if(§=i§.§0§.data[birdName] == undefined || §=i§.§0§.data[birdName] == false)
               {
                  §=i§.§0§.data[birdName] = true;
               }
               else
               {
                  birdsToShow.splice(i,1);
               }
               i--;
            }
            §=i§.§0§.flush();
         }
         catch(e:Error)
         {
         }
         for each(birdName in birdsToShow)
         {
            §#n§(birdName,currentUIView);
         }
         §=!N§();
      }
      
      private static function §=!N§(param1:Boolean = true) : void
      {
         if(isOpen == false && §7!&§.length > 0)
         {
            §?!?§ = true;
            §^A§ = §7!&§.pop();
            §^A§.open(param1);
            §^A§.x = §=i§.§'0§ / 2;
            §^A§.y = §=i§.§8-§ / 2;
            §^A§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §22§() : void
      {
         if(isOpen == true)
         {
            if(§7!&§.length > 0)
            {
               §^A§.preClose(false);
               §?!?§ = false;
               §=!N§(false);
            }
            else
            {
               §?!?§ = false;
               §^A§.preClose(true);
            }
         }
      }
      
      public static function get isOpen() : Boolean
      {
         return §?!?§;
      }
   }
}
