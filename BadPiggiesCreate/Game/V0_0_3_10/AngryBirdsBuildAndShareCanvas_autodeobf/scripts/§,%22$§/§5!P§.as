package §,"$§
{
   import §%t§.§-!5§;
   import §%t§.§^-§;
   import §1U§.§"!V§;
   import §4!s§.§`!7§;
   import §4!t§.§=p§;
   import §9!G§.§<$§;
   import §9!G§.§]!e§;
   import flash.net.SharedObject;
   
   public class §5!P§
   {
      
      protected static var §9!c§:Class = §]!_§;
      
      protected static var §4z§:Class = §,x§;
      
      protected static var §%"6§:Class = §?e§;
      
      private static var §%0§:Array = [];
      
      private static var §<!Z§:Popup = null;
      
      private static var §`!>§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §57§:Array;
       
      
      public function §5!P§()
      {
         super();
      }
      
      private static function §!"9§(param1:String, param2:§=p§) : void
      {
         var tutorialPopup:§-!'§ = null;
         var birdName:String = param1;
         var currentUIView:§=p§ = param2;
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
            tutorialPopup = new §-!'§(§<$§.§ "7§(§9!c§),currentUIView,§^-§.§9!L§(tutorialName,§-!5§.§,l§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §%0§.push(tutorialPopup);
         }
      }
      
      private static function §<R§(param1:String, param2:§=p§) : void
      {
         var tutorialPopup:§&b§ = null;
         var powerUpName:String = param1;
         var currentUIView:§=p§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §&b§(§<$§.§ "7§(§4z§),currentUIView,§^-§.§9!L§(tutorialName,§-!5§.§,l§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §%0§.push(tutorialPopup);
         }
      }
      
      public static function §'q§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§`!>§)
               {
                  §`!>§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §,S§())
               {
                  §`!>§.data[birdName] = false;
               }
               §`!>§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §`!>§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §`!>§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §`!>§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §,S§() : Array
      {
         var _loc2_:§`!7§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §"!V§.§!j§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §6_§(param1:§=p§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§=p§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §57§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §57§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §57§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §57§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §57§.push(powerUpPopupName);
               break;
            case "ALL":
               §57§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §57§.push("POWERUP_TUTORIAL_SUPERSEED");
               §57§.push("POWERUP_TUTORIAL_KINGSLING");
               §57§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §57§;
         try
         {
            if(storageName)
            {
               if(!§`!>§)
               {
                  §`!>§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§`!>§.data[powerUpPopupName] == undefined || §`!>§.data[powerUpPopupName] == false)
                  {
                     §`!>§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §`!>§.flush();
            }
         }
         catch(e:Error)
         {
            §]!e§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §<R§(powerUpName,currentUIView);
         }
      }
      
      public static function §&0§(param1:§=p§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§=p§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §,S§();
         try
         {
            if(storageName)
            {
               if(!§`!>§)
               {
                  §`!>§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§`!>§.data[birdName] == undefined || §`!>§.data[birdName] == false)
                  {
                     §`!>§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §`!>§.flush();
            }
         }
         catch(e:Error)
         {
            §]!e§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §!"9§(birdName,currentUIView);
         }
         §3y§();
      }
      
      private static function §3y§(param1:Boolean = true) : void
      {
         if(!isOpen && §%0§.length > 0)
         {
            isOpen = true;
            §<!Z§ = §%0§.pop();
            §<!Z§.open(param1);
         }
      }
      
      public static function §^X§() : void
      {
         if(isOpen == true)
         {
            if(§%0§.length > 0)
            {
               §<!Z§.preClose(false);
               isOpen = false;
               §3y§(false);
            }
            else
            {
               isOpen = false;
               §<!Z§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§<!Z§)
         {
            §<!Z§.preClose(false);
         }
      }
   }
}
