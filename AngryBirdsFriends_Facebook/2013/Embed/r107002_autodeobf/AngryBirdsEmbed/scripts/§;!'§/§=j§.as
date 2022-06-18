package §;!'§
{
   import §'0§.§]!2§;
   import §5Y§.§=V§;
   import §@!;§.§!!=§;
   import flash.utils.Dictionary;
   
   public class §=j§
   {
      
      public static var §&Q§:XML;
      
      public static var §<d§:XML;
      
      public static var §]§:Dictionary = new Dictionary();
      
      public static var §"y§:Array;
       
      
      public function §=j§()
      {
         super();
      }
      
      public static function §['§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §&Q§ = param1;
         §<d§ = param2;
         §4k§.§>,§(§&Q§.Item_Materials,§&Q§.Material_Damage_Multipliers,§&Q§.Material_Velocity_Multipliers);
         §<6§.§?z§(§&Q§.Item_Resources_Sounds);
         §#4§.§<8§(§&Q§.Item_Shapes);
         §=V§.§7!%§(§<d§.Backgrounds);
         §]§ = new Dictionary();
         §"y§ = new Array();
         for each(_loc3_ in §&Q§.Items.Item)
         {
            §"y§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §>!9§(§&Q§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §]§[param1.toLowerCase()] = new §;l§(param1,param2,§4k§.§[I§(param3),§<6§.§'i§(param4),!!param5 ? §#4§.§4r§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §=c§(param1:String) : §;l§
      {
         var _loc2_:§;l§ = §]§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §!!=§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §"`§() : Array
      {
         return §"y§;
      }
      
      public static function §"O§(param1:String) : Array
      {
         var _loc3_:§;l§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §]§)
         {
            if(_loc3_.§+Z§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§#+§;
            }
         }
         return _loc2_;
      }
      
      public static function §8C§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §>!9§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §!!=§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §!!=§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §!!=§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §]!2§.§+B§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §,§(param1:String) : Boolean
      {
         var _loc2_:§;l§ = §=c§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §3!6§).mValues[§3!6§.§1X§] == §3!6§.§+%§;
         }
         return true;
      }
   }
}
