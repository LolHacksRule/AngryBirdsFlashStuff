package §6!C§
{
   import §-!D§.§4!,§;
   import §3a§.§"X§;
   import §3a§.§7!+§;
   import §5!L§.§=w§;
   import §6A§.§!!'§;
   import §9K§.§4!<§;
   import §9K§.§5!H§;
   import flash.net.SharedObject;
   
   public class §!;§
   {
      
      protected static var § &§:Class = §&f§;
      
      protected static var §3^§:Class = § !!§;
      
      protected static var §6v§:Class = §`!7§;
      
      private static var §1q§:Array = [];
      
      private static var §7o§:Popup = null;
      
      private static var §0=§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §4C§:Array;
       
      
      public function §!;§()
      {
         super();
      }
      
      private static function §!!+§(param1:String, param2:§4!,§) : void
      {
         var tutorialPopup:§4!1§ = null;
         var birdName:String = param1;
         var currentUIView:§4!,§ = param2;
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
            tutorialPopup = new §4!1§(§"X§.§,@§(§ &§),currentUIView,§4!<§.§?+§(tutorialName,§5!H§.§@6§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §1q§.push(tutorialPopup);
         }
      }
      
      private static function §^!!§(param1:String, param2:§4!,§) : void
      {
         var tutorialPopup:§@!F§ = null;
         var powerUpName:String = param1;
         var currentUIView:§4!,§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §@!F§(§"X§.§,@§(§3^§),currentUIView,§4!<§.§?+§(tutorialName,§5!H§.§@6§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §1q§.push(tutorialPopup);
         }
      }
      
      public static function §=F§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§0=§)
               {
                  §0=§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §@!M§())
               {
                  §0=§.data[birdName] = false;
               }
               §0=§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §0=§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §0=§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §0=§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §@!M§() : Array
      {
         var _loc2_:§!!'§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §=w§.§ o§.slingshot.§,B§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §6! §(param1:§4!,§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§4!,§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §4C§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §4C§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §4C§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §4C§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §4C§.push(powerUpPopupName);
               break;
            case "ALL":
               §4C§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §4C§.push("POWERUP_TUTORIAL_SUPERSEED");
               §4C§.push("POWERUP_TUTORIAL_KINGSLING");
               §4C§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §4C§;
         try
         {
            if(storageName)
            {
               if(!§0=§)
               {
                  §0=§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§0=§.data[powerUpPopupName] == undefined || §0=§.data[powerUpPopupName] == false)
                  {
                     §0=§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §0=§.flush();
            }
         }
         catch(e:Error)
         {
            §7!+§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §^!!§(powerUpName,currentUIView);
         }
      }
      
      public static function §7<§(param1:§4!,§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§4!,§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §@!M§();
         try
         {
            if(storageName)
            {
               if(!§0=§)
               {
                  §0=§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§0=§.data[birdName] == undefined || §0=§.data[birdName] == false)
                  {
                     §0=§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §0=§.flush();
            }
         }
         catch(e:Error)
         {
            §7!+§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §!!+§(birdName,currentUIView);
         }
         §"m§();
      }
      
      private static function §"m§(param1:Boolean = true) : void
      {
         if(!isOpen && §1q§.length > 0)
         {
            isOpen = true;
            §7o§ = §1q§.pop();
            §7o§.open(param1);
         }
      }
      
      public static function §?"§() : void
      {
         if(isOpen == true)
         {
            if(§1q§.length > 0)
            {
               §7o§.preClose(false);
               isOpen = false;
               §"m§(false);
            }
            else
            {
               isOpen = false;
               §7o§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§7o§)
         {
            §7o§.preClose(false);
         }
      }
   }
}
