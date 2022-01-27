package §2G§
{
   import §&^§.§[!7§;
   import §5!G§.§>X§;
   import §`K§.§ L§;
   import flash.utils.Dictionary;
   
   public class §>U§
   {
      
      public static var §#!R§:XML;
      
      public static var §;7§:XML;
      
      public static var §`!O§:Dictionary = new Dictionary();
      
      public static var §,!@§:Array;
       
      
      public function §>U§()
      {
         super();
      }
      
      public static function §+Q§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §#!R§ = param1;
         §;7§ = param2;
         §@6§.§8s§(§#!R§.Item_Materials,§#!R§.Material_Damage_Multipliers,§#!R§.Material_Velocity_Multipliers);
         §"v§.§3B§(§#!R§.Item_Resources_Sounds);
         §!!8§.§;H§(§#!R§.Item_Shapes);
         §>X§.§=M§(§;7§.Backgrounds);
         §`!O§ = new Dictionary();
         §,!@§ = new Array();
         for each(_loc3_ in §#!R§.Items.Item)
         {
            §,!@§.push(_loc3_.@id);
            §"g§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §<!D§(§#!R§.SoundChannels);
      }
      
      public static function §"g§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §`!O§[param1.toLowerCase()] = new §5!1§(param1,param2,§@6§.§6k§(param3),§"v§.§^!H§(param4),!!param5 ? §!!8§.§5L§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §=v§(param1:String) : §5!1§
      {
         var _loc2_:§5!1§ = §`!O§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         § L§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §<v§() : Array
      {
         return §,!@§;
      }
      
      public static function §4=§(param1:String) : Array
      {
         var _loc3_:§5!1§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §`!O§)
         {
            if(_loc3_.§"9§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§4V§;
            }
         }
         return _loc2_;
      }
      
      public static function §19§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §<!D§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               § L§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               § L§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               § L§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §[!7§.§'<§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §^!Q§(param1:String) : Boolean
      {
         var _loc2_:§5!1§ = §=v§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §,6§).§"!;§[§,6§.§ "§] == §,6§.§"I§;
         }
         return true;
      }
   }
}
