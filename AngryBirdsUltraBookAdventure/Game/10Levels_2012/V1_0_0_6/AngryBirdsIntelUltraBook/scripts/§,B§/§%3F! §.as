package §,B§
{
   import §"x§.§-8§;
   import §"x§.§3!v§;
   import §2_§.§>-§;
   import §>! §.§^!c§;
   import §[!+§.§4`§;
   import §^!Y§.§'R§;
   import §^!Y§.§]p§;
   import flash.net.SharedObject;
   
   public class §?! §
   {
      
      protected static var §@;§:Class = §!![§;
      
      protected static var §0!M§:Class = §3!0§;
      
      protected static var §'!#§:Class = §&!!§;
      
      private static var §'2§:Array = [];
      
      private static var §]M§:Popup = null;
      
      private static var §2!Q§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §!&§:Array;
       
      
      public function §?! §()
      {
         super();
      }
      
      private static function §0;§(param1:String, param2:§4`§) : void
      {
         var tutorialPopup:§+g§ = null;
         var birdName:String = param1;
         var currentUIView:§4`§ = param2;
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
            tutorialPopup = new §+g§(§3!v§.§;!-§(§@;§),currentUIView,§]p§.§0X§(tutorialName,§'R§.§7!j§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §'2§.push(tutorialPopup);
         }
      }
      
      private static function §@Z§(param1:String, param2:§4`§) : void
      {
         var tutorialPopup:§'!q§ = null;
         var powerUpName:String = param1;
         var currentUIView:§4`§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §'!q§(§3!v§.§;!-§(§0!M§),currentUIView,§]p§.§0X§(tutorialName,§'R§.§7!j§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §'2§.push(tutorialPopup);
         }
      }
      
      public static function §7!3§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§2!Q§)
               {
                  §2!Q§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §6P§())
               {
                  §2!Q§.data[birdName] = false;
               }
               §2!Q§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §2!Q§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §2!Q§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §2!Q§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §6P§() : Array
      {
         var _loc2_:§>-§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §^!c§.§5!Y§.slingshot.§]!^§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §]y§(param1:§4`§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§4`§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §!&§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §!&§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §!&§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §!&§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §!&§.push(powerUpPopupName);
               break;
            case "ALL":
               §!&§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §!&§.push("POWERUP_TUTORIAL_SUPERSEED");
               §!&§.push("POWERUP_TUTORIAL_KINGSLING");
               §!&§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §!&§;
         try
         {
            if(storageName)
            {
               if(!§2!Q§)
               {
                  §2!Q§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§2!Q§.data[powerUpPopupName] == undefined || §2!Q§.data[powerUpPopupName] == false)
                  {
                     §2!Q§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §2!Q§.flush();
            }
         }
         catch(e:Error)
         {
            §-8§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §@Z§(powerUpName,currentUIView);
         }
      }
      
      public static function §+!q§(param1:§4`§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§4`§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §6P§();
         try
         {
            if(storageName)
            {
               if(!§2!Q§)
               {
                  §2!Q§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§2!Q§.data[birdName] == undefined || §2!Q§.data[birdName] == false)
                  {
                     §2!Q§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §2!Q§.flush();
            }
         }
         catch(e:Error)
         {
            §-8§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §0;§(birdName,currentUIView);
         }
         §=!P§();
      }
      
      private static function §=!P§(param1:Boolean = true) : void
      {
         if(!isOpen && §'2§.length > 0)
         {
            isOpen = true;
            §]M§ = §'2§.pop();
            §]M§.open(param1);
         }
      }
      
      public static function §<z§() : void
      {
         if(isOpen == true)
         {
            if(§'2§.length > 0)
            {
               §]M§.preClose(false);
               isOpen = false;
               §=!P§(false);
            }
            else
            {
               isOpen = false;
               §]M§.preClose(true);
            }
         }
      }
   }
}
