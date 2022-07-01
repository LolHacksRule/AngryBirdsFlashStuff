package § ""§
{
   import §&W§.§7L§;
   import §;!@§.§>!%§;
   import §>Z§.§5;§;
   import flash.utils.Dictionary;
   
   public class §4!n§
   {
      
      public static var §5E§:XML;
      
      public static var §@S§:XML;
      
      public static var §[!P§:Dictionary = new Dictionary();
      
      public static var §@H§:Array;
       
      
      public function §4!n§()
      {
         super();
      }
      
      public static function §"&§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §5E§ = param1;
         §@S§ = param2;
         §^"!§.§[!§(§5E§.Item_Materials,§5E§.Material_Damage_Multipliers,§5E§.Material_Velocity_Multipliers);
         §+&§.§%q§(§5E§.Item_Resources_Sounds);
         § 9§.§+@§(§5E§.Item_Shapes);
         §>!%§.§,?§(§@S§.Backgrounds);
         §[!P§ = new Dictionary();
         §@H§ = new Array();
         for each(_loc3_ in §5E§.Items.Item)
         {
            §@H§.push(_loc3_.@id);
            §92§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §^"-§(§5E§.SoundChannels);
      }
      
      public static function §92§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §[!P§[param1.toLowerCase()] = new §]k§(param1,param2,§^"!§.§[Z§(param3),§+&§.§"!t§(param4),!!param5 ? § 9§.§%!N§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §]4§(param1:String) : §]k§
      {
         var _loc2_:§]k§ = §[!P§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §7L§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §@B§() : Array
      {
         return §@H§;
      }
      
      public static function §9§(param1:String) : Array
      {
         var _loc3_:§]k§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §[!P§)
         {
            if(_loc3_.§1P§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§=!+§;
            }
         }
         return _loc2_;
      }
      
      public static function §@b§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §^"-§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §7L§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §7L§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §7L§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §5;§.§9L§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §#!f§(param1:String) : Boolean
      {
         var _loc2_:§]k§ = §]4§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §7Q§).mValues[§7Q§.§'!Q§] == §7Q§.§!?§;
         }
         return true;
      }
   }
}
