package §]!1§
{
   import §10§.§#!4§;
   import §6!,§.§[H§;
   import §9!?§.;
   import §9H§.§@M§;
   import §9H§.§`j§;
   import §[n§.§%U§;
   import §[n§.§?+§;
   import flash.net.SharedObject;
   
   public class §@!-§
   {
      
      private static var §8A§:Class = §>K§;
      
      private static var §2]§:Class = §+x§;
      
      private static var §8s§:Class = §2!F§;
      
      private static var §=x§:Array = [];
      
      private static var §=!C§:Popup = null;
      
      private static var §1]§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §5&§:Array;
       
      
      public function §@!-§()
      {
         super();
      }
      
      private static function § <§(param1:String, param2:§[H§) : void
      {
         var tutorialPopup:§+R§ = null;
         var birdName:String = param1;
         var currentUIView:§[H§ = param2;
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
            tutorialPopup = new §+R§(§`j§.§]!#§(§8A§),currentUIView,§%U§.§+!+§(tutorialName,§?+§.§+S§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §=x§.push(tutorialPopup);
         }
      }
      
      private static function § !4§(param1:String, param2:§[H§) : void
      {
         var tutorialPopup:§9b§ = null;
         var powerUpName:String = param1;
         var currentUIView:§[H§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §9b§(§`j§.§]!#§(§2]§),currentUIView,§%U§.§+!+§(tutorialName,§?+§.§+S§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §=x§.push(tutorialPopup);
         }
      }
      
      public static function §6t§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§1]§)
               {
                  §1]§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §%7§())
               {
                  §1]§.data[birdName] = false;
               }
               §1]§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §1]§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §1]§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §1]§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §%7§() : Array
      {
         var _loc2_:§#1§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §#!4§.§^Y§.slingshot.§0r§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §<"§(param1:§[H§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§[H§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §5&§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §5&§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §5&§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §5&§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §5&§.push(powerUpPopupName);
               break;
            case "ALL":
               §5&§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §5&§.push("POWERUP_TUTORIAL_SUPERSEED");
               §5&§.push("POWERUP_TUTORIAL_KINGSLING");
               §5&§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §5&§;
         try
         {
            if(storageName)
            {
               if(!§1]§)
               {
                  §1]§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§1]§.data[powerUpPopupName] == undefined || §1]§.data[powerUpPopupName] == false)
                  {
                     §1]§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §1]§.flush();
            }
         }
         catch(e:Error)
         {
            §@M§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            § !4§(powerUpName,currentUIView);
         }
      }
      
      public static function §2H§(param1:§[H§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§[H§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §%7§();
         try
         {
            if(storageName)
            {
               if(!§1]§)
               {
                  §1]§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§1]§.data[birdName] == undefined || §1]§.data[birdName] == false)
                  {
                     §1]§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §1]§.flush();
            }
         }
         catch(e:Error)
         {
            §@M§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            § <§(birdName,currentUIView);
         }
         §^U§();
      }
      
      private static function §^U§(param1:Boolean = true) : void
      {
         if(!isOpen && §=x§.length > 0)
         {
            isOpen = true;
            §=!C§ = §=x§.pop();
            §=!C§.open(param1);
         }
      }
      
      public static function §8;§() : void
      {
         if(isOpen == true)
         {
            if(§=x§.length > 0)
            {
               §=!C§.preClose(false);
               isOpen = false;
               §^U§(false);
            }
            else
            {
               isOpen = false;
               §=!C§.preClose(true);
            }
         }
      }
   }
}
