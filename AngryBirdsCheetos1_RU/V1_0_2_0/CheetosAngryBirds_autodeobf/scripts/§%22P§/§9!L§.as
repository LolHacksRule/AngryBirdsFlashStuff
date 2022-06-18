package §"P§
{
   import §1o§.§'M§;
   import §=g§.§@!L§;
   import §^n§.§",§;
   import flash.utils.Dictionary;
   
   public class §9!L§
   {
      
      public static var §[n§:XML;
      
      public static var §!e§:XML;
      
      public static var §!h§:Dictionary = new Dictionary();
      
      public static var §<![§:Array;
       
      
      public function §9!L§()
      {
         super();
      }
      
      public static function §]![§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §[n§ = param1;
         §!e§ = param2;
         §8m§.§@X§(§[n§.Item_Materials,§[n§.Material_Damage_Multipliers,§[n§.Material_Velocity_Multipliers);
         §2r§.§>x§(§[n§.Item_Resources_Sounds);
         §;J§.§;!P§(§[n§.Item_Shapes);
         §",§.§=s§(§!e§.Backgrounds);
         §!h§ = new Dictionary();
         §<![§ = new Array();
         for each(_loc3_ in §[n§.Items.Item)
         {
            §<![§.push(_loc3_.@id);
            §%!S§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §?m§(§[n§.SoundChannels);
      }
      
      public static function §%!S§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §!h§[param1.toLowerCase()] = new §]5§(param1,param2,§8m§.§6!Y§(param3),§2r§.§0w§(param4),!!param5 ? §;J§.§&U§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §=C§(param1:String) : §]5§
      {
         var _loc2_:§]5§ = §!h§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §@!L§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §3X§() : Array
      {
         return §<![§;
      }
      
      public static function §6[§(param1:String) : Array
      {
         var _loc3_:§]5§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §!h§)
         {
            if(_loc3_.§"R§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§10§;
            }
         }
         return _loc2_;
      }
      
      public static function §?!H§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §?m§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §@!L§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §@!L§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §@!L§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §'M§.§4![§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §import§(param1:String) : Boolean
      {
         var _loc2_:§]5§ = §=C§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §,!I§).§6E§[§,!I§.§!x§] == §,!I§.§^a§;
         }
         return true;
      }
   }
}
