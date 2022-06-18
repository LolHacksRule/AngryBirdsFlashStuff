package §["r§
{
   import §#"H§.§ #P§;
   import §#"H§.§6#T§;
   import §#"H§.§=!<§;
   import §#"H§.§]#u§;
   import §&"J§.§<&§;
   import §;P§.§super§;
   import §<#m§.§!"<§;
   import §<#m§.§0r§;
   import §`M§.§6W§;
   import flash.display.MovieClip;
   
   public class §8`§ extends § #P§
   {
       
      
      public function §8`§(param1:§0r§, param2:§<&§, param3:int, param4:§]#u§ = null, param5:§=!<§ = null, param6:§6#T§ = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public static function showTutorials(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc3_:§ #P§ = AngryBirdsBase.singleton.§=#v§;
         var _loc4_:String = !!param2 ? §'E§.§ "w§ : §'E§.§[$4§;
         var _loc5_:Vector.<String> = _loc3_.§&$8§.getTutorialNamesForMapping(_loc4_);
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
            AngryBirdsBase.singleton.§=#v§.§1#Y§(_loc5_,true,true,true,true);
         }
      }
      
      public static function §="@§(param1:String, param2:Boolean = false) : Boolean
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
               _loc3_.push(§super§.§["0§.eventName);
               _loc3_.push(§super§.§+!d§.eventName);
               _loc3_.push(§super§.§@"B§.eventName);
               _loc3_.push(§super§.§&"l§.eventName);
               _loc3_.push(§super§.§!!y§.eventName);
               break;
            case "ALL_EXTRABIRD":
               _loc3_.push(§super§.§["0§.eventName);
               _loc3_.push(§super§.§+!d§.eventName);
               _loc3_.push(§super§.§@"B§.eventName);
               _loc3_.push(§super§.§&"l§.eventName);
               _loc3_.push(§super§.§!!y§.eventName);
               _loc3_.push(§super§.§#"[§.eventName);
               break;
            case "ALL_TOURNAMENT":
               _loc3_.push(§super§.§+!d§.eventName);
               _loc3_.push(§super§.§@"B§.eventName);
               _loc3_.push(§super§.§&"l§.eventName);
               _loc3_.push(§super§.§!!y§.eventName);
               _loc3_.push(§super§.§#"[§.eventName);
               break;
            case "ALL_EXTRABIRD_TNT":
               _loc3_.push(§super§.§["0§.eventName);
               _loc3_.push(§super§.§+!d§.eventName);
               _loc3_.push(§super§.§@"B§.eventName);
               _loc3_.push(§super§.§&"l§.eventName);
               _loc3_.push(§super§.§!!y§.eventName);
               _loc3_.push(§super§.§#"[§.eventName);
               _loc3_.push(§super§.§%#[§.eventName);
               break;
            case "ALL_MUSHROOM":
               _loc3_.push(§super§.§["0§.eventName);
               _loc3_.push(§super§.§+!d§.eventName);
               _loc3_.push(§super§.§@"B§.eventName);
               _loc3_.push(§super§.§&"l§.eventName);
               _loc3_.push(§super§.§!!y§.eventName);
               _loc3_.push(§super§.§#"[§.eventName);
               _loc3_.push(§super§.§9!T§.eventName);
               break;
            case §super§.§^!M§.eventName:
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
            AngryBirdsBase.singleton.§=#v§.§1#Y§(_loc3_,true,true,true,true);
         }
         return _loc3_.length > 0;
      }
      
      public static function §]=§() : void
      {
         AngryBirdsBase.singleton.§=#v§.§]=§();
      }
      
      protected static function get userProgress() : §6W§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §6W§;
      }
      
      override protected function getTutorialPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int) : §!"<§
      {
         return new §^"y§(§;!%§,param4,param1,param2,§@R§,param3);
      }
   }
}
