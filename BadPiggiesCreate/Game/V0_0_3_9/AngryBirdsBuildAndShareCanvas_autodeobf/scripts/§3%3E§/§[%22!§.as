package §3>§
{
   import §6p§.§'!B§;
   import §<!x§.§7u§;
   import §@!;§.§&F§;
   import flash.utils.Dictionary;
   
   public class §["!§
   {
      
      public static var § !v§:XML;
      
      public static var §?!,§:XML;
      
      public static var §7!z§:Dictionary = new Dictionary();
      
      public static var §9!v§:Array;
       
      
      public function §["!§()
      {
         super();
      }
      
      public static function §?!D§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         § !v§ = param1;
         §?!,§ = param2;
         §;!r§.§[i§(§ !v§.Item_Materials,§ !v§.Material_Damage_Multipliers,§ !v§.Material_Velocity_Multipliers);
         §6"!§.§[=§(§ !v§.Item_Resources_Sounds);
         §8!+§.§8!P§(§ !v§.Item_Shapes);
         §7u§.§""1§(§?!,§.Backgrounds);
         §7!z§ = new Dictionary();
         §9!v§ = new Array();
         for each(_loc3_ in § !v§.Items.Item)
         {
            §9!v§.push(_loc3_.@id);
            §;!7§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §&'§(§ !v§.SoundChannels);
      }
      
      public static function §;!7§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §7!z§[param1.toLowerCase()] = new §=!f§(param1,param2,§;!r§.§^!W§(param3),§6"!§.§^M§(param4),!!param5 ? §8!+§.§6i§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §+!s§(param1:String) : §=!f§
      {
         var _loc2_:§=!f§ = §7!z§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §&F§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §'"5§() : Array
      {
         return §9!v§;
      }
      
      public static function §7i§(param1:String) : Array
      {
         var _loc3_:§=!f§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §7!z§)
         {
            if(_loc3_.§+!5§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§@!'§;
            }
         }
         return _loc2_;
      }
      
      public static function §3h§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §&'§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §&F§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §&F§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §&F§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §'!B§.§#3§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §=#§(param1:String) : Boolean
      {
         var _loc2_:§=!f§ = §+!s§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §>!y§).§2_§[§>!y§.§"!o§] == §>!y§.§%I§;
         }
         return true;
      }
   }
}
