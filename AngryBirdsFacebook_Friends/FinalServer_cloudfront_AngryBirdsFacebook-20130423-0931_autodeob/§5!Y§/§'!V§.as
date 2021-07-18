package §5!Y§
{
   import §+!c§.§9"H§;
   import §+!c§.§;!=§;
   import §4!<§.§ !X§;
   import §<T§.§?!Z§;
   import §<T§.§`m§;
   import §@!"§.§?l§;
   import §`"%§.§`_§;
   import flash.net.SharedObject;
   
   public class §'!V§
   {
      
      protected static var §#"9§:Class = §3v§;
      
      protected static var §2b§:Class = §@"§;
      
      protected static var §!!g§:Class = §67§;
      
      private static var §9F§:Array = [];
      
      private static var §,f§:Popup = null;
      
      private static var §3T§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §>""§:Array;
       
      
      public function §'!V§()
      {
         super();
      }
      
      private static function §8n§(param1:String, param2:§`_§) : void
      {
         var tutorialPopup:§;!g§ = null;
         var birdName:String = param1;
         var currentUIView:§`_§ = param2;
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
            tutorialPopup = new §;!g§(§9"H§.§5!h§(§#"9§),currentUIView,§?!Z§.§9!4§(tutorialName,§`m§.§&"5§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §9F§.push(tutorialPopup);
         }
      }
      
      private static function §=K§(param1:String, param2:§`_§) : void
      {
         var tutorialPopup:§6A§ = null;
         var powerUpName:String = param1;
         var currentUIView:§`_§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §6A§(§9"H§.§5!h§(§2b§),currentUIView,§?!Z§.§9!4§(tutorialName,§`m§.§&"5§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §9F§.push(tutorialPopup);
         }
      }
      
      public static function §+"X§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§3T§)
               {
                  §3T§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §=C§())
               {
                  §3T§.data[birdName] = false;
               }
               §3T§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §3T§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §3T§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §3T§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §=C§() : Array
      {
         var _loc2_:§ !X§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §?l§.§'h§.slingshot.§9!L§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §7"?§(param1:§`_§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§`_§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §>""§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §>""§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §>""§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §>""§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §>""§.push(powerUpPopupName);
               break;
            case "ALL":
               §>""§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §>""§.push("POWERUP_TUTORIAL_SUPERSEED");
               §>""§.push("POWERUP_TUTORIAL_KINGSLING");
               §>""§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §>""§;
         try
         {
            if(storageName)
            {
               if(!§3T§)
               {
                  §3T§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§3T§.data[powerUpPopupName] == undefined || §3T§.data[powerUpPopupName] == false)
                  {
                     §3T§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §3T§.flush();
            }
         }
         catch(e:Error)
         {
            §;!=§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §=K§(powerUpName,currentUIView);
         }
      }
      
      public static function showTutorials(param1:§`_§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§`_§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §=C§();
         try
         {
            if(storageName)
            {
               if(!§3T§)
               {
                  §3T§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§3T§.data[birdName] == undefined || §3T§.data[birdName] == false)
                  {
                     §3T§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §3T§.flush();
            }
         }
         catch(e:Error)
         {
            §;!=§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §8n§(birdName,currentUIView);
         }
         §^"H§();
      }
      
      private static function §^"H§(param1:Boolean = true) : void
      {
         if(!isOpen && §9F§.length > 0)
         {
            isOpen = true;
            §,f§ = §9F§.pop();
            §,f§.open(param1);
         }
      }
      
      public static function §2!C§() : void
      {
         if(isOpen == true)
         {
            if(§9F§.length > 0)
            {
               §,f§.preClose(false);
               isOpen = false;
               §^"H§(false);
            }
            else
            {
               isOpen = false;
               §,f§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§,f§)
         {
            §,f§.preClose(false);
         }
      }
   }
}
