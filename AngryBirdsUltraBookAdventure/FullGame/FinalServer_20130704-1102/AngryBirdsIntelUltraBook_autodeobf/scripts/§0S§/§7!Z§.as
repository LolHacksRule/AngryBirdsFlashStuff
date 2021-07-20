package §0S§
{
   import §1!B§.§<m§;
   import §2@§.§%E§;
   import §[!b§.§-!Q§;
   import flash.utils.Dictionary;
   
   public class §7!Z§
   {
      
      public static var §set §:XML;
      
      public static var §`S§:XML;
      
      public static var §&O§:Dictionary = new Dictionary();
      
      public static var §@!D§:Array;
       
      
      public function §7!Z§()
      {
         super();
      }
      
      public static function §=$§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §set § = param1;
         §`S§ = param2;
         §&"$§.§!L§(§set §.Item_Materials,§set §.Material_Damage_Multipliers,§set §.Material_Velocity_Multipliers);
         §90§.§>[§(§set §.Item_Resources_Sounds);
         §^s§.§78§(§set §.Item_Shapes);
         §%E§.§9I§(§`S§.Backgrounds);
         §&O§ = new Dictionary();
         §@!D§ = new Array();
         for each(_loc3_ in §set §.Items.Item)
         {
            §@!D§.push(_loc3_.@id);
            §8!q§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §%!'§(§set §.SoundChannels);
      }
      
      public static function §8!q§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §&O§[param1.toLowerCase()] = new §4K§(param1,param2,§&"$§.§<!w§(param3),§90§.§6a§(param4),!!param5 ? §^s§.§%!>§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §`!H§(param1:String) : §4K§
      {
         var _loc2_:§4K§ = §&O§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §<m§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §="§() : Array
      {
         return §@!D§;
      }
      
      public static function §"!?§(param1:String) : Array
      {
         var _loc3_:§4K§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §&O§)
         {
            if(_loc3_.§^w§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§-!>§;
            }
         }
         return _loc2_;
      }
      
      public static function §-!!§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §%!'§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §<m§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §<m§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §<m§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §-!Q§.§"3§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §0!I§(param1:String) : Boolean
      {
         var _loc2_:§4K§ = §`!H§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as § L§).mValues[§ L§.§<"$§] == § L§.§@8§;
         }
         return true;
      }
   }
}
