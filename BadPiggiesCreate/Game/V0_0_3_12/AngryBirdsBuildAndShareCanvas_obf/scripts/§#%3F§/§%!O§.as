package §#?§
{
   import §"p§.§@8§;
   import §#I§.§4";§;
   import §%B§.§^k§;
   import flash.utils.Dictionary;
   
   public class §%!O§
   {
      
      public static var §&z§:XML;
      
      public static var §0!h§:XML;
      
      public static var §@"9§:Dictionary = new Dictionary();
      
      public static var §^3§:Array;
       
      
      public function §%!O§()
      {
         super();
      }
      
      public static function §1!f§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §&z§ = param1;
         §0!h§ = param2;
         §^!V§.§2y§(§&z§.Item_Materials,§&z§.Material_Damage_Multipliers,§&z§.Material_Velocity_Multipliers);
         §2j§.§#c§(§&z§.Item_Resources_Sounds);
         §`L§.§5"5§(§&z§.Item_Shapes);
         §4";§.§80§(§0!h§.Backgrounds);
         §@"9§ = new Dictionary();
         §^3§ = new Array();
         for each(_loc3_ in §&z§.Items.Item)
         {
            §^3§.push(_loc3_.@id);
            §@"§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §&!o§(§&z§.SoundChannels);
      }
      
      public static function §@"§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §@"9§[param1.toLowerCase()] = new §4">§(param1,param2,§^!V§.§-!y§(param3),§2j§.§>S§(param4),!!param5 ? §`L§.§4@§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §2<§(param1:String) : §4">§
      {
         var _loc2_:§4">§ = §@"9§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §@8§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §?&§() : Array
      {
         return §^3§;
      }
      
      public static function §4!F§(param1:String) : Array
      {
         var _loc3_:§4">§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@"9§)
         {
            if(_loc3_.§^X§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§%!t§;
            }
         }
         return _loc2_;
      }
      
      public static function §+P§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §&!o§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §@8§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §@8§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §@8§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §^k§.§>7§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §="'§(param1:String) : Boolean
      {
         var _loc2_:§4">§ = §2<§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §8!§).mValues[§8!§.§<F§] == §8!§.§9!$§;
         }
         return true;
      }
   }
}
