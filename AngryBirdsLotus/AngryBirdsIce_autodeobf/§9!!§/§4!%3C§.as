package §9!!§
{
   import §!Y§.§[o§;
   import §1n§.§"#§;
   import §1n§.§5#§;
   import §2]§.§#H§;
   import §;8§.§3f§;
   import §;8§.§]'§;
   import §[x§.§,1§;
   import flash.net.SharedObject;
   
   public class §4!<§
   {
      
      private static var §]!C§:Class = §0!+§;
      
      private static var §'$§:Class = §,+§;
      
      private static var §!!5§:Class = §?!@§;
      
      private static var §'P§:Array = [];
      
      private static var §9!B§:Popup = null;
      
      private static var §%;§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §%m§:Array;
       
      
      public function §4!<§()
      {
         super();
      }
      
      private static function §#$§(param1:String, param2:§#H§) : void
      {
         var tutorialPopup:§>`§ = null;
         var birdName:String = param1;
         var currentUIView:§#H§ = param2;
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
            tutorialPopup = new §>`§(§]'§.§5P§(§]!C§),currentUIView,§"#§.§@U§(tutorialName,§5#§.§[8§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §'P§.push(tutorialPopup);
         }
      }
      
      private static function §!;§(param1:String, param2:§#H§) : void
      {
         var tutorialPopup:§+`§ = null;
         var powerUpName:String = param1;
         var currentUIView:§#H§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §+`§(§]'§.§5P§(§'$§),currentUIView,§"#§.§@U§(tutorialName,§5#§.§[8§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §'P§.push(tutorialPopup);
         }
      }
      
      public static function §63§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§%;§)
               {
                  §%;§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §9;§())
               {
                  §%;§.data[birdName] = false;
               }
               §%;§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §%;§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §%;§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §%;§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §9;§() : Array
      {
         var _loc2_:§,1§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §[o§.§='§.slingshot.§]<§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §'B§(param1:§#H§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§#H§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §%m§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §%m§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §%m§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §%m§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §%m§.push(powerUpPopupName);
               break;
            case "ALL":
               §%m§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §%m§.push("POWERUP_TUTORIAL_SUPERSEED");
               §%m§.push("POWERUP_TUTORIAL_KINGSLING");
               §%m§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §%m§;
         try
         {
            if(storageName)
            {
               if(!§%;§)
               {
                  §%;§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§%;§.data[powerUpPopupName] == undefined || §%;§.data[powerUpPopupName] == false)
                  {
                     §%;§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §%;§.flush();
            }
         }
         catch(e:Error)
         {
            §3f§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §!;§(powerUpName,currentUIView);
         }
      }
      
      public static function §0i§(param1:§#H§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§#H§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §9;§();
         try
         {
            if(storageName)
            {
               if(!§%;§)
               {
                  §%;§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§%;§.data[birdName] == undefined || §%;§.data[birdName] == false)
                  {
                     §%;§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §%;§.flush();
            }
         }
         catch(e:Error)
         {
            §3f§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §#$§(birdName,currentUIView);
         }
         §@!+§();
      }
      
      private static function §@!+§(param1:Boolean = true) : void
      {
         if(!isOpen && §'P§.length > 0)
         {
            isOpen = true;
            §9!B§ = §'P§.pop();
            §9!B§.open(param1);
         }
      }
      
      public static function §,[§() : void
      {
         if(isOpen == true)
         {
            if(§'P§.length > 0)
            {
               §9!B§.preClose(false);
               isOpen = false;
               §@!+§(false);
            }
            else
            {
               isOpen = false;
               §9!B§.preClose(true);
            }
         }
      }
   }
}
