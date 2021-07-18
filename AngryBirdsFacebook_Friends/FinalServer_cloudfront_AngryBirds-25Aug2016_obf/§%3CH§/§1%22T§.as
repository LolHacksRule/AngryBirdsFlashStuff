package §<H§
{
   import §!!B§.§7#<§;
   import §%$!§.§,"n§;
   import §&#k§.§9"?§;
   import §&#k§.§="F§;
   import §&#k§.§="`§;
   import §&#k§.§@X§;
   import §'"-§.§`j§;
   import §^!,§.;
   import §^!,§.§8!H§;
   import flash.display.MovieClip;
   
   public class §1"T§ extends §="`§
   {
       
      
      public function §1"T§(param1:§#9§, param2:§,"n§, param3:int, param4:§="F§ = null, param5:§9"?§ = null, param6:§@X§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public static function showTutorials(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc3_:§="`§ = AngryBirdsBase.singleton.§<w§;
         var _loc4_:String = !!param2 ? §?!z§.§`#h§ : §?!z§.§8!#§;
         var _loc5_:Vector.<String> = _loc3_.§8#[§.getTutorialNamesForMapping(_loc4_);
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
            AngryBirdsBase.singleton.§<w§.§4j§(_loc5_,true,true,true,true);
         }
      }
      
      public static function §4"m§(param1:String, param2:Boolean = false) : Boolean
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
               _loc3_.push(§`j§.§@!V§.eventName);
               _loc3_.push(§`j§.§5"j§.eventName);
               _loc3_.push(§`j§.§6#z§.eventName);
               _loc3_.push(§`j§.§-"f§.eventName);
               _loc3_.push(§`j§.§-"5§.eventName);
               break;
            case "ALL_EXTRABIRD":
               _loc3_.push(§`j§.§@!V§.eventName);
               _loc3_.push(§`j§.§5"j§.eventName);
               _loc3_.push(§`j§.§6#z§.eventName);
               _loc3_.push(§`j§.§-"f§.eventName);
               _loc3_.push(§`j§.§-"5§.eventName);
               _loc3_.push(§`j§.§="-§.eventName);
               break;
            case "ALL_TOURNAMENT":
               _loc3_.push(§`j§.§5"j§.eventName);
               _loc3_.push(§`j§.§6#z§.eventName);
               _loc3_.push(§`j§.§-"f§.eventName);
               _loc3_.push(§`j§.§-"5§.eventName);
               _loc3_.push(§`j§.§="-§.eventName);
               break;
            case "ALL_EXTRABIRD_TNT":
               _loc3_.push(§`j§.§@!V§.eventName);
               _loc3_.push(§`j§.§5"j§.eventName);
               _loc3_.push(§`j§.§6#z§.eventName);
               _loc3_.push(§`j§.§-"f§.eventName);
               _loc3_.push(§`j§.§-"5§.eventName);
               _loc3_.push(§`j§.§="-§.eventName);
               _loc3_.push(§`j§.§?O§.eventName);
               break;
            case "ALL_MUSHROOM":
               _loc3_.push(§`j§.§@!V§.eventName);
               _loc3_.push(§`j§.§5"j§.eventName);
               _loc3_.push(§`j§.§6#z§.eventName);
               _loc3_.push(§`j§.§-"f§.eventName);
               _loc3_.push(§`j§.§-"5§.eventName);
               _loc3_.push(§`j§.§="-§.eventName);
               _loc3_.push(§`j§.§+"4§.eventName);
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
            AngryBirdsBase.singleton.§<w§.§4j§(_loc3_,true,true,true,true);
         }
         return _loc3_.length > 0;
      }
      
      public static function §]"!§() : void
      {
         AngryBirdsBase.singleton.§<w§.§]"!§();
      }
      
      protected static function get userProgress() : §7#<§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §7#<§;
      }
      
      override protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §8!H§
      {
         return new §0!0§(§]"E§,param4,param1,param2,§%!?§,param3);
      }
   }
}
