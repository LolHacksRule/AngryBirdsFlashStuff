package §[m§
{
   import §,!5§.§7!,§;
   import §-w§.§,Q§;
   import §-w§.§]c§;
   import §2h§.§'!^§;
   import §^_§.§!>§;
   import §^_§.§,>§;
   import flash.net.SharedObject;
   import §true§.§ _§;
   
   public class §;!+§
   {
      
      protected static var §=2§:Class = §!!I§;
      
      protected static var §+!,§:Class = §[S§;
      
      protected static var §7!C§:Class = §5X§;
      
      private static var §+!q§:Array = [];
      
      private static var §8[§:Popup = null;
      
      private static var §&!>§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §1&§:Array;
       
      
      public function §;!+§()
      {
         super();
      }
      
      private static function §#![§(param1:String, param2:§'!^§) : void
      {
         var tutorialPopup:§7!9§ = null;
         var birdName:String = param1;
         var currentUIView:§'!^§ = param2;
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
            tutorialPopup = new §7!9§(§,>§.§%2§(§=2§),currentUIView,§]c§.§ 2§(tutorialName,§,Q§.§<d§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §+!q§.push(tutorialPopup);
         }
      }
      
      private static function §;'§(param1:String, param2:§'!^§) : void
      {
         var tutorialPopup:§ #§ = null;
         var powerUpName:String = param1;
         var currentUIView:§'!^§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new § #§(§,>§.§%2§(§+!,§),currentUIView,§]c§.§ 2§(tutorialName,§,Q§.§<d§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §+!q§.push(tutorialPopup);
         }
      }
      
      public static function §4<§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§&!>§)
               {
                  §&!>§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §1!_§())
               {
                  §&!>§.data[birdName] = false;
               }
               §&!>§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §&!>§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §&!>§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §&!>§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §1!_§() : Array
      {
         var _loc2_:§7!,§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in § _§.§!6§.slingshot.§?$§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §%!w§(param1:§'!^§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§'!^§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §1&§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §1&§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §1&§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §1&§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §1&§.push(powerUpPopupName);
               break;
            case "ALL":
               §1&§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §1&§.push("POWERUP_TUTORIAL_SUPERSEED");
               §1&§.push("POWERUP_TUTORIAL_KINGSLING");
               §1&§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §1&§;
         try
         {
            if(storageName)
            {
               if(!§&!>§)
               {
                  §&!>§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§&!>§.data[powerUpPopupName] == undefined || §&!>§.data[powerUpPopupName] == false)
                  {
                     §&!>§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §&!>§.flush();
            }
         }
         catch(e:Error)
         {
            §!>§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §;'§(powerUpName,currentUIView);
         }
      }
      
      public static function §>!4§(param1:§'!^§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§'!^§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §1!_§();
         try
         {
            if(storageName)
            {
               if(!§&!>§)
               {
                  §&!>§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§&!>§.data[birdName] == undefined || §&!>§.data[birdName] == false)
                  {
                     §&!>§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §&!>§.flush();
            }
         }
         catch(e:Error)
         {
            §!>§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §#![§(birdName,currentUIView);
         }
         §7!S§();
      }
      
      private static function §7!S§(param1:Boolean = true) : void
      {
         if(!isOpen && §+!q§.length > 0)
         {
            isOpen = true;
            §8[§ = §+!q§.pop();
            §8[§.open(param1);
         }
      }
      
      public static function §=M§() : void
      {
         if(isOpen == true)
         {
            if(§+!q§.length > 0)
            {
               §8[§.preClose(false);
               isOpen = false;
               §7!S§(false);
            }
            else
            {
               isOpen = false;
               §8[§.preClose(true);
            }
         }
      }
   }
}
