package §@r§
{
   import §"!K§.§,U§;
   import §#]§.§'5§;
   import §;'§.§%!,§;
   import §=!K§.§?;§;
   import §=!K§.§^Q§;
   import §?!8§.§2>§;
   import §?!8§.§87§;
   import flash.net.SharedObject;
   
   public class §8K§
   {
      
      protected static var §3!>§:Class = §&C§;
      
      protected static var §#>§:Class = §;R§;
      
      protected static var §0I§:Class = §-W§;
      
      private static var §1n§:Array = [];
      
      private static var §'i§:Popup = null;
      
      private static var §"-§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §0O§:Array;
       
      
      public function §8K§()
      {
         super();
      }
      
      private static function §5=§(param1:String, param2:§,U§) : void
      {
         var tutorialPopup:§"J§ = null;
         var birdName:String = param1;
         var currentUIView:§,U§ = param2;
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
            tutorialPopup = new §"J§(§87§.§2R§(§3!>§),currentUIView,§?;§.§[0§(tutorialName,§^Q§.§&e§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §1n§.push(tutorialPopup);
         }
      }
      
      private static function § !%§(param1:String, param2:§,U§) : void
      {
         var tutorialPopup:§3!H§ = null;
         var powerUpName:String = param1;
         var currentUIView:§,U§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §3!H§(§87§.§2R§(§#>§),currentUIView,§?;§.§[0§(tutorialName,§^Q§.§&e§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §1n§.push(tutorialPopup);
         }
      }
      
      public static function §7$§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§"-§)
               {
                  §"-§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §'d§())
               {
                  §"-§.data[birdName] = false;
               }
               §"-§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §"-§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §"-§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §"-§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §'d§() : Array
      {
         var _loc2_:§%!,§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §'5§.§^;§.slingshot.§7j§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function override(param1:§,U§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§,U§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §0O§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §0O§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §0O§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §0O§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §0O§.push(powerUpPopupName);
               break;
            case "ALL":
               §0O§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §0O§.push("POWERUP_TUTORIAL_SUPERSEED");
               §0O§.push("POWERUP_TUTORIAL_KINGSLING");
               §0O§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §0O§;
         try
         {
            if(storageName)
            {
               if(!§"-§)
               {
                  §"-§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§"-§.data[powerUpPopupName] == undefined || §"-§.data[powerUpPopupName] == false)
                  {
                     §"-§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §"-§.flush();
            }
         }
         catch(e:Error)
         {
            §2>§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            § !%§(powerUpName,currentUIView);
         }
      }
      
      public static function §-V§(param1:§,U§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§,U§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §'d§();
         try
         {
            if(storageName)
            {
               if(!§"-§)
               {
                  §"-§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§"-§.data[birdName] == undefined || §"-§.data[birdName] == false)
                  {
                     §"-§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §"-§.flush();
            }
         }
         catch(e:Error)
         {
            §2>§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §5=§(birdName,currentUIView);
         }
         §8!§();
      }
      
      private static function §8!§(param1:Boolean = true) : void
      {
         if(!isOpen && §1n§.length > 0)
         {
            isOpen = true;
            §'i§ = §1n§.pop();
            §'i§.open(param1);
         }
      }
      
      public static function §4!N§() : void
      {
         if(isOpen == true)
         {
            if(§1n§.length > 0)
            {
               §'i§.preClose(false);
               isOpen = false;
               §8!§(false);
            }
            else
            {
               isOpen = false;
               §'i§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§'i§)
         {
            §'i§.preClose(false);
         }
      }
   }
}
