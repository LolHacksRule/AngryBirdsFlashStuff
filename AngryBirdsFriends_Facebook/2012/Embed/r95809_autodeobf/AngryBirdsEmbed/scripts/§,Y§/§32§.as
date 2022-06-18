package §,Y§
{
   import §1!8§.§;!>§;
   import §2x§.§'!@§;
   import §>0§.§+!1§;
   import flash.utils.Dictionary;
   
   public class §32§
   {
      
      public static var §8r§:XML;
      
      public static var §4!'§:XML;
      
      public static var §7A§:Dictionary = new Dictionary();
      
      public static var §;W§:Array;
       
      
      public function §32§()
      {
         super();
      }
      
      public static function §#u§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §8r§ = param1;
         §4!'§ = param2;
         §,5§.§?G§(§8r§.Item_Materials,§8r§.Material_Damage_Multipliers,§8r§.Material_Velocity_Multipliers);
         §7!8§.§@0§(§8r§.Item_Resources_Sounds);
         §&D§.§&e§(§8r§.Item_Shapes);
         §+!1§.§?Z§(§4!'§.Backgrounds);
         §7A§ = new Dictionary();
         §;W§ = new Array();
         for each(_loc3_ in §8r§.Items.Item)
         {
            §;W§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §&!-§(§8r§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §7A§[param1.toLowerCase()] = new §%[§(param1,param2,§,5§.§if §(param3),§7!8§.§try §(param4),!!param5 ? §&D§.§^u§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §&V§(param1:String) : §%[§
      {
         var _loc2_:§%[§ = §7A§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §'!@§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §5C§() : Array
      {
         return §;W§;
      }
      
      public static function §@!%§(param1:String) : Array
      {
         var _loc3_:§%[§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §7A§)
         {
            if(_loc3_.§4h§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§5!#§;
            }
         }
         return _loc2_;
      }
      
      public static function §;_§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §&!-§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §'!@§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §'!@§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §'!@§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §;!>§.§]t§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §?!2§(param1:String) : Boolean
      {
         var _loc2_:§%[§ = §&V§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §]b§).§%b§[§]b§.§8O§] == §]b§.§5!@§;
         }
         return true;
      }
   }
}
