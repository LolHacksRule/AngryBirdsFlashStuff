package §9!§
{
   import §!_§.§7!m§;
   import §'+§.§1u§;
   import §[!4§.§-#§;
   import flash.utils.Dictionary;
   
   public class §,!l§
   {
      
      public static var §^!,§:XML;
      
      public static var §%=§:XML;
      
      public static var §@!g§:Dictionary = new Dictionary();
      
      public static var §32§:Array;
       
      
      public function §,!l§()
      {
         super();
      }
      
      public static function §4]§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §^!,§ = param1;
         §%=§ = param2;
         §!C§.§!!I§(§^!,§.Item_Materials,§^!,§.Material_Damage_Multipliers,§^!,§.Material_Velocity_Multipliers);
         §1p§.§;G§(§^!,§.Item_Resources_Sounds);
         §^Y§.§31§(§^!,§.Item_Shapes);
         §7!m§.§'!`§(§%=§.Backgrounds);
         §@!g§ = new Dictionary();
         §32§ = new Array();
         for each(_loc3_ in §^!,§.Items.Item)
         {
            §32§.push(_loc3_.@id);
            §]!P§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §0§(§^!,§.SoundChannels);
      }
      
      public static function §]!P§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §@!g§[param1.toLowerCase()] = new §?g§(param1,param2,§!C§.§"E§(param3),§1p§.§super§(param4),!!param5 ? §^Y§.§[!!§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §<!<§(param1:String) : §?g§
      {
         var _loc2_:§?g§ = §@!g§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §1u§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §>!b§() : Array
      {
         return §32§;
      }
      
      public static function §"!P§(param1:String) : Array
      {
         var _loc3_:§?g§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@!g§)
         {
            if(_loc3_.§6!n§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§`!p§;
            }
         }
         return _loc2_;
      }
      
      public static function §%t§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §0§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §1u§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §1u§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §1u§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §-#§.§28§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §3!D§(param1:String) : Boolean
      {
         var _loc2_:§?g§ = §<!<§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §']§).mValues[§']§.§^Z§] == §']§.§5!U§;
         }
         return true;
      }
   }
}
