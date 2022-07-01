package §+h§
{
   import §%c§.§=!X§;
   import §&"5§.§4!h§;
   import §&"5§.§7!P§;
   import §1"2§.§'s§;
   import §5!V§.§>n§;
   import §=!M§.§9!P§;
   import §=!M§.§?!1§;
   import flash.net.SharedObject;
   
   public class §5h§
   {
      
      protected static var §#x§:Class = §-'§;
      
      protected static var § !;§:Class = §+! §;
      
      protected static var §4"3§:Class = §use §;
      
      private static var §;S§:Array = [];
      
      private static var §##§:Popup = null;
      
      private static var §@!$§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §1§:Array;
       
      
      public function §5h§()
      {
         super();
      }
      
      private static function §9!w§(param1:String, param2:§'s§) : void
      {
         var tutorialPopup:§?0§ = null;
         var birdName:String = param1;
         var currentUIView:§'s§ = param2;
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
            tutorialPopup = new §?0§(§?!1§.§ !?§(§#x§),currentUIView,§4!h§.§ !r§(tutorialName,§7!P§.§2=§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §;S§.push(tutorialPopup);
         }
      }
      
      private static function §"!p§(param1:String, param2:§'s§) : void
      {
         var tutorialPopup:§=!5§ = null;
         var powerUpName:String = param1;
         var currentUIView:§'s§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §=!5§(§?!1§.§ !?§(§ !;§),currentUIView,§4!h§.§ !r§(tutorialName,§7!P§.§2=§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §;S§.push(tutorialPopup);
         }
      }
      
      public static function §]7§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§@!$§)
               {
                  §@!$§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §,$§())
               {
                  §@!$§.data[birdName] = false;
               }
               §@!$§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §@!$§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §@!$§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §@!$§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §,$§() : Array
      {
         var _loc2_:§>n§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §=!X§.§!'§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §=-§(param1:§'s§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§'s§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §1§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §1§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §1§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §1§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §1§.push(powerUpPopupName);
               break;
            case "ALL":
               §1§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §1§.push("POWERUP_TUTORIAL_SUPERSEED");
               §1§.push("POWERUP_TUTORIAL_KINGSLING");
               §1§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §1§;
         try
         {
            if(storageName)
            {
               if(!§@!$§)
               {
                  §@!$§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§@!$§.data[powerUpPopupName] == undefined || §@!$§.data[powerUpPopupName] == false)
                  {
                     §@!$§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §@!$§.flush();
            }
         }
         catch(e:Error)
         {
            §9!P§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §"!p§(powerUpName,currentUIView);
         }
      }
      
      public static function §]U§(param1:§'s§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§'s§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §,$§();
         try
         {
            if(storageName)
            {
               if(!§@!$§)
               {
                  §@!$§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§@!$§.data[birdName] == undefined || §@!$§.data[birdName] == false)
                  {
                     §@!$§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §@!$§.flush();
            }
         }
         catch(e:Error)
         {
            §9!P§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §9!w§(birdName,currentUIView);
         }
         §<" §();
      }
      
      private static function §<" §(param1:Boolean = true) : void
      {
         if(!isOpen && §;S§.length > 0)
         {
            isOpen = true;
            §##§ = §;S§.pop();
            §##§.open(param1);
         }
      }
      
      public static function §7h§() : void
      {
         if(isOpen == true)
         {
            if(§;S§.length > 0)
            {
               §##§.preClose(false);
               isOpen = false;
               §<" §(false);
            }
            else
            {
               isOpen = false;
               §##§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§##§)
         {
            §##§.preClose(false);
         }
      }
   }
}
