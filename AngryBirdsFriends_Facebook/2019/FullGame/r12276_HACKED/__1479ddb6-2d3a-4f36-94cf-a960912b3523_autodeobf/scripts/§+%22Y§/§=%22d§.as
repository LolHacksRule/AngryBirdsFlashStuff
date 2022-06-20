package §+"Y§
{
   import § "a§.§ !C§;
   import §9!6§.§8#v§;
   import §9!6§.§?!y§;
   import §<"I§.§<$B§;
   import §>#Y§.§@!p§;
   import §`!u§.§%#B§;
   import §`!u§.§,"4§;
   import §`!u§.§-"w§;
   import §`!u§.§3#A§;
   import flash.display.MovieClip;
   
   public class §="d§ extends §%#B§
   {
       
      
      public function §="d§(param1:§8#v§, param2:§@!p§, param3:int, param4:§,"4§ = null, param5:§3#A§ = null, param6:§-"w§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public static function showTutorials(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc3_:§%#B§ = AngryBirdsBase.singleton.§8q§;
         var _loc4_:String = !!param2 ? §%#p§.§9C§ : §%#p§.§7#q§;
         var _loc5_:Vector.<String> = _loc3_.§#"x§.getTutorialNamesForMapping(_loc4_);
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
            AngryBirdsBase.singleton.§8q§.§8#g§(_loc5_,true,true,true,true);
         }
      }
      
      public static function § S§(param1:String, param2:Boolean = false) : Boolean
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
               _loc3_.push(§<$B§.§`"K§.eventName);
               _loc3_.push(§<$B§.§5#J§.eventName);
               _loc3_.push(§<$B§.§+"4§.eventName);
               _loc3_.push(§<$B§.§<$§.eventName);
               _loc3_.push(§<$B§.§ !n§.eventName);
               _loc3_.push(§<$B§.§[D§.eventName);
               break;
            case "ALL_EXTRABIRD":
               _loc3_.push(§<$B§.§`"K§.eventName);
               _loc3_.push(§<$B§.§5#J§.eventName);
               _loc3_.push(§<$B§.§+"4§.eventName);
               _loc3_.push(§<$B§.§<$§.eventName);
               _loc3_.push(§<$B§.§ !n§.eventName);
               _loc3_.push(§<$B§.§[D§.eventName);
               _loc3_.push(§<$B§.§0"s§.eventName);
               break;
            case "ALL_TOURNAMENT":
               _loc3_.push(§<$B§.§5#J§.eventName);
               _loc3_.push(§<$B§.§+"4§.eventName);
               _loc3_.push(§<$B§.§<$§.eventName);
               _loc3_.push(§<$B§.§ !n§.eventName);
               _loc3_.push(§<$B§.§[D§.eventName);
               _loc3_.push(§<$B§.§0"s§.eventName);
               break;
            case "ALL_EXTRABIRD_TNT":
               _loc3_.push(§<$B§.§`"K§.eventName);
               _loc3_.push(§<$B§.§5#J§.eventName);
               _loc3_.push(§<$B§.§+"4§.eventName);
               _loc3_.push(§<$B§.§<$§.eventName);
               _loc3_.push(§<$B§.§ !n§.eventName);
               _loc3_.push(§<$B§.§[D§.eventName);
               _loc3_.push(§<$B§.§0"s§.eventName);
               _loc3_.push(§<$B§.§^!n§.eventName);
               break;
            case "ALL_MUSHROOM":
               _loc3_.push(§<$B§.§`"K§.eventName);
               _loc3_.push(§<$B§.§5#J§.eventName);
               _loc3_.push(§<$B§.§+"4§.eventName);
               _loc3_.push(§<$B§.§<$§.eventName);
               _loc3_.push(§<$B§.§ !n§.eventName);
               _loc3_.push(§<$B§.§[D§.eventName);
               _loc3_.push(§<$B§.§0"s§.eventName);
               _loc3_.push(§<$B§.§!"C§.eventName);
               break;
            case §<$B§.§,"S§.eventName:
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
            AngryBirdsBase.singleton.§8q§.§8#g§(_loc3_,true,true,true,true);
         }
         return _loc3_.length > 0;
      }
      
      public static function §0"<§() : void
      {
         AngryBirdsBase.singleton.§8q§.§0"<§();
      }
      
      protected static function get userProgress() : § !C§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § !C§;
      }
      
      override protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §?!y§
      {
         return new §&" §(§4!B§,param4,param1,param2,§"r§,param3);
      }
   }
}
