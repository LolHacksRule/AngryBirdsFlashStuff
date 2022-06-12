package §'"6§
{
   import §!#C§.§#H§;
   import §-;§.§+"d§;
   import §0!s§.§5!-§;
   import §0!s§.§6!e§;
   import §<#o§.§,#O§;
   import §<#o§.§2!J§;
   import §<#o§.§3"3§;
   import §<#o§.§3#j§;
   import §^"H§.§]!l§;
   import flash.display.MovieClip;
   
   public class §,R§ extends §,#O§
   {
       
      
      public function §,R§(param1:§6!e§, param2:§#H§, param3:int, param4:§2!J§ = null, param5:§3#j§ = null, param6:§3"3§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public static function showTutorials(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc3_:§,#O§ = AngryBirdsBase.singleton.§#$D§;
         var _loc4_:String = !!param2 ? §`#D§.§@$>§ : §`#D§.§ "Z§;
         var _loc5_:Vector.<String> = _loc3_.§9"x§.getTutorialNamesForMapping(_loc4_);
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
            AngryBirdsBase.singleton.§#$D§.§%""§(_loc5_,true,true,true,true);
         }
      }
      
      public static function §>#?§(param1:String, param2:Boolean = false) : Boolean
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
               _loc3_.push(§+"d§.§ !T§.eventName);
               _loc3_.push(§+"d§.§&!w§.eventName);
               _loc3_.push(§+"d§.§1J§.eventName);
               _loc3_.push(§+"d§.§[p§.eventName);
               _loc3_.push(§+"d§.§#T§.eventName);
               _loc3_.push(§+"d§.§?"$§.eventName);
               break;
            case "ALL_EXTRABIRD":
               _loc3_.push(§+"d§.§ !T§.eventName);
               _loc3_.push(§+"d§.§&!w§.eventName);
               _loc3_.push(§+"d§.§1J§.eventName);
               _loc3_.push(§+"d§.§[p§.eventName);
               _loc3_.push(§+"d§.§#T§.eventName);
               _loc3_.push(§+"d§.§?"$§.eventName);
               _loc3_.push(§+"d§.§]#_§.eventName);
               break;
            case "ALL_TOURNAMENT":
               _loc3_.push(§+"d§.§&!w§.eventName);
               _loc3_.push(§+"d§.§1J§.eventName);
               _loc3_.push(§+"d§.§[p§.eventName);
               _loc3_.push(§+"d§.§#T§.eventName);
               _loc3_.push(§+"d§.§?"$§.eventName);
               _loc3_.push(§+"d§.§]#_§.eventName);
               break;
            case "ALL_EXTRABIRD_TNT":
               _loc3_.push(§+"d§.§ !T§.eventName);
               _loc3_.push(§+"d§.§&!w§.eventName);
               _loc3_.push(§+"d§.§1J§.eventName);
               _loc3_.push(§+"d§.§[p§.eventName);
               _loc3_.push(§+"d§.§#T§.eventName);
               _loc3_.push(§+"d§.§?"$§.eventName);
               _loc3_.push(§+"d§.§]#_§.eventName);
               _loc3_.push(§+"d§.§!"§.eventName);
               break;
            case "ALL_MUSHROOM":
               _loc3_.push(§+"d§.§ !T§.eventName);
               _loc3_.push(§+"d§.§&!w§.eventName);
               _loc3_.push(§+"d§.§1J§.eventName);
               _loc3_.push(§+"d§.§[p§.eventName);
               _loc3_.push(§+"d§.§#T§.eventName);
               _loc3_.push(§+"d§.§?"$§.eventName);
               _loc3_.push(§+"d§.§]#_§.eventName);
               _loc3_.push(§+"d§.§,!$§.eventName);
               break;
            case §+"d§.§true §.eventName:
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
            AngryBirdsBase.singleton.§#$D§.§%""§(_loc3_,true,true,true,true);
         }
         return _loc3_.length > 0;
      }
      
      public static function §+g§() : void
      {
         AngryBirdsBase.singleton.§#$D§.§+g§();
      }
      
      protected static function get userProgress() : §]!l§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §]!l§;
      }
      
      override protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §5!-§
      {
         return new §1D§(§&"'§,param4,param1,param2,§&"b§,param3);
      }
   }
}
