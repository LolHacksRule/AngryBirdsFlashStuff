package §'!7§
{
   import §"a§.§2C§;
   import §"a§.§>X§;
   import §#;§.§0#§;
   import §-p§.§ §;
   import §-p§.§&2§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.net.SharedObject;
   
   public class §`a§
   {
      
      protected static var §!^§:Class = §+Y§;
      
      protected static var §-!E§:Class = §<g§;
      
      protected static var §>!1§:Class = §,!9§;
      
      private static var §1[§:Array = [];
      
      private static var §%C§:Popup = null;
      
      private static var §@s§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §]R§:Array;
       
      
      public function §`a§()
      {
         super();
      }
      
      private static function §2G§(param1:String, param2:§5h§) : void
      {
         var tutorialPopup:§#!&§ = null;
         var birdName:String = param1;
         var currentUIView:§5h§ = param2;
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
            tutorialPopup = new §#!&§(§ §.§]Y§(§!^§),currentUIView,§2C§.§#g§(tutorialName,§>X§.§72§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §1[§.push(tutorialPopup);
         }
      }
      
      private static function §]! §(param1:String, param2:§5h§) : void
      {
         var tutorialPopup:§?F§ = null;
         var powerUpName:String = param1;
         var currentUIView:§5h§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §?F§(§ §.§]Y§(§-!E§),currentUIView,§2C§.§#g§(tutorialName,§>X§.§72§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §1[§.push(tutorialPopup);
         }
      }
      
      public static function §8!8§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§@s§)
               {
                  §@s§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §#!6§())
               {
                  §@s§.data[birdName] = false;
               }
               §@s§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §@s§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §@s§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §@s§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §#!6§() : Array
      {
         var _loc2_:§0#§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §^?§.§]!%§.slingshot.§%h§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §%E§(param1:§5h§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§5h§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §]R§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §]R§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §]R§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §]R§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §]R§.push(powerUpPopupName);
               break;
            case "ALL":
               §]R§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §]R§.push("POWERUP_TUTORIAL_SUPERSEED");
               §]R§.push("POWERUP_TUTORIAL_KINGSLING");
               §]R§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §]R§;
         try
         {
            if(storageName)
            {
               if(!§@s§)
               {
                  §@s§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§@s§.data[powerUpPopupName] == undefined || §@s§.data[powerUpPopupName] == false)
                  {
                     §@s§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §@s§.flush();
            }
         }
         catch(e:Error)
         {
            §&2§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §]! §(powerUpName,currentUIView);
         }
      }
      
      public static function §7x§(param1:§5h§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§5h§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §#!6§();
         try
         {
            if(storageName)
            {
               if(!§@s§)
               {
                  §@s§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§@s§.data[birdName] == undefined || §@s§.data[birdName] == false)
                  {
                     §@s§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §@s§.flush();
            }
         }
         catch(e:Error)
         {
            §&2§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §2G§(birdName,currentUIView);
         }
         § !?§();
      }
      
      private static function § !?§(param1:Boolean = true) : void
      {
         if(!isOpen && §1[§.length > 0)
         {
            isOpen = true;
            §%C§ = §1[§.pop();
            §%C§.open(param1);
         }
      }
      
      public static function §[S§() : void
      {
         if(isOpen == true)
         {
            if(§1[§.length > 0)
            {
               §%C§.preClose(false);
               isOpen = false;
               § !?§(false);
            }
            else
            {
               isOpen = false;
               §%C§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§%C§)
         {
            §%C§.preClose(false);
         }
      }
   }
}
