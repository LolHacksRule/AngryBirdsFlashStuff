package §2"§
{
   import §'!G§.§4!§;
   import §-v§.§,!1§;
   import §4A§.§>!=§;
   import §9!Y§.§!q§;
   import §9!Y§.§'S§;
   
   public class §76§
   {
      
      private static var §1!P§:Class = §0I§;
      
      private static var §^5§:Array = [];
      
      private static var §>N§:§^!U§ = null;
      
      private static var §,S§:Boolean = false;
       
      
      public function §76§()
      {
         super();
      }
      
      private static function §>T§(param1:String, param2:§^R§) : void
      {
         var tutorialPopup:§^!U§ = null;
         var birdName:String = param1;
         var currentUIView:§^R§ = param2;
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
            tutorialPopup = new §^!U§(§4!§.§[!a§(§1!P§),currentUIView,§'S§.§`!V§(tutorialName,§!q§.§@!c§));
         }
         catch(e:Error)
         {
            return;
         }
         §^5§.push(tutorialPopup);
      }
      
      public static function §98§() : void
      {
         var birdName:String = null;
         try
         {
            for each(birdName in §!!#§())
            {
               §"!@§.§^b§.data[birdName] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §!!#§() : Array
      {
         var _loc2_:§>!=§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §,!1§.§2T§.slingshot.§^!P§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §-!B§(param1:§^R§) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§^R§ = param1;
         var birdsToShow:Array = §!!#§();
         try
         {
            i = birdsToShow.length - 1;
            while(i >= 0)
            {
               birdName = birdsToShow[i];
               if(§"!@§.§^b§.data[birdName] == undefined || §"!@§.§^b§.data[birdName] == false)
               {
                  §"!@§.§^b§.data[birdName] = true;
               }
               else
               {
                  birdsToShow.splice(i,1);
               }
               i--;
            }
            §"!@§.§^b§.flush();
         }
         catch(e:Error)
         {
         }
         for each(birdName in birdsToShow)
         {
            §>T§(birdName,currentUIView);
         }
         §<M§();
      }
      
      private static function §<M§(param1:Boolean = true) : void
      {
         if(isOpen == false && §^5§.length > 0)
         {
            §,S§ = true;
            §>N§ = §^5§.pop();
            §>N§.open(param1);
            §>N§.x = §"!@§.§9<§ / 2;
            §>N§.y = §"!@§.§7e§ / 2;
            §>N§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §@!R§() : void
      {
         if(isOpen == true)
         {
            if(§^5§.length > 0)
            {
               §>N§.preClose(false);
               §,S§ = false;
               §<M§(false);
            }
            else
            {
               §,S§ = false;
               §>N§.preClose(true);
            }
         }
      }
      
      public static function get isOpen() : Boolean
      {
         return §,S§;
      }
   }
}
