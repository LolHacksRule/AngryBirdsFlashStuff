package §'d§
{
   import §#?§.§%C§;
   import §#?§.§6!4§;
   import §'6§.§?!L§;
   import §'6§.§^^§;
   import §>!O§.§[+§;
   import §@a§.§8H§;
   import §`!4§.§?!M§;
   import flash.net.SharedObject;
   
   public class §"6§
   {
      
      protected static var §]1§:Class = §;$§;
      
      protected static var §<7§:Class = §1!6§;
      
      protected static var §5_§:Class = §-I§;
      
      private static var §7f§:Array = [];
      
      private static var §-!F§:Popup = null;
      
      private static var §@e§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §6X§:Array;
       
      
      public function §"6§()
      {
         super();
      }
      
      private static function §5!#§(param1:String, param2:§8H§) : void
      {
         var tutorialPopup:§-Q§ = null;
         var birdName:String = param1;
         var currentUIView:§8H§ = param2;
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
            tutorialPopup = new §-Q§(§^^§.§]d§(§]1§),currentUIView,§%C§.§;!5§(tutorialName,§6!4§.§;R§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §7f§.push(tutorialPopup);
         }
      }
      
      private static function §1!E§(param1:String, param2:§8H§) : void
      {
         var tutorialPopup:§5]§ = null;
         var powerUpName:String = param1;
         var currentUIView:§8H§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §5]§(§^^§.§]d§(§<7§),currentUIView,§%C§.§;!5§(tutorialName,§6!4§.§;R§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §7f§.push(tutorialPopup);
         }
      }
      
      public static function §^&§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§@e§)
               {
                  §@e§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §]_§())
               {
                  §@e§.data[birdName] = false;
               }
               §@e§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §@e§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §@e§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §@e§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §]_§() : Array
      {
         var _loc2_:§?!M§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §[+§.§,!&§.slingshot.§,D§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §@B§(param1:§8H§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§8H§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §6X§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §6X§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §6X§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §6X§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §6X§.push(powerUpPopupName);
               break;
            case "ALL":
               §6X§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §6X§.push("POWERUP_TUTORIAL_SUPERSEED");
               §6X§.push("POWERUP_TUTORIAL_KINGSLING");
               §6X§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §6X§;
         try
         {
            if(storageName)
            {
               if(!§@e§)
               {
                  §@e§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§@e§.data[powerUpPopupName] == undefined || §@e§.data[powerUpPopupName] == false)
                  {
                     §@e§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §@e§.flush();
            }
         }
         catch(e:Error)
         {
            §?!L§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §1!E§(powerUpName,currentUIView);
         }
      }
      
      public static function §,P§(param1:§8H§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§8H§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §]_§();
         try
         {
            if(storageName)
            {
               if(!§@e§)
               {
                  §@e§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§@e§.data[birdName] == undefined || §@e§.data[birdName] == false)
                  {
                     §@e§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §@e§.flush();
            }
         }
         catch(e:Error)
         {
            §?!L§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §5!#§(birdName,currentUIView);
         }
         §^!1§();
      }
      
      private static function §^!1§(param1:Boolean = true) : void
      {
         if(!isOpen && §7f§.length > 0)
         {
            isOpen = true;
            §-!F§ = §7f§.pop();
            §-!F§.open(param1);
         }
      }
      
      public static function §+@§() : void
      {
         if(isOpen == true)
         {
            if(§7f§.length > 0)
            {
               §-!F§.preClose(false);
               isOpen = false;
               §^!1§(false);
            }
            else
            {
               isOpen = false;
               §-!F§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§-!F§)
         {
            §-!F§.preClose(false);
         }
      }
   }
}
