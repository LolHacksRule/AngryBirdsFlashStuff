package §5!g§
{
   import § #j§.§#"H§;
   import § #j§.§6z§;
   import § #j§.§[#=§;
   import § #j§.§]"n§;
   import § $0§.§,#@§;
   import § $0§.§=!C§;
   import §,#,§.§3#J§;
   import §9T§.§ "T§;
   import §`#c§.§8#B§;
   import flash.display.MovieClip;
   
   public class §;#G§ extends §#"H§
   {
       
      
      public function §;#G§(param1:§=!C§, param2:§3#J§, param3:int, param4:§]"n§ = null, param5:§6z§ = null, param6:§[#=§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public static function showTutorials(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc3_:§#"H§ = AngryBirdsBase.singleton.§,!W§;
         var _loc4_:String = !!param2 ? §2[§.§0!N§ : §2[§.§9%§;
         var _loc5_:Vector.<String> = _loc3_.§'"7§.getTutorialNamesForMapping(_loc4_);
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
            AngryBirdsBase.singleton.§,!W§.§-#V§(_loc5_,true,true,true,true);
         }
      }
      
      public static function §?!g§(param1:String, param2:Boolean = false) : Boolean
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
               _loc3_.push(§ "T§.§="E§.eventName);
               _loc3_.push(§ "T§.§8"8§.eventName);
               _loc3_.push(§ "T§.§&!C§.eventName);
               _loc3_.push(§ "T§.§=#x§.eventName);
               _loc3_.push(§ "T§.§4@§.eventName);
               _loc3_.push(§ "T§.§#"9§.eventName);
               break;
            case "ALL_EXTRABIRD":
               _loc3_.push(§ "T§.§="E§.eventName);
               _loc3_.push(§ "T§.§8"8§.eventName);
               _loc3_.push(§ "T§.§&!C§.eventName);
               _loc3_.push(§ "T§.§=#x§.eventName);
               _loc3_.push(§ "T§.§4@§.eventName);
               _loc3_.push(§ "T§.§#"9§.eventName);
               _loc3_.push(§ "T§.§7z§.eventName);
               break;
            case "ALL_TOURNAMENT":
               _loc3_.push(§ "T§.§8"8§.eventName);
               _loc3_.push(§ "T§.§&!C§.eventName);
               _loc3_.push(§ "T§.§=#x§.eventName);
               _loc3_.push(§ "T§.§4@§.eventName);
               _loc3_.push(§ "T§.§#"9§.eventName);
               _loc3_.push(§ "T§.§7z§.eventName);
               break;
            case "ALL_EXTRABIRD_TNT":
               _loc3_.push(§ "T§.§="E§.eventName);
               _loc3_.push(§ "T§.§8"8§.eventName);
               _loc3_.push(§ "T§.§&!C§.eventName);
               _loc3_.push(§ "T§.§=#x§.eventName);
               _loc3_.push(§ "T§.§4@§.eventName);
               _loc3_.push(§ "T§.§#"9§.eventName);
               _loc3_.push(§ "T§.§7z§.eventName);
               _loc3_.push(§ "T§.§,",§.eventName);
               break;
            case "ALL_MUSHROOM":
               _loc3_.push(§ "T§.§="E§.eventName);
               _loc3_.push(§ "T§.§8"8§.eventName);
               _loc3_.push(§ "T§.§&!C§.eventName);
               _loc3_.push(§ "T§.§=#x§.eventName);
               _loc3_.push(§ "T§.§4@§.eventName);
               _loc3_.push(§ "T§.§#"9§.eventName);
               _loc3_.push(§ "T§.§7z§.eventName);
               _loc3_.push(§ "T§.§=$%§.eventName);
               break;
            case § "T§.§'!+§.eventName:
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
            AngryBirdsBase.singleton.§,!W§.§-#V§(_loc3_,true,true,true,true);
         }
         return _loc3_.length > 0;
      }
      
      public static function §<!"§() : void
      {
         AngryBirdsBase.singleton.§,!W§.§<!"§();
      }
      
      protected static function get userProgress() : §8#B§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §8#B§;
      }
      
      override protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §,#@§
      {
         return new §9#L§(§'!r§,param4,param1,param2,§^#x§,param3);
      }
   }
}
