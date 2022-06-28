package §=!4§
{
   import §"!5§.§,!!§;
   import §%x§.§0Y§;
   import §-!0§.§'!3§;
   import §-!0§.§[!-§;
   import §0!<§.§#y§;
   import §0!<§.§]o§;
   import §1;§.§!!1§;
   import flash.net.SharedObject;
   
   public class §7!1§
   {
      
      protected static var §?a§:Class = §catch§;
      
      protected static var §]#§:Class = §!V§;
      
      protected static var §9!0§:Class = §+!C§;
      
      private static var §+m§:Array = [];
      
      private static var §'g§:Popup = null;
      
      private static var §use§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §&"§:Array;
       
      
      public function §7!1§()
      {
         super();
      }
      
      private static function §=p§(param1:String, param2:§!!1§) : void
      {
         var tutorialPopup:§8;§ = null;
         var birdName:String = param1;
         var currentUIView:§!!1§ = param2;
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
            tutorialPopup = new §8;§(§]o§.§#b§(§?a§),currentUIView,§[!-§.§;@§(tutorialName,§'!3§.§-]§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §+m§.push(tutorialPopup);
         }
      }
      
      private static function §-! §(param1:String, param2:§!!1§) : void
      {
         var tutorialPopup:§4q§ = null;
         var powerUpName:String = param1;
         var currentUIView:§!!1§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §4q§(§]o§.§#b§(§]#§),currentUIView,§[!-§.§;@§(tutorialName,§'!3§.§-]§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §+m§.push(tutorialPopup);
         }
      }
      
      public static function §=c§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§use§)
               {
                  §use§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §2m§())
               {
                  §use§.data[birdName] = false;
               }
               §use§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §use§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §use§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §use§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §2m§() : Array
      {
         var _loc2_:§0Y§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §,!!§.§;4§.slingshot.§"_§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §;b§(param1:§!!1§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§!!1§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §&"§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §&"§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §&"§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §&"§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §&"§.push(powerUpPopupName);
               break;
            case "ALL":
               §&"§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §&"§.push("POWERUP_TUTORIAL_SUPERSEED");
               §&"§.push("POWERUP_TUTORIAL_KINGSLING");
               §&"§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §&"§;
         try
         {
            if(storageName)
            {
               if(!§use§)
               {
                  §use§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§use§.data[powerUpPopupName] == undefined || §use§.data[powerUpPopupName] == false)
                  {
                     §use§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §use§.flush();
            }
         }
         catch(e:Error)
         {
            §#y§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §-! §(powerUpName,currentUIView);
         }
      }
      
      public static function §6Y§(param1:§!!1§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§!!1§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §2m§();
         try
         {
            if(storageName)
            {
               if(!§use§)
               {
                  §use§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§use§.data[birdName] == undefined || §use§.data[birdName] == false)
                  {
                     §use§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §use§.flush();
            }
         }
         catch(e:Error)
         {
            §#y§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §=p§(birdName,currentUIView);
         }
         §8R§();
      }
      
      private static function §8R§(param1:Boolean = true) : void
      {
         if(!isOpen && §+m§.length > 0)
         {
            isOpen = true;
            §'g§ = §+m§.pop();
            §'g§.open(param1);
         }
      }
      
      public static function §3!;§() : void
      {
         if(isOpen == true)
         {
            if(§+m§.length > 0)
            {
               §'g§.preClose(false);
               isOpen = false;
               §8R§(false);
            }
            else
            {
               isOpen = false;
               §'g§.preClose(true);
            }
         }
      }
   }
}
