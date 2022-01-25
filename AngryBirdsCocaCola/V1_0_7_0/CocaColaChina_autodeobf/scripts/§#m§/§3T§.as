package §#m§
{
   import §7m§.§7I§;
   import §?@§.§"]§;
   import §`! §.§1!#§;
   import flash.utils.Dictionary;
   
   public class §3T§
   {
      
      public static var § R§:XML;
      
      public static var §>t§:XML;
      
      public static var § 7§:Dictionary = new Dictionary();
      
      public static var § g§:Array;
       
      
      public function §3T§()
      {
         super();
      }
      
      public static function §>,§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         § R§ = param1;
         §>t§ = param2;
         §'!P§.§'>§(§ R§.Item_Materials,§ R§.Material_Damage_Multipliers,§ R§.Material_Velocity_Multipliers);
         §=!Z§.§5!§(§ R§.Item_Resources_Sounds);
         § ]§.§;!#§(§ R§.Item_Shapes);
         §1!#§.§"!6§(§>t§.Backgrounds);
         § 7§ = new Dictionary();
         § g§ = new Array();
         for each(_loc3_ in § R§.Items.Item)
         {
            § g§.push(_loc3_.@id);
            §,W§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §#!%§(§ R§.SoundChannels);
      }
      
      public static function §,W§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         § 7§[param1.toLowerCase()] = new §34§(param1,param2,§'!P§.§2k§(param3),§=!Z§.§"!W§(param4),!!param5 ? § ]§.§<!>§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §,!G§(param1:String) : §34§
      {
         var _loc2_:§34§ = § 7§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §"]§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §^p§() : Array
      {
         return § g§;
      }
      
      public static function §[!P§(param1:String) : Array
      {
         var _loc3_:§34§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in § 7§)
         {
            if(_loc3_.§-9§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§!I§;
            }
         }
         return _loc2_;
      }
      
      public static function §"!C§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §#!%§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §"]§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §"]§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §"]§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §7I§.§<!P§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §@i§(param1:String) : Boolean
      {
         var _loc2_:§34§ = §,!G§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §&r§).mValues[§&r§.§?+§] == §&r§.§4D§;
         }
         return true;
      }
   }
}
