package §3G§
{
   import §&C§.§1?§;
   import §0i§.§4!%§;
   import §]^§.§7G§;
   import flash.utils.Dictionary;
   
   public class §-s§
   {
      
      public static var §7!<§:XML;
      
      public static var §;!&§:XML;
      
      public static var § k§:Dictionary = new Dictionary();
      
      public static var §9!f§:Array;
       
      
      public function §-s§()
      {
         super();
      }
      
      public static function §>§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §7!<§ = param1;
         §;!&§ = param2;
         §7!8§.§%4§(§7!<§.Item_Materials,§7!<§.Material_Damage_Multipliers,§7!<§.Material_Velocity_Multipliers);
         §!!$§.§[!'§(§7!<§.Item_Resources_Sounds);
         §7i§.§=!7§(§7!<§.Item_Shapes);
         §1?§.§;K§(§;!&§.Backgrounds);
         § k§ = new Dictionary();
         §9!f§ = new Array();
         for each(_loc3_ in §7!<§.Items.Item)
         {
            §9!f§.push(_loc3_.@id);
            §&!j§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §#'§(§7!<§.SoundChannels);
      }
      
      public static function §&!j§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         § k§[param1.toLowerCase()] = new §!C§(param1,param2,§7!8§.§"f§(param3),§!!$§.§2!D§(param4),!!param5 ? §7i§.§4E§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §[!G§(param1:String) : §!C§
      {
         var _loc2_:§!C§ = § k§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §4!%§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §&!T§() : Array
      {
         return §9!f§;
      }
      
      public static function §0V§(param1:String) : Array
      {
         var _loc3_:§!C§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in § k§)
         {
            if(_loc3_.§1M§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§8+§;
            }
         }
         return _loc2_;
      }
      
      public static function §'!h§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §#'§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §4!%§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §7G§.§&!V§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §5m§(param1:String) : Boolean
      {
         var _loc2_:§!C§ = §[!G§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §9!S§).§6F§[§9!S§.§!!O§] == §9!S§.§&!i§;
         }
         return true;
      }
   }
}
