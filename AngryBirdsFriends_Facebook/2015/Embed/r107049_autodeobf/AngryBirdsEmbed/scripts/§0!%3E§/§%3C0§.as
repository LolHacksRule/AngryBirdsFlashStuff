package §0!>§
{
   import §6h§.§[!4§;
   import §9s§.§1!6§;
   import §?H§.§+!B§;
   import §@!;§.§!!=§;
   import §@!;§.§?>§;
   import §[v§.§0&§;
   import §[v§.§<D§;
   import flash.net.SharedObject;
   
   public class §<0§
   {
      
      protected static var §5;§:Class = §7F§;
      
      protected static var §+4§:Class = §9v§;
      
      protected static var §@0§:Class = §`!3§;
      
      private static var §;!§:Array = [];
      
      private static var §20§:Popup = null;
      
      private static var §'9§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §^H§:Array;
       
      
      public function §<0§()
      {
         super();
      }
      
      private static function §6!@§(param1:String, param2:§+!B§) : void
      {
         var tutorialPopup:§`W§ = null;
         var birdName:String = param1;
         var currentUIView:§+!B§ = param2;
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
            tutorialPopup = new §`W§(§?>§.§+!;§(§5;§),currentUIView,§<D§.§7!;§(tutorialName,§0&§.§5+§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §;!§.push(tutorialPopup);
         }
      }
      
      private static function §6]§(param1:String, param2:§+!B§) : void
      {
         var tutorialPopup:§@§ = null;
         var powerUpName:String = param1;
         var currentUIView:§+!B§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §@§(§?>§.§+!;§(§+4§),currentUIView,§<D§.§7!;§(tutorialName,§0&§.§5+§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §;!§.push(tutorialPopup);
         }
      }
      
      public static function §7$§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§'9§)
               {
                  §'9§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §!=§())
               {
                  §'9§.data[birdName] = false;
               }
               §'9§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §'9§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §'9§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §'9§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §!=§() : Array
      {
         var _loc2_:§1!6§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §[!4§.§continue§.slingshot.§@s§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §?r§(param1:§+!B§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§+!B§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §^H§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §^H§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §^H§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §^H§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §^H§.push(powerUpPopupName);
               break;
            case "ALL":
               §^H§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §^H§.push("POWERUP_TUTORIAL_SUPERSEED");
               §^H§.push("POWERUP_TUTORIAL_KINGSLING");
               §^H§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §^H§;
         try
         {
            if(storageName)
            {
               if(!§'9§)
               {
                  §'9§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§'9§.data[powerUpPopupName] == undefined || §'9§.data[powerUpPopupName] == false)
                  {
                     §'9§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §'9§.flush();
            }
         }
         catch(e:Error)
         {
            §!!=§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §6]§(powerUpName,currentUIView);
         }
      }
      
      public static function §<U§(param1:§+!B§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§+!B§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §!=§();
         try
         {
            if(storageName)
            {
               if(!§'9§)
               {
                  §'9§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§'9§.data[birdName] == undefined || §'9§.data[birdName] == false)
                  {
                     §'9§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §'9§.flush();
            }
         }
         catch(e:Error)
         {
            §!!=§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §6!@§(birdName,currentUIView);
         }
         §#3§();
      }
      
      private static function §#3§(param1:Boolean = true) : void
      {
         if(!isOpen && §;!§.length > 0)
         {
            isOpen = true;
            §20§ = §;!§.pop();
            §20§.open(param1);
         }
      }
      
      public static function §8o§() : void
      {
         if(isOpen == true)
         {
            if(§;!§.length > 0)
            {
               §20§.preClose(false);
               isOpen = false;
               §#3§(false);
            }
            else
            {
               isOpen = false;
               §20§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§20§)
         {
            §20§.preClose(false);
         }
      }
   }
}
