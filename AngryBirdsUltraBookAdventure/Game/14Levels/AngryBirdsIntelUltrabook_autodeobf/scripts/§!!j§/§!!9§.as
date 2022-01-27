package §!!j§
{
   import §1!B§.§<m§;
   import §1!B§.§>!s§;
   import §40§.§<!P§;
   import §;!y§.§,!s§;
   import §=`§.§4s§;
   import §=`§.§6!I§;
   import §>f§.§&!G§;
   import flash.net.SharedObject;
   
   public class §!!9§
   {
      
      protected static var §'!+§:Class = §#!W§;
      
      protected static var §"?§:Class = §47§;
      
      protected static var §'J§:Class = §-!B§;
      
      private static var §8!K§:Array = [];
      
      private static var §9!§:Popup = null;
      
      private static var §4!L§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §,""§:Array;
       
      
      public function §!!9§()
      {
         super();
      }
      
      private static function §2$§(param1:String, param2:§&!G§) : void
      {
         var tutorialPopup:§?H§ = null;
         var birdName:String = param1;
         var currentUIView:§&!G§ = param2;
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
            tutorialPopup = new §?H§(§>!s§.§;§(§'!+§),currentUIView,§4s§.§4!8§(tutorialName,§6!I§.§[U§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §8!K§.push(tutorialPopup);
         }
      }
      
      private static function §;!h§(param1:String, param2:§&!G§) : void
      {
         var tutorialPopup:§4U§ = null;
         var powerUpName:String = param1;
         var currentUIView:§&!G§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §4U§(§>!s§.§;§(§"?§),currentUIView,§4s§.§4!8§(tutorialName,§6!I§.§[U§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §8!K§.push(tutorialPopup);
         }
      }
      
      public static function §8f§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§4!L§)
               {
                  §4!L§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §?q§())
               {
                  §4!L§.data[birdName] = false;
               }
               §4!L§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §4!L§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §4!L§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §4!L§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §?q§() : Array
      {
         var _loc2_:§<!P§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §,!s§.§=!I§.slingshot.§ Y§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §;-§(param1:§&!G§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§&!G§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §,""§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §,""§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §,""§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §,""§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §,""§.push(powerUpPopupName);
               break;
            case "ALL":
               §,""§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §,""§.push("POWERUP_TUTORIAL_SUPERSEED");
               §,""§.push("POWERUP_TUTORIAL_KINGSLING");
               §,""§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §,""§;
         try
         {
            if(storageName)
            {
               if(!§4!L§)
               {
                  §4!L§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§4!L§.data[powerUpPopupName] == undefined || §4!L§.data[powerUpPopupName] == false)
                  {
                     §4!L§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §4!L§.flush();
            }
         }
         catch(e:Error)
         {
            §<m§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §;!h§(powerUpName,currentUIView);
         }
      }
      
      public static function §'%§(param1:§&!G§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§&!G§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §?q§();
         try
         {
            if(storageName)
            {
               if(!§4!L§)
               {
                  §4!L§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§4!L§.data[birdName] == undefined || §4!L§.data[birdName] == false)
                  {
                     §4!L§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §4!L§.flush();
            }
         }
         catch(e:Error)
         {
            §<m§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §2$§(birdName,currentUIView);
         }
         §%!I§();
      }
      
      private static function §%!I§(param1:Boolean = true) : void
      {
         if(!isOpen && §8!K§.length > 0)
         {
            isOpen = true;
            §9!§ = §8!K§.pop();
            §9!§.open(param1);
         }
      }
      
      public static function §6S§() : void
      {
         if(isOpen == true)
         {
            if(§8!K§.length > 0)
            {
               §9!§.preClose(false);
               isOpen = false;
               §%!I§(false);
            }
            else
            {
               isOpen = false;
               §9!§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§9!§)
         {
            §9!§.preClose(false);
         }
      }
   }
}
