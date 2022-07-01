package §?!'§
{
   import §%!0§.§%Q§;
   import §&!<§.§>!V§;
   import §,P§.§'_§;
   import §6]§.§+!T§;
   import §6]§.§,"0§;
   import §;"7§.§3"#§;
   import §;"7§.§="<§;
   import flash.net.SharedObject;
   
   public class §3$§
   {
      
      protected static var §'"5§:Class = §"!j§;
      
      protected static var § G§:Class = §<l§;
      
      protected static var §%!]§:Class = §^"=§;
      
      private static var §^!j§:Array = [];
      
      private static var §'^§:Popup = null;
      
      private static var §;!,§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §%!w§:Array;
       
      
      public function §3$§()
      {
         super();
      }
      
      private static function §-D§(param1:String, param2:§>!V§) : void
      {
         var tutorialPopup:§7!I§ = null;
         var birdName:String = param1;
         var currentUIView:§>!V§ = param2;
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
            tutorialPopup = new §7!I§(§+!T§.§`x§(§'"5§),currentUIView,§3"#§.§"!Z§(tutorialName,§="<§.§[E§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^!j§.push(tutorialPopup);
         }
      }
      
      private static function §^!I§(param1:String, param2:§>!V§) : void
      {
         var tutorialPopup:§1! § = null;
         var powerUpName:String = param1;
         var currentUIView:§>!V§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §1! §(§+!T§.§`x§(§ G§),currentUIView,§3"#§.§"!Z§(tutorialName,§="<§.§[E§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^!j§.push(tutorialPopup);
         }
      }
      
      public static function §8!!§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§;!,§)
               {
                  §;!,§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §8!w§())
               {
                  §;!,§.data[birdName] = false;
               }
               §;!,§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §;!,§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §;!,§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §;!,§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §8!w§() : Array
      {
         var _loc2_:§%Q§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §'_§.§=M§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §2=§(param1:§>!V§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§>!V§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §%!w§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §%!w§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §%!w§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §%!w§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §%!w§.push(powerUpPopupName);
               break;
            case "ALL":
               §%!w§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §%!w§.push("POWERUP_TUTORIAL_SUPERSEED");
               §%!w§.push("POWERUP_TUTORIAL_KINGSLING");
               §%!w§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §%!w§;
         try
         {
            if(storageName)
            {
               if(!§;!,§)
               {
                  §;!,§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§;!,§.data[powerUpPopupName] == undefined || §;!,§.data[powerUpPopupName] == false)
                  {
                     §;!,§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §;!,§.flush();
            }
         }
         catch(e:Error)
         {
            §,"0§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §^!I§(powerUpName,currentUIView);
         }
      }
      
      public static function §4"9§(param1:§>!V§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§>!V§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §8!w§();
         try
         {
            if(storageName)
            {
               if(!§;!,§)
               {
                  §;!,§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§;!,§.data[birdName] == undefined || §;!,§.data[birdName] == false)
                  {
                     §;!,§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §;!,§.flush();
            }
         }
         catch(e:Error)
         {
            §,"0§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §-D§(birdName,currentUIView);
         }
         §8!E§();
      }
      
      private static function §8!E§(param1:Boolean = true) : void
      {
         if(!isOpen && §^!j§.length > 0)
         {
            isOpen = true;
            §'^§ = §^!j§.pop();
            §'^§.open(param1);
         }
      }
      
      public static function §4!W§() : void
      {
         if(isOpen == true)
         {
            if(§^!j§.length > 0)
            {
               §'^§.preClose(false);
               isOpen = false;
               §8!E§(false);
            }
            else
            {
               isOpen = false;
               §'^§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§'^§)
         {
            §'^§.preClose(false);
         }
      }
   }
}
