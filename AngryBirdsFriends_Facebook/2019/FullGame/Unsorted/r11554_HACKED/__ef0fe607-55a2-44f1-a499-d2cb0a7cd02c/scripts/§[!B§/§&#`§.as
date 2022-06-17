package §[!B§
{
   import §-#R§.§0!w§;
   import §6W§.§0"5§;
   import §6W§.§>"P§;
   import §6W§.§]!j§;
   import §6W§.§^"t§;
   import §;$5§.§8"6§;
   import §;$5§.§@#G§;
   import §]"'§.§""K§;
   import §`D§.§@!7§;
   import flash.display.MovieClip;
   
   public class §&#`§ extends §>"P§
   {
       
      
      public function §&#`§(param1:§8"6§, param2:§""K§, param3:int, param4:§^"t§ = null, param5:§]!j§ = null, param6:§0"5§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public static function showTutorials(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc3_:§>"P§ = AngryBirdsBase.singleton.§3"8§;
         var _loc4_:String = !!param2 ? §#!#§.§4#M§ : §#!#§.§4"8§;
         var _loc5_:Vector.<String> = _loc3_.§=!`§.getTutorialNamesForMapping(_loc4_);
         if(!param1)
         {
            _loc6_ = _loc5_.length - 1;
            while(_loc6_ >= 0)
            {
               if(userProgress.hasTutorialBeenSeen(_loc5_[_loc6_]))
               {
                  _loc5_.splice(_loc6_,1);
               }
               _loc6_--;
            }
            if(_loc5_.length > 0)
            {
               userProgress.saveTutorialSeen(_loc5_.toString());
            }
         }
         if(_loc5_.length > 0)
         {
            AngryBirdsBase.singleton.§3"8§.§&"I§(_loc5_,true,true,true,true);
         }
      }
      
      public static function §5"s§(param1:String, param2:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc3_:Vector.<String> = new Vector.<String>();
         if(param1 == "")
         {
            param1 = "ALL_BASIC";
         }
         switch(param1)
         {
            case "ALL_BASIC":
               _loc3_.push(§0!w§.§'!z§.eventName);
               _loc3_.push(§0!w§.§%#p§.eventName);
               _loc3_.push(§0!w§.§3#D§.eventName);
               _loc3_.push(§0!w§.§ #;§.eventName);
               _loc3_.push(§0!w§.§,"w§.eventName);
               _loc3_.push(§0!w§.§<L§.eventName);
               break;
            case "ALL_EXTRABIRD":
               _loc3_.push(§0!w§.§'!z§.eventName);
               _loc3_.push(§0!w§.§%#p§.eventName);
               _loc3_.push(§0!w§.§3#D§.eventName);
               _loc3_.push(§0!w§.§ #;§.eventName);
               _loc3_.push(§0!w§.§,"w§.eventName);
               _loc3_.push(§0!w§.§<L§.eventName);
               _loc3_.push(§0!w§.§2$?§.eventName);
               break;
            case "ALL_TOURNAMENT":
               _loc3_.push(§0!w§.§%#p§.eventName);
               _loc3_.push(§0!w§.§3#D§.eventName);
               _loc3_.push(§0!w§.§ #;§.eventName);
               _loc3_.push(§0!w§.§,"w§.eventName);
               _loc3_.push(§0!w§.§<L§.eventName);
               _loc3_.push(§0!w§.§2$?§.eventName);
               break;
            case "ALL_EXTRABIRD_TNT":
               _loc3_.push(§0!w§.§'!z§.eventName);
               _loc3_.push(§0!w§.§%#p§.eventName);
               _loc3_.push(§0!w§.§3#D§.eventName);
               _loc3_.push(§0!w§.§ #;§.eventName);
               _loc3_.push(§0!w§.§,"w§.eventName);
               _loc3_.push(§0!w§.§<L§.eventName);
               _loc3_.push(§0!w§.§2$?§.eventName);
               _loc3_.push(§0!w§.§8$B§.eventName);
               break;
            case "ALL_MUSHROOM":
               _loc3_.push(§0!w§.§'!z§.eventName);
               _loc3_.push(§0!w§.§%#p§.eventName);
               _loc3_.push(§0!w§.§3#D§.eventName);
               _loc3_.push(§0!w§.§ #;§.eventName);
               _loc3_.push(§0!w§.§,"w§.eventName);
               _loc3_.push(§0!w§.§<L§.eventName);
               _loc3_.push(§0!w§.§2$?§.eventName);
               _loc3_.push(§0!w§.§<!y§.eventName);
               break;
            case §0!w§.§9#%§.eventName:
               break;
            default:
               _loc3_.push(param1);
         }
         if(!param2)
         {
            _loc4_ = _loc3_.length - 1;
            while(_loc4_ >= 0)
            {
               if(userProgress.hasTutorialBeenSeen(_loc3_[_loc4_]))
               {
                  _loc3_.splice(_loc4_,1);
               }
               _loc4_--;
            }
            if(_loc3_.length > 0)
            {
               userProgress.saveTutorialSeen(_loc3_.toString());
            }
         }
         if(_loc3_.length > 0)
         {
            AngryBirdsBase.singleton.§3"8§.§&"I§(_loc3_,true,true,true,true);
         }
         return _loc3_.length > 0;
      }
      
      public static function §-#_§() : void
      {
         AngryBirdsBase.singleton.§3"8§.§-#_§();
      }
      
      protected static function get userProgress() : §@!7§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §@!7§;
      }
      
      override protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §@#G§
      {
         return new §7i§(§%3§,param4,param1,param2,§3$9§,param3);
      }
   }
}
