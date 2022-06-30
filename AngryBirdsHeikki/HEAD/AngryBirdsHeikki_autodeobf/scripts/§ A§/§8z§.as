package § A§
{
   import §&!b§.§ c§;
   import §+!I§.§]4§;
   import §^f§.§<q§;
   import flash.utils.Dictionary;
   
   public class §8z§
   {
      
      public static var §<!Z§:XML;
      
      public static var §8P§:XML;
      
      public static var §@!F§:Dictionary = new Dictionary();
      
      public static var §&!O§:Array;
       
      
      public function §8z§()
      {
         super();
      }
      
      public static function §7S§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §<!Z§ = param1;
         §8P§ = param2;
         §"!L§.§<4§(§<!Z§.Item_Materials,§<!Z§.Material_Damage_Multipliers,§<!Z§.Material_Velocity_Multipliers);
         §@!f§.§"g§(§<!Z§.Item_Resources_Sounds);
         §^h§.§=!F§(§<!Z§.Item_Shapes);
         §]4§.§'!]§(§8P§.Backgrounds);
         §@!F§ = new Dictionary();
         §&!O§ = new Array();
         for each(_loc3_ in §<!Z§.Items.Item)
         {
            §&!O§.push(_loc3_.@id);
            §4!'§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §1!0§(§<!Z§.SoundChannels);
      }
      
      public static function §4!'§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §@!F§[param1.toLowerCase()] = new §-!E§(param1,param2,§"!L§.§5!E§(param3),§@!f§.§6r§(param4),!!param5 ? §^h§.§40§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §3Z§(param1:String) : §-!E§
      {
         var _loc2_:§-!E§ = §@!F§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         § c§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §^x§() : Array
      {
         return §&!O§;
      }
      
      public static function §5!P§(param1:String) : Array
      {
         var _loc3_:§-!E§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@!F§)
         {
            if(_loc3_.§7s§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§ [§;
            }
         }
         return _loc2_;
      }
      
      public static function §,h§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §1!0§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               § c§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               § c§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               § c§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §<q§.§5i§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §]!0§(param1:String) : Boolean
      {
         var _loc2_:§-!E§ = §3Z§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §&!#§).mValues[§&!#§.§]a§] == §&!#§.§%5§;
         }
         return true;
      }
   }
}
