package §]n§
{
   import §&F§.§8W§;
   import §0!b§.§#!=§;
   import §48§.§&m§;
   import §48§.§4a§;
   import §^6§.§;l§;
   import §^=§.§4S§;
   
   public class §9!-§
   {
      
      private static var §7!A§:Class = §-!a§;
      
      private static var §]!C§:Array = [];
      
      private static var §5!1§:§`f§ = null;
      
      private static var §!8§:Boolean = false;
       
      
      public function §9!-§()
      {
         super();
      }
      
      private static function §3!1§(param1:String, param2:§;l§) : void
      {
         var tutorialPopup:§`f§ = null;
         var birdName:String = param1;
         var currentUIView:§;l§ = param2;
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
            tutorialPopup = new §`f§(§4S§.§+X§(§7!A§),currentUIView,§&m§.§^5§(tutorialName,§4a§.§]!D§));
         }
         catch(e:Error)
         {
            return;
         }
         §]!C§.push(tutorialPopup);
      }
      
      public static function §8B§() : void
      {
         var birdName:String = null;
         try
         {
            for each(birdName in §?[§())
            {
               §-!#§.§3!V§.data[birdName] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §?[§() : Array
      {
         var _loc2_:§8W§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §#!=§.§&![§.slingshot.§=!`§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §'!c§(param1:§;l§) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§;l§ = param1;
         var birdsToShow:Array = §?[§();
         try
         {
            i = birdsToShow.length - 1;
            while(i >= 0)
            {
               birdName = birdsToShow[i];
               if(§-!#§.§3!V§.data[birdName] == undefined || §-!#§.§3!V§.data[birdName] == false)
               {
                  §-!#§.§3!V§.data[birdName] = true;
               }
               else
               {
                  birdsToShow.splice(i,1);
               }
               i--;
            }
            §-!#§.§3!V§.flush();
         }
         catch(e:Error)
         {
         }
         for each(birdName in birdsToShow)
         {
            §3!1§(birdName,currentUIView);
         }
         §6U§();
      }
      
      private static function §6U§(param1:Boolean = true) : void
      {
         if(isOpen == false && §]!C§.length > 0)
         {
            §!8§ = true;
            §5!1§ = §]!C§.pop();
            §5!1§.open(param1);
            §5!1§.x = §-!#§.§6`§ / 2;
            §5!1§.y = §-!#§.§?!E§ / 2;
            §5!1§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §'!$§() : void
      {
         if(isOpen == true)
         {
            if(§]!C§.length > 0)
            {
               §5!1§.preClose(false);
               §!8§ = false;
               §6U§(false);
            }
            else
            {
               §!8§ = false;
               §5!1§.preClose(true);
            }
         }
      }
      
      public static function get isOpen() : Boolean
      {
         return §!8§;
      }
   }
}
