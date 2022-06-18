package §^V§
{
   import §#+§.§61§;
   import §-p§.§&2§;
   import §3!A§.§9!0§;
   import flash.utils.Dictionary;
   
   public class §;n§
   {
      
      public static var §?;§:XML;
      
      public static var §6&§:XML;
      
      public static var §&P§:Dictionary = new Dictionary();
      
      public static var §`;§:Array;
       
      
      public function §;n§()
      {
         super();
      }
      
      public static function §,!-§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §?;§ = param1;
         §6&§ = param2;
         §"`§.§67§(§?;§.Item_Materials,§?;§.Material_Damage_Multipliers,§?;§.Material_Velocity_Multipliers);
         §8L§.§]!2§(§?;§.Item_Resources_Sounds);
         §-A§.§<!A§(§?;§.Item_Shapes);
         §61§.§!>§(§6&§.Backgrounds);
         §&P§ = new Dictionary();
         §`;§ = new Array();
         for each(_loc3_ in §?;§.Items.Item)
         {
            §`;§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §0u§(§?;§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §&P§[param1.toLowerCase()] = new §[H§(param1,param2,§"`§.§']§(param3),§8L§.§^'§(param4),!!param5 ? §-A§.§2m§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §@!G§(param1:String) : §[H§
      {
         var _loc2_:§[H§ = §&P§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §&2§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §2K§() : Array
      {
         return §`;§;
      }
      
      public static function §-T§(param1:String) : Array
      {
         var _loc3_:§[H§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §&P§)
         {
            if(_loc3_.§&h§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§+!!§;
            }
         }
         return _loc2_;
      }
      
      public static function §>i§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §0u§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §&2§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §&2§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §&2§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §9!0§.§;U§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §6!3§(param1:String) : Boolean
      {
         var _loc2_:§[H§ = §@!G§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §9K§).§`d§[§9K§.§-H§] == §9K§.§3!5§;
         }
         return true;
      }
   }
}
