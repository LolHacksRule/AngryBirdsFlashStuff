package §,!C§
{
   import §#h§.§ !H§;
   import §8!>§.§ !4§;
   import §>K§.§9X§;
   import flash.utils.Dictionary;
   
   public class §0v§
   {
      
      public static var §8!G§:XML;
      
      public static var §2!;§:XML;
      
      public static var §@_§:Dictionary = new Dictionary();
      
      public static var §`F§:Array;
       
      
      public function §0v§()
      {
         super();
      }
      
      public static function §&M§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §8!G§ = param1;
         §2!;§ = param2;
         §<!'§.§!N§(§8!G§.Item_Materials,§8!G§.Material_Damage_Multipliers,§8!G§.Material_Velocity_Multipliers);
         §'&§.§'N§(§8!G§.Item_Resources_Sounds);
         §9b§.§%'§(§8!G§.Item_Shapes);
         § !4§.§2!0§(§2!;§.Backgrounds);
         §@_§ = new Dictionary();
         §`F§ = new Array();
         for each(_loc3_ in §8!G§.Items.Item)
         {
            §`F§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §,A§(§8!G§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §@_§[param1.toLowerCase()] = new §+X§(param1,param2,§<!'§.§"P§(param3),§'&§.§6B§(param4),!!param5 ? §9b§.§,W§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §&2§(param1:String) : §+X§
      {
         var _loc2_:§+X§ = §@_§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §9X§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §0!+§() : Array
      {
         return §`F§;
      }
      
      public static function §=7§(param1:String) : Array
      {
         var _loc3_:§+X§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@_§)
         {
            if(_loc3_.§4!§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§>!"§;
            }
         }
         return _loc2_;
      }
      
      public static function §[_§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §,A§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §9X§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §9X§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §9X§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            § !H§.§+z§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §5-§(param1:String) : Boolean
      {
         var _loc2_:§+X§ = §&2§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §8!3§).§"[§[§8!3§.§"!I§] == §8!3§.§%2§;
         }
         return true;
      }
   }
}
