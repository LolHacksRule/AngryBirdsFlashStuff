package §##§
{
   import §"o§.§]?§;
   import §&V§.§,w§;
   import §&V§.§9!>§;
   import §'m§.§%!5§;
   import §'m§.§^S§;
   import §87§.§]T§;
   import §;j§.§8[§;
   import flash.net.SharedObject;
   
   public class §3!E§
   {
      
      private static var §,"§:Class = §`!E§;
      
      private static var §%0§:Class = §-@§;
      
      private static var §`E§:Class = §&w§;
      
      private static var §=§:Array = [];
      
      private static var §5§:Popup = null;
      
      private static var §case §:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §5G§:Array;
       
      
      public function §3!E§()
      {
         super();
      }
      
      private static function §-!D§(param1:String, param2:§]T§) : void
      {
         var tutorialPopup:§1i§ = null;
         var birdName:String = param1;
         var currentUIView:§]T§ = param2;
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
            tutorialPopup = new §1i§(§%!5§.§!]§(§,"§),currentUIView,§9!>§.§-!!§(tutorialName,§,w§.§5!B§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §=§.push(tutorialPopup);
         }
      }
      
      private static function §&!8§(param1:String, param2:§]T§) : void
      {
         var tutorialPopup:§ null§ = null;
         var powerUpName:String = param1;
         var currentUIView:§]T§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new § null§(§%!5§.§!]§(§%0§),currentUIView,§9!>§.§-!!§(tutorialName,§,w§.§5!B§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §=§.push(tutorialPopup);
         }
      }
      
      public static function §[%§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§case §)
               {
                  §case § = SharedObject.getLocal(storageName);
               }
               for each(birdName in §`!3§())
               {
                  §case §.data[birdName] = false;
               }
               §case §.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §case §.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §case §.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §case §.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §`!3§() : Array
      {
         var _loc2_:§]?§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §8[§.§import§.slingshot.§0A§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function § §(param1:§]T§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§]T§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §5G§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §5G§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §5G§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §5G§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §5G§.push(powerUpPopupName);
               break;
            case "ALL":
               §5G§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §5G§.push("POWERUP_TUTORIAL_SUPERSEED");
               §5G§.push("POWERUP_TUTORIAL_KINGSLING");
               §5G§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §5G§;
         try
         {
            if(storageName)
            {
               if(!§case §)
               {
                  §case § = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§case §.data[powerUpPopupName] == undefined || §case §.data[powerUpPopupName] == false)
                  {
                     §case §.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §case §.flush();
            }
         }
         catch(e:Error)
         {
            §^S§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §&!8§(powerUpName,currentUIView);
         }
      }
      
      public static function §[X§(param1:§]T§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§]T§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §`!3§();
         try
         {
            if(storageName)
            {
               if(!§case §)
               {
                  §case § = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§case §.data[birdName] == undefined || §case §.data[birdName] == false)
                  {
                     §case §.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §case §.flush();
            }
         }
         catch(e:Error)
         {
            §^S§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §-!D§(birdName,currentUIView);
         }
         §=!!§();
      }
      
      private static function §=!!§(param1:Boolean = true) : void
      {
         if(!isOpen && §=§.length > 0)
         {
            isOpen = true;
            §5§ = §=§.pop();
            §5§.open(param1);
         }
      }
      
      public static function set() : void
      {
         if(isOpen == true)
         {
            if(§=§.length > 0)
            {
               §5§.preClose(false);
               isOpen = false;
               §=!!§(false);
            }
            else
            {
               isOpen = false;
               §5§.preClose(true);
            }
         }
      }
   }
}
