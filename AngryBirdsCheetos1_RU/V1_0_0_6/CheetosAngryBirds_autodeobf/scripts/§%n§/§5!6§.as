package §%n§
{
   import §'D§.§8e§;
   import §2>§.§?!1§;
   import §<J§.§&L§;
   import flash.utils.Dictionary;
   
   public class §5!6§
   {
      
      public static var §6=§:XML;
      
      public static var §;l§:XML;
      
      public static var §[!Y§:Dictionary = new Dictionary();
      
      public static var §`!8§:Array;
       
      
      public function §5!6§()
      {
         super();
      }
      
      public static function §3!D§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §6=§ = param1;
         §;l§ = param2;
         §0"§.§[o§(§6=§.Item_Materials,§6=§.Material_Damage_Multipliers,§6=§.Material_Velocity_Multipliers);
         §&`§.§=![§(§6=§.Item_Resources_Sounds);
         §1F§.§]!O§(§6=§.Item_Shapes);
         §&L§.§<!W§(§;l§.Backgrounds);
         §[!Y§ = new Dictionary();
         §`!8§ = new Array();
         for each(_loc3_ in §6=§.Items.Item)
         {
            §`!8§.push(_loc3_.@id);
            §6!Y§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §+^§(§6=§.SoundChannels);
      }
      
      public static function §6!Y§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §[!Y§[param1.toLowerCase()] = new §<>§(param1,param2,§0"§.§2k§(param3),§&`§.§?P§(param4),!!param5 ? §1F§.§"!-§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §,Q§(param1:String) : §<>§
      {
         var _loc2_:§<>§ = §[!Y§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §8e§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §@X§() : Array
      {
         return §`!8§;
      }
      
      public static function §>9§(param1:String) : Array
      {
         var _loc3_:§<>§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §[!Y§)
         {
            if(_loc3_.§%l§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§4u§;
            }
         }
         return _loc2_;
      }
      
      public static function § !4§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §+^§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §8e§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §8e§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §8e§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §?!1§.§5!D§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §3!#§(param1:String) : Boolean
      {
         var _loc2_:§<>§ = §,Q§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §4Q§).§3!$§[§4Q§.§3g§] == §4Q§.§#!%§;
         }
         return true;
      }
   }
}
