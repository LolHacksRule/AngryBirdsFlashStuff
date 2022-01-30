package §""§
{
   import §&W§.§3g§;
   import §&W§.§7L§;
   import §0!C§.§=!]§;
   import §8!E§.§'4§;
   import §=!<§.§5!U§;
   import §`"2§.§6!,§;
   import §`"2§.§6L§;
   import flash.net.SharedObject;
   
   public class §-"§
   {
      
      protected static var §6C§:Class = §]!4§;
      
      protected static var §9![§:Class = §-a§;
      
      protected static var §'"'§:Class = § a§;
      
      private static var §4s§:Array = [];
      
      private static var § "6§:Popup = null;
      
      private static var §'!r§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §8!>§:Array;
       
      
      public function §-"§()
      {
         super();
      }
      
      private static function §<!W§(param1:String, param2:§=!]§) : void
      {
         var tutorialPopup:§'Y§ = null;
         var birdName:String = param1;
         var currentUIView:§=!]§ = param2;
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
            tutorialPopup = new §'Y§(§3g§.§5">§(§6C§),currentUIView,§6L§.§+! §(tutorialName,§6!,§.§7!?§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §4s§.push(tutorialPopup);
         }
      }
      
      private static function §?!s§(param1:String, param2:§=!]§) : void
      {
         var tutorialPopup:§]!z§ = null;
         var powerUpName:String = param1;
         var currentUIView:§=!]§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §]!z§(§3g§.§5">§(§9![§),currentUIView,§6L§.§+! §(tutorialName,§6!,§.§7!?§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §4s§.push(tutorialPopup);
         }
      }
      
      public static function §+i§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§'!r§)
               {
                  §'!r§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §9!E§())
               {
                  §'!r§.data[birdName] = false;
               }
               §'!r§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §'!r§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §'!r§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §'!r§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §9!E§() : Array
      {
         var _loc2_:§'4§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §5!U§.§,!E§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function § E§(param1:§=!]§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§=!]§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §8!>§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §8!>§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §8!>§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §8!>§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §8!>§.push(powerUpPopupName);
               break;
            case "ALL":
               §8!>§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §8!>§.push("POWERUP_TUTORIAL_SUPERSEED");
               §8!>§.push("POWERUP_TUTORIAL_KINGSLING");
               §8!>§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §8!>§;
         try
         {
            if(storageName)
            {
               if(!§'!r§)
               {
                  §'!r§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§'!r§.data[powerUpPopupName] == undefined || §'!r§.data[powerUpPopupName] == false)
                  {
                     §'!r§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §'!r§.flush();
            }
         }
         catch(e:Error)
         {
            §7L§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §?!s§(powerUpName,currentUIView);
         }
      }
      
      public static function §0z§(param1:§=!]§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§=!]§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §9!E§();
         try
         {
            if(storageName)
            {
               if(!§'!r§)
               {
                  §'!r§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§'!r§.data[birdName] == undefined || §'!r§.data[birdName] == false)
                  {
                     §'!r§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §'!r§.flush();
            }
         }
         catch(e:Error)
         {
            §7L§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §<!W§(birdName,currentUIView);
         }
         §@!O§();
      }
      
      private static function §@!O§(param1:Boolean = true) : void
      {
         if(!isOpen && §4s§.length > 0)
         {
            isOpen = true;
            § "6§ = §4s§.pop();
            § "6§.open(param1);
         }
      }
      
      public static function §<" §() : void
      {
         if(isOpen == true)
         {
            if(§4s§.length > 0)
            {
               § "6§.preClose(false);
               isOpen = false;
               §@!O§(false);
            }
            else
            {
               isOpen = false;
               § "6§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§ "6§)
         {
            § "6§.preClose(false);
         }
      }
   }
}
