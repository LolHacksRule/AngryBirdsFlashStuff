package §2!!§
{
   import § !N§.§^!>§;
   import § !N§.§`v§;
   import §-!5§.§5!O§;
   import §-!5§.§5s§;
   import §>2§.§#!<§;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import flash.net.SharedObject;
   
   public class §0p§
   {
      
      protected static var §4!#§:Class = §6!&§;
      
      protected static var §1!I§:Class = §1d§;
      
      protected static var §%e§:Class = §`?§;
      
      private static var §<4§:Array = [];
      
      private static var §4=§:Popup = null;
      
      private static var §#t§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §0!6§:Array;
       
      
      public function §0p§()
      {
         super();
      }
      
      private static function §<Y§(param1:String, param2:§+[§) : void
      {
         var tutorialPopup:§@"§ = null;
         var birdName:String = param1;
         var currentUIView:§+[§ = param2;
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
            tutorialPopup = new §@"§(§5!O§.§0N§(§4!#§),currentUIView,§^!>§.§;q§(tutorialName,§`v§.§4J§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §<4§.push(tutorialPopup);
         }
      }
      
      private static function §<P§(param1:String, param2:§+[§) : void
      {
         var tutorialPopup:§84§ = null;
         var powerUpName:String = param1;
         var currentUIView:§+[§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §84§(§5!O§.§0N§(§1!I§),currentUIView,§^!>§.§;q§(tutorialName,§`v§.§4J§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §<4§.push(tutorialPopup);
         }
      }
      
      public static function §5!P§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§#t§)
               {
                  §#t§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §2!7§())
               {
                  §#t§.data[birdName] = false;
               }
               §#t§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §#t§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §#t§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §#t§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §2!7§() : Array
      {
         var _loc2_:§#!<§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §2G§.§7!,§.slingshot.§^j§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §2!'§(param1:§+[§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§+[§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §0!6§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §0!6§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §0!6§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §0!6§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §0!6§.push(powerUpPopupName);
               break;
            case "ALL":
               §0!6§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §0!6§.push("POWERUP_TUTORIAL_SUPERSEED");
               §0!6§.push("POWERUP_TUTORIAL_KINGSLING");
               §0!6§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §0!6§;
         try
         {
            if(storageName)
            {
               if(!§#t§)
               {
                  §#t§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§#t§.data[powerUpPopupName] == undefined || §#t§.data[powerUpPopupName] == false)
                  {
                     §#t§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §#t§.flush();
            }
         }
         catch(e:Error)
         {
            §5s§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §<P§(powerUpName,currentUIView);
         }
      }
      
      public static function §]x§(param1:§+[§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§+[§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §2!7§();
         try
         {
            if(storageName)
            {
               if(!§#t§)
               {
                  §#t§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§#t§.data[birdName] == undefined || §#t§.data[birdName] == false)
                  {
                     §#t§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §#t§.flush();
            }
         }
         catch(e:Error)
         {
            §5s§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §<Y§(birdName,currentUIView);
         }
         §#!-§();
      }
      
      private static function §#!-§(param1:Boolean = true) : void
      {
         if(!isOpen && §<4§.length > 0)
         {
            isOpen = true;
            §4=§ = §<4§.pop();
            §4=§.open(param1);
         }
      }
      
      public static function §#x§() : void
      {
         if(isOpen == true)
         {
            if(§<4§.length > 0)
            {
               §4=§.preClose(false);
               isOpen = false;
               §#!-§(false);
            }
            else
            {
               isOpen = false;
               §4=§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§4=§)
         {
            §4=§.preClose(false);
         }
      }
   }
}
