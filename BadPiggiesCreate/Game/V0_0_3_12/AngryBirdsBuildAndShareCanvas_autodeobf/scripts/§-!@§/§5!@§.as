package §-!@§
{
   import §"p§.§@8§;
   import §"p§.§@=§;
   import §7"1§.§%W§;
   import §@!-§.§3"1§;
   import §@!-§.§>"&§;
   import §@">§.§%!u§;
   import §[B§.§,!f§;
   import flash.net.SharedObject;
   
   public class §5!@§
   {
      
      protected static var §17§:Class = §6,§;
      
      protected static var §%O§:Class = §<!Q§;
      
      protected static var §]!j§:Class = §4!-§;
      
      private static var §4!g§:Array = [];
      
      private static var §@!z§:Popup = null;
      
      private static var §&!@§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §%!S§:Array;
       
      
      public function §5!@§()
      {
         super();
      }
      
      private static function §1t§(param1:String, param2:§%!u§) : void
      {
         var tutorialPopup:§ !6§ = null;
         var birdName:String = param1;
         var currentUIView:§%!u§ = param2;
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
            tutorialPopup = new § !6§(§@=§.§="#§(§17§),currentUIView,§>"&§.§8d§(tutorialName,§3"1§.§ "!§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §4!g§.push(tutorialPopup);
         }
      }
      
      private static function §&A§(param1:String, param2:§%!u§) : void
      {
         var tutorialPopup:§+"#§ = null;
         var powerUpName:String = param1;
         var currentUIView:§%!u§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §+"#§(§@=§.§="#§(§%O§),currentUIView,§>"&§.§8d§(tutorialName,§3"1§.§ "!§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §4!g§.push(tutorialPopup);
         }
      }
      
      public static function §]Q§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§&!@§)
               {
                  §&!@§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §[!;§())
               {
                  §&!@§.data[birdName] = false;
               }
               §&!@§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §&!@§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §&!@§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §&!@§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §[!;§() : Array
      {
         var _loc2_:§,!f§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §%W§.§5"8§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §?!'§(param1:§%!u§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§%!u§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §%!S§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §%!S§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §%!S§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §%!S§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §%!S§.push(powerUpPopupName);
               break;
            case "ALL":
               §%!S§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §%!S§.push("POWERUP_TUTORIAL_SUPERSEED");
               §%!S§.push("POWERUP_TUTORIAL_KINGSLING");
               §%!S§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §%!S§;
         try
         {
            if(storageName)
            {
               if(!§&!@§)
               {
                  §&!@§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§&!@§.data[powerUpPopupName] == undefined || §&!@§.data[powerUpPopupName] == false)
                  {
                     §&!@§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §&!@§.flush();
            }
         }
         catch(e:Error)
         {
            §@8§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §&A§(powerUpName,currentUIView);
         }
      }
      
      public static function §'a§(param1:§%!u§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§%!u§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §[!;§();
         try
         {
            if(storageName)
            {
               if(!§&!@§)
               {
                  §&!@§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§&!@§.data[birdName] == undefined || §&!@§.data[birdName] == false)
                  {
                     §&!@§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §&!@§.flush();
            }
         }
         catch(e:Error)
         {
            §@8§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §1t§(birdName,currentUIView);
         }
         §!s§();
      }
      
      private static function §!s§(param1:Boolean = true) : void
      {
         if(!isOpen && §4!g§.length > 0)
         {
            isOpen = true;
            §@!z§ = §4!g§.pop();
            §@!z§.open(param1);
         }
      }
      
      public static function §=!§() : void
      {
         if(isOpen == true)
         {
            if(§4!g§.length > 0)
            {
               §@!z§.preClose(false);
               isOpen = false;
               §!s§(false);
            }
            else
            {
               isOpen = false;
               §@!z§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§@!z§)
         {
            §@!z§.preClose(false);
         }
      }
   }
}
