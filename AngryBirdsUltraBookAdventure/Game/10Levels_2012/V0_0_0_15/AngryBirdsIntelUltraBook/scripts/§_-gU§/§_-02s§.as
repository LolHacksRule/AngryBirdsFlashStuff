package §_-gU§
{
   import §_-0BH§.§_-FK§;
   import §_-0BH§.§_-ZE§;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-mB§;
   import §_-TG§.§_-pR§;
   import §_-Yl§.§_-5q§;
   import §_-qO§.§ in§;
   import flash.net.SharedObject;
   
   public class §_-02s§
   {
      
      protected static var §_-lV§:Class = §_-9b§;
      
      protected static var §_-HH§:Class = §_-036§;
      
      protected static var §_-5w§:Class = §_-ii§;
      
      private static var §_-0FG§:Array = [];
      
      private static var §_-4j§:Popup = null;
      
      private static var §_-77§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §_-E-§:Array;
       
      
      public function §_-02s§()
      {
         super();
      }
      
      private static function §_-w9§(param1:String, param2:§_-5q§) : void
      {
         var tutorialPopup:§_-wZ§ = null;
         var birdName:String = param1;
         var currentUIView:§_-5q§ = param2;
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
            tutorialPopup = new §_-wZ§(§_-ZE§.§_-ve§(§_-lV§),currentUIView,§_-mB§.§_-E3§(tutorialName,§_-0FF§.§_-3S§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §_-0FG§.push(tutorialPopup);
         }
      }
      
      private static function §_-XH§(param1:String, param2:§_-5q§) : void
      {
         var tutorialPopup:§_-hf§ = null;
         var powerUpName:String = param1;
         var currentUIView:§_-5q§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §_-hf§(§_-ZE§.§_-ve§(§_-HH§),currentUIView,§_-mB§.§_-E3§(tutorialName,§_-0FF§.§_-3S§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §_-0FG§.push(tutorialPopup);
         }
      }
      
      public static function §_-Yn§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§_-77§)
               {
                  §_-77§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §_-06X§())
               {
                  §_-77§.data[birdName] = false;
               }
               §_-77§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §_-77§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §_-77§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §_-77§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §_-06X§() : Array
      {
         var _loc2_:§_-pR§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in § in§.§_-Dc§.slingshot.§_-j9§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §_-5a§(param1:§_-5q§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§_-5q§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §_-E-§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §_-E-§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §_-E-§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §_-E-§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §_-E-§.push(powerUpPopupName);
               break;
            case "ALL":
               §_-E-§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §_-E-§.push("POWERUP_TUTORIAL_SUPERSEED");
               §_-E-§.push("POWERUP_TUTORIAL_KINGSLING");
               §_-E-§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §_-E-§;
         try
         {
            if(storageName)
            {
               if(!§_-77§)
               {
                  §_-77§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§_-77§.data[powerUpPopupName] == undefined || §_-77§.data[powerUpPopupName] == false)
                  {
                     §_-77§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §_-77§.flush();
            }
         }
         catch(e:Error)
         {
            §_-FK§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §_-XH§(powerUpName,currentUIView);
         }
      }
      
      public static function §_-09P§(param1:§_-5q§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§_-5q§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §_-06X§();
         try
         {
            if(storageName)
            {
               if(!§_-77§)
               {
                  §_-77§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§_-77§.data[birdName] == undefined || §_-77§.data[birdName] == false)
                  {
                     §_-77§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §_-77§.flush();
            }
         }
         catch(e:Error)
         {
            §_-FK§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §_-w9§(birdName,currentUIView);
         }
         §_-xQ§();
      }
      
      private static function §_-xQ§(param1:Boolean = true) : void
      {
         if(!isOpen && §_-0FG§.length > 0)
         {
            isOpen = true;
            §_-4j§ = §_-0FG§.pop();
            §_-4j§.open(param1);
         }
      }
      
      public static function §_-fl§() : void
      {
         if(isOpen == true)
         {
            if(§_-0FG§.length > 0)
            {
               §_-4j§.preClose(false);
               isOpen = false;
               §_-xQ§(false);
            }
            else
            {
               isOpen = false;
               §_-4j§.preClose(true);
            }
         }
      }
   }
}
