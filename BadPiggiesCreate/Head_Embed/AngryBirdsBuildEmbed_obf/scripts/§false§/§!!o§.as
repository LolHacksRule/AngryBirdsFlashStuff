package §false§
{
   import § !r§.§3!X§;
   import § !r§.§`![§;
   import §!y§.§2U§;
   import §<!<§.§]K§;
   import §=U§.§3p§;
   import §=U§.§<6§;
   import §?!-§.§'!V§;
   import flash.net.SharedObject;
   
   public class §!!o§
   {
      
      private static var §<!+§:Class = §#?§;
      
      private static var §&q§:Class = §#!g§;
      
      private static var §"C§:Class = §3h§;
      
      private static var §[!b§:Array = [];
      
      private static var § =§:Popup = null;
      
      private static var § !Y§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §@<§:Array;
       
      
      public function §!!o§()
      {
         super();
      }
      
      private static function §,[§(param1:String, param2:§2U§) : void
      {
         var tutorialPopup:§@§ = null;
         var birdName:String = param1;
         var currentUIView:§2U§ = param2;
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
            tutorialPopup = new §@§(§3!X§.§3<§(§<!+§),currentUIView,§<6§.§>!>§(tutorialName,§3p§.§`!t§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §[!b§.push(tutorialPopup);
         }
      }
      
      private static function §;!L§(param1:String, param2:§2U§) : void
      {
         var tutorialPopup:§"!@§ = null;
         var powerUpName:String = param1;
         var currentUIView:§2U§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §"!@§(§3!X§.§3<§(§&q§),currentUIView,§<6§.§>!>§(tutorialName,§3p§.§`!t§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §[!b§.push(tutorialPopup);
         }
      }
      
      public static function §]!B§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§ !Y§)
               {
                  § !Y§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §,!q§())
               {
                  § !Y§.data[birdName] = false;
               }
               § !Y§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               § !Y§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               § !Y§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               § !Y§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §,!q§() : Array
      {
         var _loc2_:§]K§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §'!V§.§1!2§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §"0§(param1:§2U§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§2U§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §@<§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §@<§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §@<§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §@<§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §@<§.push(powerUpPopupName);
               break;
            case "ALL":
               §@<§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §@<§.push("POWERUP_TUTORIAL_SUPERSEED");
               §@<§.push("POWERUP_TUTORIAL_KINGSLING");
               §@<§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §@<§;
         try
         {
            if(storageName)
            {
               if(!§ !Y§)
               {
                  § !Y§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§ !Y§.data[powerUpPopupName] == undefined || § !Y§.data[powerUpPopupName] == false)
                  {
                     § !Y§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               § !Y§.flush();
            }
         }
         catch(e:Error)
         {
            §`![§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §;!L§(powerUpName,currentUIView);
         }
      }
      
      public static function §@!L§(param1:§2U§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§2U§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §,!q§();
         try
         {
            if(storageName)
            {
               if(!§ !Y§)
               {
                  § !Y§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§ !Y§.data[birdName] == undefined || § !Y§.data[birdName] == false)
                  {
                     § !Y§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               § !Y§.flush();
            }
         }
         catch(e:Error)
         {
            §`![§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §,[§(birdName,currentUIView);
         }
         §5&§();
      }
      
      private static function §5&§(param1:Boolean = true) : void
      {
         if(!isOpen && §[!b§.length > 0)
         {
            isOpen = true;
            § =§ = §[!b§.pop();
            § =§.open(param1);
         }
      }
      
      public static function §7§() : void
      {
         if(isOpen == true)
         {
            if(§[!b§.length > 0)
            {
               § =§.preClose(false);
               isOpen = false;
               §5&§(false);
            }
            else
            {
               isOpen = false;
               § =§.preClose(true);
            }
         }
      }
   }
}
