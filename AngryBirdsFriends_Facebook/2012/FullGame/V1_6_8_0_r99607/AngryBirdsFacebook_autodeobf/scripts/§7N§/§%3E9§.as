package §7N§
{
   import §+I§.§9!%§;
   import §0!?§.§1!%§;
   import §3,§.§-!K§;
   import §?"<§.§#!6§;
   import §?"<§.§<"!§;
   import §]!F§.§"!j§;
   
   public class §>9§ extends §0X§
   {
      
      private static var §?!P§:Array = [];
      
      private static var §=C§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §[8§:Array;
       
      
      public function §>9§()
      {
         super();
      }
      
      private static function §<"?§(param1:String, param2:§"!j§) : void
      {
         var tutorialPopup:§3!4§ = null;
         var birdName:String = param1;
         var currentUIView:§"!j§ = param2;
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
            tutorialPopup = new §3!4§(§1!%§.§8!?§(§<"3§),currentUIView,§#!6§.§#o§(tutorialName,§<"!§.§8c§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §?!P§.push(tutorialPopup);
         }
      }
      
      private static function §`!k§(param1:String, param2:§"!j§) : void
      {
         var tutorialPopup:§?L§ = null;
         var powerUpName:String = param1;
         var currentUIView:§"!j§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §?L§(§1!%§.§8!?§(§'"%§),currentUIView,§#!6§.§#o§(tutorialName,§<"!§.§8c§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §?!P§.push(tutorialPopup);
         }
      }
      
      private static function §;"6§() : Array
      {
         var _loc2_:§-!K§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §9!%§.§!!M§.slingshot.§&!L§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §[z§(param1:§"!j§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §[8§ = [];
         switch(param2)
         {
            case "POWERUP4":
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §[8§.push(_loc4_);
               break;
            case "POWERUP1":
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §[8§.push(_loc4_);
               break;
            case "POWERUP2":
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §[8§.push(_loc4_);
               break;
            case "POWERUP3":
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §[8§.push(_loc4_);
               break;
            case "ALL":
               §[8§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §[8§.push("POWERUP_TUTORIAL_SUPERSEED");
               §[8§.push("POWERUP_TUTORIAL_KINGSLING");
               §[8§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var _loc5_:Array = §[8§;
         if(!param3)
         {
            _loc6_ = _loc5_.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc7_ = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(_loc5_[_loc6_]))
               {
                  _loc5_.splice(_loc6_,1);
               }
               _loc6_--;
            }
            if(_loc5_.length > 0)
            {
               AngryBirdsFP11.sUserProgress.saveTutorialSeen(_loc5_.toString());
            }
         }
         for each(param2 in _loc5_)
         {
            §`!k§(param2,param1);
         }
      }
      
      public static function §+L§(param1:§"!j§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §;"6§();
         if(!param2)
         {
            _loc5_ = _loc3_.length - 1;
            while(_loc5_ >= 0)
            {
               if(_loc6_ = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(_loc3_[_loc5_]))
               {
                  _loc3_.splice(_loc5_,1);
               }
               _loc5_--;
            }
            if(_loc3_.length > 0)
            {
               AngryBirdsFP11.sUserProgress.saveTutorialSeen(_loc3_.toString());
            }
         }
         for each(_loc4_ in _loc3_)
         {
            §<"?§(_loc4_,param1);
         }
         §!S§();
      }
      
      private static function §!S§(param1:Boolean = true) : void
      {
         if(!isOpen && §?!P§.length > 0)
         {
            isOpen = true;
            §=C§ = §?!P§.pop();
            §=C§.open(param1);
         }
      }
      
      public static function §^!%§() : void
      {
         if(isOpen == true)
         {
            if(§?!P§.length > 0)
            {
               §=C§.preClose(false);
               isOpen = false;
               §!S§(false);
            }
            else
            {
               isOpen = false;
               §=C§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         §?!P§ = [];
         if(§=C§)
         {
            §^!%§();
         }
      }
   }
}
