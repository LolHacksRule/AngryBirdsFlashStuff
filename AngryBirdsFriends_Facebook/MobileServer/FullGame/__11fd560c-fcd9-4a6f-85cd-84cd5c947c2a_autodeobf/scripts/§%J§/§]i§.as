package §%J§
{
   import §&$!§.§%#k§;
   import §1!=§.§%#;§;
   import §1!=§.§["+§;
   import §2G§.§3W§;
   import §2I§.§!#E§;
   import §2I§.§5#j§;
   import §2I§.§7"r§;
   import §2I§.§[!3§;
   import §<G§.§3§;
   import flash.display.MovieClip;
   
   public class §]i§ extends §7"r§
   {
       
      
      public function §]i§(param1:§["+§, param2:§3W§, param3:int, param4:§[!3§ = null, param5:§!#E§ = null, param6:§5#j§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public static function showTutorials(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc3_:§7"r§ = AngryBirdsBase.singleton.§%#m§;
         var _loc4_:String = !!param2 ? §6"q§.§8$ § : §6"q§.§^"n§;
         var _loc5_:Vector.<String> = _loc3_.§>#i§.getTutorialNamesForMapping(_loc4_);
         if(!param1)
         {
            _loc6_ = _loc5_.length - 1;
            while(_loc6_ >= 0)
            {
               if(_loc7_ = userProgress.hasTutorialBeenSeen(_loc5_[_loc6_]))
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
            AngryBirdsBase.singleton.§%#m§.§-$&§(_loc5_,true,true,true,true);
         }
      }
      
      public static function §"#o§(param1:String, param2:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<String> = new Vector.<String>();
         if(param1 == "")
         {
            param1 = "ALL_BASIC";
         }
         switch(param1)
         {
            case "ALL_BASIC":
               _loc3_.push(§%#k§.§]k§.eventName);
               _loc3_.push(§%#k§.§6`§.eventName);
               _loc3_.push(§%#k§.§""z§.eventName);
               _loc3_.push(§%#k§.§'"!§.eventName);
               _loc3_.push(§%#k§.§0"W§.eventName);
               _loc3_.push(§%#k§.§'!N§.eventName);
               break;
            case "ALL_EXTRABIRD":
               _loc3_.push(§%#k§.§]k§.eventName);
               _loc3_.push(§%#k§.§6`§.eventName);
               _loc3_.push(§%#k§.§""z§.eventName);
               _loc3_.push(§%#k§.§'"!§.eventName);
               _loc3_.push(§%#k§.§0"W§.eventName);
               _loc3_.push(§%#k§.§'!N§.eventName);
               _loc3_.push(§%#k§.§6"t§.eventName);
               break;
            case "ALL_TOURNAMENT":
               _loc3_.push(§%#k§.§6`§.eventName);
               _loc3_.push(§%#k§.§""z§.eventName);
               _loc3_.push(§%#k§.§'"!§.eventName);
               _loc3_.push(§%#k§.§0"W§.eventName);
               _loc3_.push(§%#k§.§'!N§.eventName);
               _loc3_.push(§%#k§.§6"t§.eventName);
               break;
            case "ALL_EXTRABIRD_TNT":
               _loc3_.push(§%#k§.§]k§.eventName);
               _loc3_.push(§%#k§.§6`§.eventName);
               _loc3_.push(§%#k§.§""z§.eventName);
               _loc3_.push(§%#k§.§'"!§.eventName);
               _loc3_.push(§%#k§.§0"W§.eventName);
               _loc3_.push(§%#k§.§'!N§.eventName);
               _loc3_.push(§%#k§.§6"t§.eventName);
               _loc3_.push(§%#k§.§>#Z§.eventName);
               break;
            case "ALL_MUSHROOM":
               _loc3_.push(§%#k§.§]k§.eventName);
               _loc3_.push(§%#k§.§6`§.eventName);
               _loc3_.push(§%#k§.§""z§.eventName);
               _loc3_.push(§%#k§.§'"!§.eventName);
               _loc3_.push(§%#k§.§0"W§.eventName);
               _loc3_.push(§%#k§.§'!N§.eventName);
               _loc3_.push(§%#k§.§6"t§.eventName);
               _loc3_.push(§%#k§.§@#l§.eventName);
               break;
            case §%#k§.§[4§.eventName:
               break;
            default:
               _loc3_.push(param1);
         }
         if(!param2)
         {
            _loc4_ = _loc3_.length - 1;
            while(_loc4_ >= 0)
            {
               if(_loc5_ = userProgress.hasTutorialBeenSeen(_loc3_[_loc4_]))
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
            AngryBirdsBase.singleton.§%#m§.§-$&§(_loc3_,true,true,true,true);
         }
         return _loc3_.length > 0;
      }
      
      public static function §,"f§() : void
      {
         AngryBirdsBase.singleton.§%#m§.§,"f§();
      }
      
      protected static function get userProgress() : §3#9§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §3#9§;
      }
      
      override protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §%#;§
      {
         return new §2"6§(§7$9§,param4,param1,param2,§2#;§,param3);
      }
   }
}
