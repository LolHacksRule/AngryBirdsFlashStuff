package §<%§
{
   import §0!?§.§'!$§;
   import §1k§.§%4§;
   import §`!$§.§?W§;
   import flash.utils.Dictionary;
   
   public class §%;§
   {
      
      public static var §>"§:XML;
      
      public static var §,"%§:XML;
      
      public static var §8%§:Dictionary = new Dictionary();
      
      public static var §+>§:Array;
       
      
      public function §%;§()
      {
         super();
      }
      
      public static function §4w§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §>"§ = param1;
         §,"%§ = param2;
         §8"6§.§#<§(§>"§.Item_Materials,§>"§.Material_Damage_Multipliers,§>"§.Material_Velocity_Multipliers);
         §""A§.§!+§(§>"§.Item_Resources_Sounds);
         §]%§.§7"9§(§>"§.Item_Shapes);
         §?W§.§ "@§(§,"%§.Backgrounds);
         §8%§ = new Dictionary();
         §+>§ = new Array();
         for each(_loc3_ in §>"§.Items.Item)
         {
            §+>§.push(_loc3_.@id);
            §,Z§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         § null§(§>"§.SoundChannels);
      }
      
      public static function §,Z§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §8%§[param1.toLowerCase()] = new §<`§(param1,param2,§8"6§.§4#§(param3),§""A§.§>"=§(param4),!!param5 ? §]%§.§ _§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §8!]§(param1:String) : §<`§
      {
         var _loc2_:§<`§ = §8%§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §'!$§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §4!p§() : Array
      {
         return §+>§;
      }
      
      public static function §0!n§(param1:String) : Array
      {
         var _loc3_:§<`§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §8%§)
         {
            if(_loc3_.§;F§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§+%§;
            }
         }
         return _loc2_;
      }
      
      public static function §7W§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function § null§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §'!$§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §'!$§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §'!$§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §%4§.§>$§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §-#§(param1:String) : Boolean
      {
         var _loc2_:§<`§ = §8!]§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §[p§).§,!D§[§[p§.§1!$§] == §[p§.§#w§;
         }
         return true;
      }
   }
}
