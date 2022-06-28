package §9#§
{
   import §+&§.§`o§;
   import §,6§.§!o§;
   import §,6§.§4d§;
   import §1n§.§ C§;
   import §5i§.§4!]§;
   import §6z§.§[g§;
   import §6z§.§`!<§;
   import flash.net.SharedObject;
   
   public class §2!E§
   {
      
      protected static var §'U§:Class = §4a§;
      
      protected static var §[K§:Class = §^!x§;
      
      protected static var §1d§:Class = §0;§;
      
      private static var §`!8§:Array = [];
      
      private static var §%!1§:Popup = null;
      
      private static var §'!?§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §'!X§:Array;
       
      
      public function §2!E§()
      {
         super();
      }
      
      private static function §?!<§(param1:String, param2:§ C§) : void
      {
         var tutorialPopup:§"<§ = null;
         var birdName:String = param1;
         var currentUIView:§ C§ = param2;
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
            case "BIRD_REDBIG":
               tutorialName = "TUTORIAL_BIG_BROTHER";
               break;
            case "BIRD_SARDINE":
               tutorialName = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §"<§(§`!<§.§ !0§(§'U§),currentUIView,§4d§.§'!I§(tutorialName,§!o§.§^Z§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §`!8§.push(tutorialPopup);
         }
      }
      
      private static function §`d§(param1:String, param2:§ C§) : void
      {
         var tutorialPopup:§;!-§ = null;
         var powerUpName:String = param1;
         var currentUIView:§ C§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §;!-§(§`!<§.§ !0§(§[K§),currentUIView,§4d§.§'!I§(tutorialName,§!o§.§^Z§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §`!8§.push(tutorialPopup);
         }
      }
      
      public static function §9@§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§'!?§)
               {
                  §'!?§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §&!U§())
               {
                  §'!?§.data[birdName] = false;
               }
               §'!?§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §'!?§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §'!?§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §'!?§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §&!U§() : Array
      {
         var _loc2_:§`o§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §4!]§.§8C§.slingshot.§9q§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §%!S§(param1:§ C§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§ C§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §'!X§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §'!X§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §'!X§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §'!X§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §'!X§.push(powerUpPopupName);
               break;
            case "ALL":
               §'!X§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §'!X§.push("POWERUP_TUTORIAL_SUPERSEED");
               §'!X§.push("POWERUP_TUTORIAL_KINGSLING");
               §'!X§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §'!X§;
         try
         {
            if(storageName)
            {
               if(!§'!?§)
               {
                  §'!?§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§'!?§.data[powerUpPopupName] == undefined || §'!?§.data[powerUpPopupName] == false)
                  {
                     §'!?§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §'!?§.flush();
            }
         }
         catch(e:Error)
         {
            §[g§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §`d§(powerUpName,currentUIView);
         }
      }
      
      public static function §5!b§(param1:§ C§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§ C§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §&!U§();
         try
         {
            if(storageName)
            {
               if(!§'!?§)
               {
                  §'!?§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§'!?§.data[birdName] == undefined || §'!?§.data[birdName] == false)
                  {
                     §'!?§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §'!?§.flush();
            }
         }
         catch(e:Error)
         {
            §[g§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §?!<§(birdName,currentUIView);
         }
         §'e§();
      }
      
      private static function §'e§(param1:Boolean = true) : void
      {
         if(!isOpen && §`!8§.length > 0)
         {
            isOpen = true;
            §%!1§ = §`!8§.pop();
            §%!1§.open(param1);
         }
      }
      
      public static function §]!U§() : void
      {
         if(isOpen == true)
         {
            if(§`!8§.length > 0)
            {
               §%!1§.preClose(false);
               isOpen = false;
               §'e§(false);
            }
            else
            {
               isOpen = false;
               §%!1§.preClose(true);
            }
         }
      }
   }
}
