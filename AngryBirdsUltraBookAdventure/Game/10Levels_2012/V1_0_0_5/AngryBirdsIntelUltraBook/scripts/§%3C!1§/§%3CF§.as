package §<!1§
{
   import §"R§.§ !Q§;
   import §,!Q§.§ !P§;
   import §^_§.§!>§;
   import flash.utils.Dictionary;
   
   public class §<F§
   {
      
      public static var §+!0§:XML;
      
      public static var §=f§:XML;
      
      public static var §>!!§:Dictionary = new Dictionary();
      
      public static var §!!N§:Array;
       
      
      public function §<F§()
      {
         super();
      }
      
      public static function §'!w§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §+!0§ = param1;
         §=f§ = param2;
         §-!x§.§0b§(§+!0§.Item_Materials,§+!0§.Material_Damage_Multipliers,§+!0§.Material_Velocity_Multipliers);
         §6G§.§2l§(§+!0§.Item_Resources_Sounds);
         §5Q§.§?g§(§+!0§.Item_Shapes);
         § !P§.§<!v§(§=f§.Backgrounds);
         §>!!§ = new Dictionary();
         §!!N§ = new Array();
         for each(_loc3_ in §+!0§.Items.Item)
         {
            §!!N§.push(_loc3_.@id);
            §@W§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §#9§(§+!0§.SoundChannels);
      }
      
      public static function §@W§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §>!!§[param1.toLowerCase()] = new §9B§(param1,param2,§-!x§.§@1§(param3),§6G§.§]i§(param4),!!param5 ? §5Q§.§@!P§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §1]§(param1:String) : §9B§
      {
         var _loc2_:§9B§ = §>!!§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §!>§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §@!u§() : Array
      {
         return §!!N§;
      }
      
      public static function §&O§(param1:String) : Array
      {
         var _loc3_:§9B§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §>!!§)
         {
            if(_loc3_.§@§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§<!]§;
            }
         }
         return _loc2_;
      }
      
      public static function §<!j§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §#9§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §!>§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §!>§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §!>§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            § !Q§.§]!h§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §%!U§(param1:String) : Boolean
      {
         var _loc2_:§9B§ = §1]§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §0"§).§]!Z§[§0"§.§5"§] == §0"§.§5P§;
         }
         return true;
      }
   }
}
