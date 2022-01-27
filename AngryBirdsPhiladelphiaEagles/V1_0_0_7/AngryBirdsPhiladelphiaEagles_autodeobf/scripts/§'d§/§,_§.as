package §'d§
{
   import §!6§.§3!5§;
   import §<!4§.§25§;
   import flash.utils.Dictionary;
   import get.§ v§;
   
   public class §,_§
   {
      
      public static var §>!A§:XML;
      
      public static var §8]§:XML;
      
      public static var §@#§:Dictionary = new Dictionary();
      
      public static var §!$§:Array;
       
      
      public function §,_§()
      {
         super();
      }
      
      public static function §@!;§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §>!A§ = param1;
         §8]§ = param2;
         §'!<§.§<!K§(§>!A§.Item_Materials,§>!A§.Material_Damage_Multipliers,§>!A§.Material_Velocity_Multipliers);
         §&!+§.§6J§(§>!A§.Item_Resources_Sounds);
         §<!,§.§7!M§(§>!A§.Item_Shapes);
         § v§.§=!-§(§8]§.Backgrounds);
         §@#§ = new Dictionary();
         §!$§ = new Array();
         for each(_loc3_ in §>!A§.Items.Item)
         {
            §!$§.push(_loc3_.@id);
            §;5§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §3y§(§>!A§.SoundChannels);
      }
      
      public static function §;5§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §@#§[param1.toLowerCase()] = new §;"§(param1,param2,§'!<§.§12§(param3),§&!+§.§3!§(param4),!!param5 ? §<!,§.§%3§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §89§(param1:String) : §;"§
      {
         var _loc2_:§;"§ = §@#§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §3!5§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §0T§() : Array
      {
         return §!$§;
      }
      
      public static function §[N§(param1:String) : Array
      {
         var _loc3_:§;"§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@#§)
         {
            if(_loc3_.§9!G§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§!Z§;
            }
         }
         return _loc2_;
      }
      
      public static function §;!H§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §3y§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §3!5§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §3!5§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §3!5§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §25§.§5!G§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §73§(param1:String) : Boolean
      {
         var _loc2_:§;"§ = §89§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §4v§).§[O§[§4v§.§^!M§] == §4v§.§3%§;
         }
         return true;
      }
   }
}
