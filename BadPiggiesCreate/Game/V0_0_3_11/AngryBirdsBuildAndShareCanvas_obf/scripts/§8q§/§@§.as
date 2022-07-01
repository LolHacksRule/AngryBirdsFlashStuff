package §8q§
{
   import §6d§.§&`§;
   import §;X§.§ do§;
   import §?!k§.§0!t§;
   import flash.utils.Dictionary;
   
   public class §@§
   {
      
      public static var §>I§:XML;
      
      public static var §6y§:XML;
      
      public static var §`6§:Dictionary = new Dictionary();
      
      public static var §9"&§:Array;
       
      
      public function §@§()
      {
         super();
      }
      
      public static function § E§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §>I§ = param1;
         §6y§ = param2;
         §3!m§.§[^§(§>I§.Item_Materials,§>I§.Material_Damage_Multipliers,§>I§.Material_Velocity_Multipliers);
         §8!J§.§'"0§(§>I§.Item_Resources_Sounds);
         §#!R§.§4§(§>I§.Item_Shapes);
         §&`§.§@![§(§6y§.Backgrounds);
         §`6§ = new Dictionary();
         §9"&§ = new Array();
         for each(_loc3_ in §>I§.Items.Item)
         {
            §9"&§.push(_loc3_.@id);
            §""9§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §@N§(§>I§.SoundChannels);
      }
      
      public static function §""9§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §`6§[param1.toLowerCase()] = new §6n§(param1,param2,§3!m§.§"!j§(param3),§8!J§.§8!j§(param4),!!param5 ? §#!R§.§&r§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §4"#§(param1:String) : §6n§
      {
         var _loc2_:§6n§ = §`6§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         § do§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §3u§() : Array
      {
         return §9"&§;
      }
      
      public static function §'y§(param1:String) : Array
      {
         var _loc3_:§6n§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §`6§)
         {
            if(_loc3_.§-A§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§"g§;
            }
         }
         return _loc2_;
      }
      
      public static function §`M§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §@N§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               § do§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               § do§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               § do§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §0!t§.§2Q§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §'"+§(param1:String) : Boolean
      {
         var _loc2_:§6n§ = §4"#§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §=Y§).§&!>§[§=Y§.§9"5§] == §=Y§.§8X§;
         }
         return true;
      }
   }
}
