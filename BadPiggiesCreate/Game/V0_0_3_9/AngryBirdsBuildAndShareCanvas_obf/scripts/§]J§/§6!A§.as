package §]J§
{
   import §3!S§.§%s§;
   import §;!<§.§7!f§;
   import §;!<§.§^$§;
   import §<Z§.§7!!§;
   import §=b§.§8",§;
   import §@!;§.§&F§;
   import §@!;§.§+b§;
   import flash.net.SharedObject;
   
   public class §6!A§
   {
      
      protected static var §#4§:Class = §,0§;
      
      protected static var §;!Q§:Class = §;" §;
      
      protected static var §'7§:Class = §3!"§;
      
      private static var §if §:Array = [];
      
      private static var §',§:Popup = null;
      
      private static var §%m§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §&X§:Array;
       
      
      public function §6!A§()
      {
         super();
      }
      
      private static function §0!Q§(param1:String, param2:§7!!§) : void
      {
         var tutorialPopup:§>"5§ = null;
         var birdName:String = param1;
         var currentUIView:§7!!§ = param2;
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
            tutorialPopup = new §>"5§(§+b§.§0x§(§#4§),currentUIView,§^$§.§,b§(tutorialName,§7!f§.§'!o§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §if §.push(tutorialPopup);
         }
      }
      
      private static function §]d§(param1:String, param2:§7!!§) : void
      {
         var tutorialPopup:§?E§ = null;
         var powerUpName:String = param1;
         var currentUIView:§7!!§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §?E§(§+b§.§0x§(§;!Q§),currentUIView,§^$§.§,b§(tutorialName,§7!f§.§'!o§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §if §.push(tutorialPopup);
         }
      }
      
      public static function §&!+§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§%m§)
               {
                  §%m§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §%![§())
               {
                  §%m§.data[birdName] = false;
               }
               §%m§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §%m§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §%m§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §%m§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §%![§() : Array
      {
         var _loc2_:§8",§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §%s§.§`!f§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §7!e§(param1:§7!!§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§7!!§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §&X§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §&X§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §&X§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §&X§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §&X§.push(powerUpPopupName);
               break;
            case "ALL":
               §&X§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §&X§.push("POWERUP_TUTORIAL_SUPERSEED");
               §&X§.push("POWERUP_TUTORIAL_KINGSLING");
               §&X§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §&X§;
         try
         {
            if(storageName)
            {
               if(!§%m§)
               {
                  §%m§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§%m§.data[powerUpPopupName] == undefined || §%m§.data[powerUpPopupName] == false)
                  {
                     §%m§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §%m§.flush();
            }
         }
         catch(e:Error)
         {
            §&F§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §]d§(powerUpName,currentUIView);
         }
      }
      
      public static function §[&§(param1:§7!!§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§7!!§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §%![§();
         try
         {
            if(storageName)
            {
               if(!§%m§)
               {
                  §%m§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§%m§.data[birdName] == undefined || §%m§.data[birdName] == false)
                  {
                     §%m§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §%m§.flush();
            }
         }
         catch(e:Error)
         {
            §&F§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §0!Q§(birdName,currentUIView);
         }
         §,7§();
      }
      
      private static function §,7§(param1:Boolean = true) : void
      {
         if(!isOpen && §if §.length > 0)
         {
            isOpen = true;
            §',§ = §if §.pop();
            §',§.open(param1);
         }
      }
      
      public static function §8F§() : void
      {
         if(isOpen == true)
         {
            if(§if §.length > 0)
            {
               §',§.preClose(false);
               isOpen = false;
               §,7§(false);
            }
            else
            {
               isOpen = false;
               §',§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§',§)
         {
            §',§.preClose(false);
         }
      }
   }
}
