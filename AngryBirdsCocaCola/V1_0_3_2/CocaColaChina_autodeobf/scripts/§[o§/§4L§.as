package §[o§
{
   import § !9§.§'!U§;
   import §#h§.§`0§;
   import §6!Q§.§7!7§;
   import flash.utils.Dictionary;
   
   public class §4L§
   {
      
      public static var §6N§:XML;
      
      public static var §9X§:XML;
      
      public static var § C§:Dictionary = new Dictionary();
      
      public static var §#1§:Array;
       
      
      public function §4L§()
      {
         super();
      }
      
      public static function §'S§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §6N§ = param1;
         §9X§ = param2;
         §5! §.§2,§(§6N§.Item_Materials,§6N§.Material_Damage_Multipliers,§6N§.Material_Velocity_Multipliers);
         § T§.§8a§(§6N§.Item_Resources_Sounds);
         §-!7§.§6+§(§6N§.Item_Shapes);
         §`0§.§4!N§(§9X§.Backgrounds);
         § C§ = new Dictionary();
         §#1§ = new Array();
         for each(_loc3_ in §6N§.Items.Item)
         {
            §#1§.push(_loc3_.@id);
            §>V§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §^!;§(§6N§.SoundChannels);
      }
      
      public static function §>V§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         § C§[param1.toLowerCase()] = new §9n§(param1,param2,§5! §.§7!2§(param3),§ T§.§2h§(param4),!!param5 ? §-!7§.§7M§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §+6§(param1:String) : §9n§
      {
         var _loc2_:§9n§ = § C§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §7!7§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §'!%§() : Array
      {
         return §#1§;
      }
      
      public static function §[!_§(param1:String) : Array
      {
         var _loc3_:§9n§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in § C§)
         {
            if(_loc3_.§]f§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§7!0§;
            }
         }
         return _loc2_;
      }
      
      public static function §9M§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §^!;§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §7!7§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §7!7§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §7!7§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §'!U§.§,m§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §%!A§(param1:String) : Boolean
      {
         var _loc2_:§9n§ = §+6§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §@N§).mValues[§@N§.§"`§] == §@N§.§5`§;
         }
         return true;
      }
   }
}
