package §<M§
{
   import §#e§.§%Y§;
   import §#e§.§'?§;
   import §8!B§.§#! §;
   import §9T§.§>>§;
   import §]!-§.§`o§;
   import §`K§.§ L§;
   import §`K§.§^!5§;
   import flash.net.SharedObject;
   
   public class §"_§
   {
      
      protected static var §=+§:Class = §!!&§;
      
      protected static var §'&§:Class = §>!&§;
      
      protected static var §;Z§:Class = §`!=§;
      
      private static var §=x§:Array = [];
      
      private static var §!!R§:Popup = null;
      
      private static var §^@§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §"#§:Array;
       
      
      public function §"_§()
      {
         super();
      }
      
      private static function §<S§(param1:String, param2:§`o§) : void
      {
         var tutorialPopup:§%!?§ = null;
         var birdName:String = param1;
         var currentUIView:§`o§ = param2;
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
            tutorialPopup = new §%!?§(§^!5§.§'l§(§=+§),currentUIView,§%Y§.§6!<§(tutorialName,§'?§.§>o§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §=x§.push(tutorialPopup);
         }
      }
      
      private static function §=!C§(param1:String, param2:§`o§) : void
      {
         var tutorialPopup:§]!2§ = null;
         var powerUpName:String = param1;
         var currentUIView:§`o§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §]!2§(§^!5§.§'l§(§'&§),currentUIView,§%Y§.§6!<§(tutorialName,§'?§.§>o§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §=x§.push(tutorialPopup);
         }
      }
      
      public static function §6M§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§^@§)
               {
                  §^@§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §`L§())
               {
                  §^@§.data[birdName] = false;
               }
               §^@§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §^@§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §^@§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §^@§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §`L§() : Array
      {
         var _loc2_:§>>§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §#! §.§`'§.slingshot.§,N§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §,!4§(param1:§`o§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§`o§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §"#§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §"#§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §"#§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §"#§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §"#§.push(powerUpPopupName);
               break;
            case "ALL":
               §"#§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §"#§.push("POWERUP_TUTORIAL_SUPERSEED");
               §"#§.push("POWERUP_TUTORIAL_KINGSLING");
               §"#§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §"#§;
         try
         {
            if(storageName)
            {
               if(!§^@§)
               {
                  §^@§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§^@§.data[powerUpPopupName] == undefined || §^@§.data[powerUpPopupName] == false)
                  {
                     §^@§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §^@§.flush();
            }
         }
         catch(e:Error)
         {
            § L§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §=!C§(powerUpName,currentUIView);
         }
      }
      
      public static function §!?§(param1:§`o§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§`o§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §`L§();
         try
         {
            if(storageName)
            {
               if(!§^@§)
               {
                  §^@§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§^@§.data[birdName] == undefined || §^@§.data[birdName] == false)
                  {
                     §^@§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §^@§.flush();
            }
         }
         catch(e:Error)
         {
            § L§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §<S§(birdName,currentUIView);
         }
         §4!!§();
      }
      
      private static function §4!!§(param1:Boolean = true) : void
      {
         if(!isOpen && §=x§.length > 0)
         {
            isOpen = true;
            §!!R§ = §=x§.pop();
            §!!R§.open(param1);
         }
      }
      
      public static function §,X§() : void
      {
         if(isOpen == true)
         {
            if(§=x§.length > 0)
            {
               §!!R§.preClose(false);
               isOpen = false;
               §4!!§(false);
            }
            else
            {
               isOpen = false;
               §!!R§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§!!R§)
         {
            §!!R§.preClose(false);
         }
      }
   }
}
