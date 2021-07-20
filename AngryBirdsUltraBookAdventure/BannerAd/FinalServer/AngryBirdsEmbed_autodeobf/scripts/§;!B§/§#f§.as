package §;!B§
{
   import §'k§.§ >§;
   import §'k§.§<f§;
   import §+!"§.§5!<§;
   import §+!"§.§=L§;
   import §5H§.§[k§;
   import §<!G§.§^3§;
   import §?b§.§+$§;
   import flash.net.SharedObject;
   
   public class §#f§
   {
      
      protected static var §7f§:Class = §;!"§;
      
      protected static var §^-§:Class = §%!"§;
      
      protected static var §8`§:Class = §2P§;
      
      private static var §6!@§:Array = [];
      
      private static var §!T§:Popup = null;
      
      private static var §'-§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §],§:Array;
       
      
      public function §#f§()
      {
         super();
      }
      
      private static function §]y§(param1:String, param2:§^3§) : void
      {
         var tutorialPopup:§!@§ = null;
         var birdName:String = param1;
         var currentUIView:§^3§ = param2;
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
            tutorialPopup = new §!@§(§=L§.§!#§(§7f§),currentUIView,§<f§.§+Q§(tutorialName,§ >§.§^n§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §6!@§.push(tutorialPopup);
         }
      }
      
      private static function § !F§(param1:String, param2:§^3§) : void
      {
         var tutorialPopup:§@G§ = null;
         var powerUpName:String = param1;
         var currentUIView:§^3§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §@G§(§=L§.§!#§(§^-§),currentUIView,§<f§.§+Q§(tutorialName,§ >§.§^n§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §6!@§.push(tutorialPopup);
         }
      }
      
      public static function §6F§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§'-§)
               {
                  §'-§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §6&§())
               {
                  §'-§.data[birdName] = false;
               }
               §'-§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §'-§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §'-§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §'-§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §6&§() : Array
      {
         var _loc2_:§+$§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §[k§.§&@§.slingshot.§,!&§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §=Y§(param1:§^3§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§^3§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §],§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §],§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §],§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §],§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §],§.push(powerUpPopupName);
               break;
            case "ALL":
               §],§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §],§.push("POWERUP_TUTORIAL_SUPERSEED");
               §],§.push("POWERUP_TUTORIAL_KINGSLING");
               §],§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §],§;
         try
         {
            if(storageName)
            {
               if(!§'-§)
               {
                  §'-§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§'-§.data[powerUpPopupName] == undefined || §'-§.data[powerUpPopupName] == false)
                  {
                     §'-§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §'-§.flush();
            }
         }
         catch(e:Error)
         {
            §5!<§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            § !F§(powerUpName,currentUIView);
         }
      }
      
      public static function §4!"§(param1:§^3§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§^3§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §6&§();
         try
         {
            if(storageName)
            {
               if(!§'-§)
               {
                  §'-§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§'-§.data[birdName] == undefined || §'-§.data[birdName] == false)
                  {
                     §'-§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §'-§.flush();
            }
         }
         catch(e:Error)
         {
            §5!<§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §]y§(birdName,currentUIView);
         }
         §=n§();
      }
      
      private static function §=n§(param1:Boolean = true) : void
      {
         if(!isOpen && §6!@§.length > 0)
         {
            isOpen = true;
            §!T§ = §6!@§.pop();
            §!T§.open(param1);
         }
      }
      
      public static function §!h§() : void
      {
         if(isOpen == true)
         {
            if(§6!@§.length > 0)
            {
               §!T§.preClose(false);
               isOpen = false;
               §=n§(false);
            }
            else
            {
               isOpen = false;
               §!T§.preClose(true);
            }
         }
      }
   }
}
