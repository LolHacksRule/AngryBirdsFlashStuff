package §9!y§
{
   import §,!5§.§7!,§;
   import §-w§.§,Q§;
   import §-w§.§]c§;
   import §2h§.§'!^§;
   import §[m§.§ #§;
   import §[m§.§7!9§;
   import §[m§.§;!+§;
   import §[m§.Popup;
   import §^_§.§,>§;
   import §true§.§ _§;
   
   public class §5V§ extends §;!+§
   {
      
      private static var §+!q§:Array = [];
      
      private static var §8[§:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var §1&§:Array;
       
      
      public function §5V§()
      {
         super();
      }
      
      private static function §#![§(param1:String, param2:§'!^§) : void
      {
         var _loc4_:§7!9§ = null;
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
            _loc4_ = new §7!9§(§,>§.§%2§(§=2§),param2,§]c§.§ 2§(_loc3_,§,Q§.§<d§));
         }
         catch(e:Error)
         {
         }
         if(_loc4_)
         {
            §+!q§.push(_loc4_);
         }
      }
      
      private static function §;'§(param1:String, param2:§'!^§) : void
      {
         var _loc4_:§ #§ = null;
         var _loc3_:String = param1;
         try
         {
            _loc4_ = new § #§(§,>§.§%2§(§+!,§),param2,§]c§.§ 2§(_loc3_,§,Q§.§<d§),_loc3_);
         }
         catch(e:Error)
         {
         }
         if(_loc4_)
         {
            §+!q§.push(_loc4_);
         }
      }
      
      private static function §1!_§() : Array
      {
         var _loc2_:§7!,§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in § _§.§!6§.slingshot.§?$§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §%!w§(param1:§'!^§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         §1&§ = [];
         switch(param2)
         {
            case "POWERUP4":
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               §1&§.push(_loc4_);
               break;
            case "POWERUP1":
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               §1&§.push(_loc4_);
               break;
            case "POWERUP2":
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               §1&§.push(_loc4_);
               break;
            case "POWERUP3":
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               §1&§.push(_loc4_);
               break;
            case "ALL":
               §1&§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §1&§.push("POWERUP_TUTORIAL_SUPERSEED");
               §1&§.push("POWERUP_TUTORIAL_KINGSLING");
               §1&§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var _loc5_:Array = §1&§;
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
            §;'§(param2,param1);
         }
      }
      
      public static function §>!4§(param1:§'!^§, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc3_:Array = §1!_§();
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
            §#![§(_loc4_,param1);
         }
         §7!S§();
      }
      
      private static function §7!S§(param1:Boolean = true) : void
      {
         if(!isOpen && §+!q§.length > 0)
         {
            isOpen = true;
            §8[§ = §+!q§.pop();
            §8[§.open(param1);
         }
      }
      
      public static function §=M§() : void
      {
         if(isOpen == true)
         {
            if(§+!q§.length > 0)
            {
               §8[§.preClose(false);
               isOpen = false;
               §7!S§(false);
            }
            else
            {
               isOpen = false;
               §8[§.preClose(true);
            }
         }
      }
   }
}
