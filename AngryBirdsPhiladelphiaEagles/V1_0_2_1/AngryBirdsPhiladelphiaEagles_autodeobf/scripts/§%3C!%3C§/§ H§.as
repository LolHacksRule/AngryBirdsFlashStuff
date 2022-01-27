package §<!<§
{
   import §%"§.§96§;
   import §2S§.§<!K§;
   import §<!F§.§5!+§;
   import §@V§.§2!2§;
   import §@V§.§`!5§;
   import §^'§.§ !C§;
   import §^'§.§"'§;
   import flash.net.SharedObject;
   
   public class § H§
   {
      
      protected static var §if§:Class = §7;§;
      
      protected static var §6c§:Class = §"a§;
      
      protected static var §4q§:Class = §!&§;
      
      private static var §&!K§:Array = [];
      
      private static var §8&§:Popup = null;
      
      private static var §>6§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §#!6§:Array;
       
      
      public function § H§()
      {
         super();
      }
      
      private static function §7!@§(param1:String, param2:§<!K§) : void
      {
         var tutorialPopup:§`i§ = null;
         var birdName:String = param1;
         var currentUIView:§<!K§ = param2;
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
            tutorialPopup = new §`i§(§2!2§.§7!I§(§if§),currentUIView,§"'§.§5W§(tutorialName,§ !C§.§&y§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §&!K§.push(tutorialPopup);
         }
      }
      
      private static function §%!0§(param1:String, param2:§<!K§) : void
      {
         var tutorialPopup:§ #§ = null;
         var powerUpName:String = param1;
         var currentUIView:§<!K§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new § #§(§2!2§.§7!I§(§6c§),currentUIView,§"'§.§5W§(tutorialName,§ !C§.§&y§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §&!K§.push(tutorialPopup);
         }
      }
      
      public static function §4r§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§>6§)
               {
                  §>6§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §'!#§())
               {
                  §>6§.data[birdName] = false;
               }
               §>6§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §>6§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §>6§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §>6§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §'!#§() : Array
      {
         var _loc2_:§96§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §5!+§.§6!§.slingshot.§4D§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function § 1§(param1:§<!K§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§<!K§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §#!6§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §#!6§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §#!6§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §#!6§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §#!6§.push(powerUpPopupName);
               break;
            case "ALL":
               §#!6§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §#!6§.push("POWERUP_TUTORIAL_SUPERSEED");
               §#!6§.push("POWERUP_TUTORIAL_KINGSLING");
               §#!6§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §#!6§;
         try
         {
            if(storageName)
            {
               if(!§>6§)
               {
                  §>6§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§>6§.data[powerUpPopupName] == undefined || §>6§.data[powerUpPopupName] == false)
                  {
                     §>6§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §>6§.flush();
            }
         }
         catch(e:Error)
         {
            §`!5§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §%!0§(powerUpName,currentUIView);
         }
      }
      
      public static function §7N§(param1:§<!K§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§<!K§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §'!#§();
         try
         {
            if(storageName)
            {
               if(!§>6§)
               {
                  §>6§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§>6§.data[birdName] == undefined || §>6§.data[birdName] == false)
                  {
                     §>6§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §>6§.flush();
            }
         }
         catch(e:Error)
         {
            §`!5§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §7!@§(birdName,currentUIView);
         }
         §^o§();
      }
      
      private static function §^o§(param1:Boolean = true) : void
      {
         if(!isOpen && §&!K§.length > 0)
         {
            isOpen = true;
            §8&§ = §&!K§.pop();
            §8&§.open(param1);
         }
      }
      
      public static function §^m§() : void
      {
         if(isOpen == true)
         {
            if(§&!K§.length > 0)
            {
               §8&§.preClose(false);
               isOpen = false;
               §^o§(false);
            }
            else
            {
               isOpen = false;
               §8&§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§8&§)
         {
            §8&§.preClose(false);
         }
      }
   }
}
