package §%!n§
{
   import § 6§.§^;§;
   import §5K§.§[C§;
   import §?!g§.§ !d§;
   import flash.utils.Dictionary;
   
   public class §"+§
   {
      
      public static var §2!C§:XML;
      
      public static var §;C§:XML;
      
      public static var §,]§:Dictionary = new Dictionary();
      
      public static var §4!0§:Array;
       
      
      public function §"+§()
      {
         super();
      }
      
      public static function §]A§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §2!C§ = param1;
         §;C§ = param2;
         §8!3§.§,5§(§2!C§.Item_Materials,§2!C§.Material_Damage_Multipliers,§2!C§.Material_Velocity_Multipliers);
         §[!!§.§6!$§(§2!C§.Item_Resources_Sounds);
         §7E§.§6!E§(§2!C§.Item_Shapes);
         §^;§.§ !S§(§;C§.Backgrounds);
         §,]§ = new Dictionary();
         §4!0§ = new Array();
         for each(_loc3_ in §2!C§.Items.Item)
         {
            §4!0§.push(_loc3_.@id);
            §>W§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §<!4§(§2!C§.SoundChannels);
      }
      
      public static function §>W§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §,]§[param1.toLowerCase()] = new §7!+§(param1,param2,§8!3§.§`[§(param3),§[!!§.§!!<§(param4),!!param5 ? §7E§.§ !`§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §9Q§(param1:String) : §7!+§
      {
         var _loc2_:§7!+§ = §,]§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §[C§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §9!i§() : Array
      {
         return §4!0§;
      }
      
      public static function §5A§(param1:String) : Array
      {
         var _loc3_:§7!+§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §,]§)
         {
            if(_loc3_.§ !l§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§3!G§;
            }
         }
         return _loc2_;
      }
      
      public static function §03§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §<!4§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §[C§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §[C§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §[C§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            § !d§.§6D§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §;P§(param1:String) : Boolean
      {
         var _loc2_:§7!+§ = §9Q§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §;%§).§'+§[§;%§.§"!U§] == §;%§.§?!F§;
         }
         return true;
      }
   }
}
