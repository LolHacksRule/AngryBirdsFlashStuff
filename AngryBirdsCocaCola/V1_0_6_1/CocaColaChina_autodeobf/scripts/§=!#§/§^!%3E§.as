package §=!#§
{
   import §%3§.§7b§;
   import §+N§.§=u§;
   import §+N§.§``§;
   import §2!G§.§,!8§;
   import §;A§.§7!K§;
   import §<!!§.§=§;
   
   public class §^!>§
   {
      
      private static var §3D§:Class = §<!7§;
      
      private static var §!3§:Array = [];
      
      private static var §9!$§:§-!O§ = null;
      
      private static var §@!_§:Boolean = false;
       
      
      public function §^!>§()
      {
         super();
      }
      
      private static function §4!1§(param1:String, param2:§7b§) : void
      {
         var tutorialPopup:§-!O§ = null;
         var birdName:String = param1;
         var currentUIView:§7b§ = param2;
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
            tutorialPopup = new §-!O§(§=§.§!B§(§3D§),currentUIView,§=u§.§>;§(tutorialName,§``§.§0%§));
         }
         catch(e:Error)
         {
            return;
         }
         §!3§.push(tutorialPopup);
      }
      
      public static function §->§() : void
      {
         var birdName:String = null;
         try
         {
            for each(birdName in §;"§())
            {
               §6T§.§0k§.data[birdName] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §;"§() : Array
      {
         var _loc2_:§,!8§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §7!K§.§=j§.slingshot.§<K§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         _loc1_.reverse();
         return _loc1_;
      }
      
      public static function §>U§(param1:§7b§) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§7b§ = param1;
         var birdsToShow:Array = §;"§();
         try
         {
            i = birdsToShow.length - 1;
            while(i >= 0)
            {
               birdName = birdsToShow[i];
               if(§6T§.§0k§.data[birdName] == undefined || §6T§.§0k§.data[birdName] == false)
               {
                  §6T§.§0k§.data[birdName] = true;
               }
               else
               {
                  birdsToShow.splice(i,1);
               }
               i--;
            }
            §6T§.§0k§.flush();
         }
         catch(e:Error)
         {
         }
         for each(birdName in birdsToShow)
         {
            §4!1§(birdName,currentUIView);
         }
         §-n§();
      }
      
      private static function §-n§(param1:Boolean = true) : void
      {
         if(isOpen == false && §!3§.length > 0)
         {
            §@!_§ = true;
            §9!$§ = §!3§.pop();
            §9!$§.open(param1);
            §9!$§.x = §6T§.§,x§ / 2;
            §9!$§.y = §6T§.§+!U§ / 2;
            §9!$§.mClip.getChildByName("Container_Tutorial").visible = true;
         }
      }
      
      public static function §++§() : void
      {
         if(isOpen == true)
         {
            if(§!3§.length > 0)
            {
               §9!$§.preClose(false);
               §@!_§ = false;
               §-n§(false);
            }
            else
            {
               §@!_§ = false;
               §9!$§.preClose(true);
            }
         }
      }
      
      public static function get isOpen() : Boolean
      {
         return §@!_§;
      }
   }
}
