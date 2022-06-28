package §?N§
{
   import §"x§.§3!v§;
   import §,B§.§'!q§;
   import §,B§.§+g§;
   import §,B§.§?! §;
   import §,B§.Popup;
   import §2_§.§>-§;
   import §>! §.§^!c§;
   import §[!+§.§4`§;
   import §^!Y§.§'R§;
   import §^!Y§.§]p§;
   
   public class §#!`§ extends §?! §
   {
      
      private static var §'2§:Array = [];
      
      private static var §]M§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §!&§:Array;
       
      
      public function §#!`§()
      {
         super();
      }
      
      private static function §0;§(param1:String, param2:§4`§) : void
      {
         var _loc4_:§+g§ = null;
         var _loc3_:String = "";
         switch(param1)
         {
            case "BIRD_BLACK":
               _loc3_ = "TUTORIAL_BLACK";
               break;
            case "BIRD_BLUE":
               _loc3_ = "TUTORIAL_BLUE";
               break;
            case "BIRD_RED":
               _loc3_ = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               _loc3_ = "TUTORIAL_WHITE";
               break;
            case "BIRD_YELLOW":
               _loc3_ = "TUTORIAL_YELLOW";
               break;
            case "BIRD_GREEN":
               _loc3_ = "TUTORIAL_BOOMERANG";
               break;
            case "BIRD_REDBIG":
               _loc3_ = "TUTORIAL_BIG_BROTHER";
               break;
            case "BIRD_SARDINE":
               _loc3_ = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            _loc4_ = new §+g§(§3!v§.§;!-§(§@;§),param2,§]p§.§0X§(_loc3_,§'R§.§7!j§));
         }
         catch(e:Error)
         {
         }
         if(_loc4_)
         {
            §'2§.push(_loc4_);
         }
      }
      
      private static function §@Z§(param1:String, param2:§4`§) : void
      {
         var _loc4_:§'!q§ = null;
         var _loc3_:String = param1;
         try
         {
            _loc4_ = new §'!q§(§3!v§.§;!-§(§0!M§),param2,§]p§.§0X§(_loc3_,§'R§.§7!j§),_loc3_);
         }
         catch(e:Error)
         {
         }
         if(_loc4_)
         {
            §'2§.push(_loc4_);
         }
      }
      
      private static function §6P§() : Array
      {
         var _loc2_:§>-§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §^!c§.§5!Y§.slingshot.§]!^§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §]y§(param1:§4`§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §!&§ = [];
         switch(param2)
         {
            case "POWERUP4":
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §!&§.push(_loc4_);
               break;
            case "POWERUP1":
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §!&§.push(_loc4_);
               break;
            case "POWERUP2":
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §!&§.push(_loc4_);
               break;
            case "POWERUP3":
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §!&§.push(_loc4_);
               break;
            case "ALL":
               §!&§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §!&§.push("POWERUP_TUTORIAL_SUPERSEED");
               §!&§.push("POWERUP_TUTORIAL_KINGSLING");
               §!&§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var _loc5_:Array = §!&§;
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
            §@Z§(param2,param1);
         }
      }
      
      public static function §+!q§(param1:§4`§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §6P§();
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
            §0;§(_loc4_,param1);
         }
         §=!P§();
      }
      
      private static function §=!P§(param1:Boolean = true) : void
      {
         if(!isOpen && §'2§.length > 0)
         {
            isOpen = true;
            §]M§ = §'2§.pop();
            §]M§.open(param1);
         }
      }
      
      public static function §<z§() : void
      {
         if(isOpen == true)
         {
            if(§'2§.length > 0)
            {
               §]M§.preClose(false);
               isOpen = false;
               §=!P§(false);
            }
            else
            {
               isOpen = false;
               §]M§.preClose(true);
            }
         }
      }
   }
}
