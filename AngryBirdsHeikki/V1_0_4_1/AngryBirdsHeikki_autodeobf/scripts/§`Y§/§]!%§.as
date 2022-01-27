package §`Y§
{
   import §%!$§.§[Z§;
   import §0"§.§0m§;
   import §7h§.§7!"§;
   import flash.utils.Dictionary;
   
   public class §]!%§
   {
      
      public static var §3%§:XML;
      
      public static var §?4§:XML;
      
      public static var §0l§:Dictionary = new Dictionary();
      
      public static var §5N§:Array;
       
      
      public function §]!%§()
      {
         super();
      }
      
      public static function §>O§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §3%§ = param1;
         §?4§ = param2;
         §]r§.§^^§(§3%§.Item_Materials,§3%§.Material_Damage_Multipliers,§3%§.Material_Velocity_Multipliers);
         §4! §.§38§(§3%§.Item_Resources_Sounds);
         §[!;§.§+!!§(§3%§.Item_Shapes);
         §0m§.§"!E§(§?4§.Backgrounds);
         §0l§ = new Dictionary();
         §5N§ = new Array();
         for each(_loc3_ in §3%§.Items.Item)
         {
            §5N§.push(_loc3_.@id);
            § !@§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §"!O§(§3%§.SoundChannels);
      }
      
      public static function § !@§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §0l§[param1.toLowerCase()] = new §#!#§(param1,param2,§]r§.§`!9§(param3),§4! §.§+n§(param4),!!param5 ? §[!;§.§&!`§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §=!>§(param1:String) : §#!#§
      {
         var _loc2_:§#!#§ = §0l§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §[Z§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §2!=§() : Array
      {
         return §5N§;
      }
      
      public static function §'!1§(param1:String) : Array
      {
         var _loc3_:§#!#§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §0l§)
         {
            if(_loc3_.§@!%§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§7=§;
            }
         }
         return _loc2_;
      }
      
      public static function § !"§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §"!O§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §[Z§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §[Z§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §[Z§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §7!"§.§@c§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function override(param1:String) : Boolean
      {
         var _loc2_:§#!#§ = §=!>§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §^@§).§,!,§[§^@§.§>l§] == §^@§.§!!3§;
         }
         return true;
      }
   }
}
