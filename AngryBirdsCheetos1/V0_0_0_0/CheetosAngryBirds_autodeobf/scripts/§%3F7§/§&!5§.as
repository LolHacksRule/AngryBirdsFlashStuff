package §?7§
{
   import §%!$§.§=m§;
   import §3]§.§8[§;
   import §@,§.§4h§;
   import flash.utils.Dictionary;
   
   public class §&!5§
   {
      
      public static var §4&§:XML;
      
      public static var § !V§:XML;
      
      public static var §@k§:Dictionary = new Dictionary();
      
      public static var §!M§:Array;
       
      
      public function §&!5§()
      {
         super();
      }
      
      public static function §"F§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §4&§ = param1;
         § !V§ = param2;
         §;!<§.§%!-§(§4&§.Item_Materials,§4&§.Material_Damage_Multipliers,§4&§.Material_Velocity_Multipliers);
         § M§.§#n§(§4&§.Item_Resources_Sounds);
         §#!L§.§2!H§(§4&§.Item_Shapes);
         §8[§.§<F§(§ !V§.Backgrounds);
         §@k§ = new Dictionary();
         §!M§ = new Array();
         for each(_loc3_ in §4&§.Items.Item)
         {
            §!M§.push(_loc3_.@id);
            §`1§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §9!§(§4&§.SoundChannels);
      }
      
      public static function §`1§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §@k§[param1.toLowerCase()] = new §,!§(param1,param2,§;!<§.§<!2§(param3),§ M§.§;V§(param4),!!param5 ? §#!L§.§^6§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §;@§(param1:String) : §,!§
      {
         var _loc2_:§,!§ = §@k§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §4h§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §^!G§() : Array
      {
         return §!M§;
      }
      
      public static function §5!Y§(param1:String) : Array
      {
         var _loc3_:§,!§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@k§)
         {
            if(_loc3_.§=z§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§ h§;
            }
         }
         return _loc2_;
      }
      
      public static function §6K§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §9!§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §4h§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §4h§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §4h§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §=m§.§,!1§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §9x§(param1:String) : Boolean
      {
         var _loc2_:§,!§ = §;@§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §#!+§).§%W§[§#!+§.§"!Q§] == §#!+§.§#D§;
         }
         return true;
      }
   }
}
