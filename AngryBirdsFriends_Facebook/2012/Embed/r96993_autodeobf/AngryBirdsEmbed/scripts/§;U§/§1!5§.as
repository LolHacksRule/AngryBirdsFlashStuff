package §;U§
{
   import §3v§.§1a§;
   import §3v§.§`!H§;
   import §6u§.§&K§;
   import §6u§.§3W§;
   import §>%§.§]3§;
   import §^s§.§&"§;
   import §`i§.§6+§;
   import flash.net.SharedObject;
   
   public class §1!5§
   {
      
      protected static var §+!1§:Class = §'!4§;
      
      protected static var §"!@§:Class = §,>§;
      
      protected static var §!M§:Class = §!J§;
      
      private static var §^y§:Array = [];
      
      private static var §]0§:Popup = null;
      
      private static var §6v§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §9!F§:Array;
       
      
      public function §1!5§()
      {
         super();
      }
      
      private static function §&t§(param1:String, param2:§&"§) : void
      {
         var tutorialPopup:§"m§ = null;
         var birdName:String = param1;
         var currentUIView:§&"§ = param2;
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
            tutorialPopup = new §"m§(§`!H§.§3U§(§+!1§),currentUIView,§&K§.§[u§(tutorialName,§3W§.§9r§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^y§.push(tutorialPopup);
         }
      }
      
      private static function §'2§(param1:String, param2:§&"§) : void
      {
         var tutorialPopup:§]1§ = null;
         var powerUpName:String = param1;
         var currentUIView:§&"§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §]1§(§`!H§.§3U§(§"!@§),currentUIView,§&K§.§[u§(tutorialName,§3W§.§9r§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^y§.push(tutorialPopup);
         }
      }
      
      public static function §,t§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§6v§)
               {
                  §6v§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §%O§())
               {
                  §6v§.data[birdName] = false;
               }
               §6v§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §6v§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §6v§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §6v§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §%O§() : Array
      {
         var _loc2_:§6+§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §]3§.§;v§.slingshot.§"D§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §'Y§(param1:§&"§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§&"§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §9!F§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §9!F§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §9!F§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §9!F§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §9!F§.push(powerUpPopupName);
               break;
            case "ALL":
               §9!F§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §9!F§.push("POWERUP_TUTORIAL_SUPERSEED");
               §9!F§.push("POWERUP_TUTORIAL_KINGSLING");
               §9!F§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §9!F§;
         try
         {
            if(storageName)
            {
               if(!§6v§)
               {
                  §6v§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§6v§.data[powerUpPopupName] == undefined || §6v§.data[powerUpPopupName] == false)
                  {
                     §6v§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §6v§.flush();
            }
         }
         catch(e:Error)
         {
            §1a§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §'2§(powerUpName,currentUIView);
         }
      }
      
      public static function §'!#§(param1:§&"§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§&"§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §%O§();
         try
         {
            if(storageName)
            {
               if(!§6v§)
               {
                  §6v§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§6v§.data[birdName] == undefined || §6v§.data[birdName] == false)
                  {
                     §6v§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §6v§.flush();
            }
         }
         catch(e:Error)
         {
            §1a§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §&t§(birdName,currentUIView);
         }
         §@G§();
      }
      
      private static function §@G§(param1:Boolean = true) : void
      {
         if(!isOpen && §^y§.length > 0)
         {
            isOpen = true;
            §]0§ = §^y§.pop();
            §]0§.open(param1);
         }
      }
      
      public static function final() : void
      {
         if(isOpen == true)
         {
            if(§^y§.length > 0)
            {
               §]0§.preClose(false);
               isOpen = false;
               §@G§(false);
            }
            else
            {
               isOpen = false;
               §]0§.preClose(true);
            }
         }
      }
   }
}
