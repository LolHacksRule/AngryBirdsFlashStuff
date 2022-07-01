package §&!!§
{
   import §'x§.§?z§;
   import §1!v§.§!,§;
   import §;"$§.§`5§;
   import §;X§.§ do§;
   import §;X§.§1x§;
   import §[_§.§%!X§;
   import §[_§.§2!B§;
   import flash.net.SharedObject;
   
   public class §3j§
   {
      
      protected static var §,",§:Class = §=E§;
      
      protected static var §%R§:Class = §?d§;
      
      protected static var §6! §:Class = §0%§;
      
      private static var §7!H§:Array = [];
      
      private static var §,!8§:Popup = null;
      
      private static var §7`§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §-s§:Array;
       
      
      public function §3j§()
      {
         super();
      }
      
      private static function §?"'§(param1:String, param2:§`5§) : void
      {
         var tutorialPopup:§<c§ = null;
         var birdName:String = param1;
         var currentUIView:§`5§ = param2;
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
            tutorialPopup = new §<c§(§1x§.§9!t§(§,",§),currentUIView,§%!X§.§`"&§(tutorialName,§2!B§.§if §));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §7!H§.push(tutorialPopup);
         }
      }
      
      private static function §@F§(param1:String, param2:§`5§) : void
      {
         var tutorialPopup:§9!f§ = null;
         var powerUpName:String = param1;
         var currentUIView:§`5§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §9!f§(§1x§.§9!t§(§%R§),currentUIView,§%!X§.§`"&§(tutorialName,§2!B§.§if §),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §7!H§.push(tutorialPopup);
         }
      }
      
      public static function § ",§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§7`§)
               {
                  §7`§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §2!G§())
               {
                  §7`§.data[birdName] = false;
               }
               §7`§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §7`§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §7`§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §7`§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §2!G§() : Array
      {
         var _loc2_:§!,§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §?z§.§=7§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §0!]§(param1:§`5§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§`5§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §-s§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §-s§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §-s§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §-s§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §-s§.push(powerUpPopupName);
               break;
            case "ALL":
               §-s§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §-s§.push("POWERUP_TUTORIAL_SUPERSEED");
               §-s§.push("POWERUP_TUTORIAL_KINGSLING");
               §-s§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §-s§;
         try
         {
            if(storageName)
            {
               if(!§7`§)
               {
                  §7`§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§7`§.data[powerUpPopupName] == undefined || §7`§.data[powerUpPopupName] == false)
                  {
                     §7`§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §7`§.flush();
            }
         }
         catch(e:Error)
         {
            § do§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §@F§(powerUpName,currentUIView);
         }
      }
      
      public static function §'%§(param1:§`5§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§`5§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §2!G§();
         try
         {
            if(storageName)
            {
               if(!§7`§)
               {
                  §7`§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§7`§.data[birdName] == undefined || §7`§.data[birdName] == false)
                  {
                     §7`§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §7`§.flush();
            }
         }
         catch(e:Error)
         {
            § do§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §?"'§(birdName,currentUIView);
         }
         §;!t§();
      }
      
      private static function §;!t§(param1:Boolean = true) : void
      {
         if(!isOpen && §7!H§.length > 0)
         {
            isOpen = true;
            §,!8§ = §7!H§.pop();
            §,!8§.open(param1);
         }
      }
      
      public static function §<,§() : void
      {
         if(isOpen == true)
         {
            if(§7!H§.length > 0)
            {
               §,!8§.preClose(false);
               isOpen = false;
               §;!t§(false);
            }
            else
            {
               isOpen = false;
               §,!8§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§,!8§)
         {
            §,!8§.preClose(false);
         }
      }
   }
}
