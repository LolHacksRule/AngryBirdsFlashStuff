package §,a§
{
   import §-!n§.§5!U§;
   import §9=§.§0!5§;
   import §=!M§.§9!P§;
   import flash.utils.Dictionary;
   
   public class §<!m§
   {
      
      public static var §17§:XML;
      
      public static var §?!X§:XML;
      
      public static var §"!_§:Dictionary = new Dictionary();
      
      public static var §&" §:Array;
       
      
      public function §<!m§()
      {
         super();
      }
      
      public static function §0_§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §17§ = param1;
         §?!X§ = param2;
         §+!s§.§>J§(§17§.Item_Materials,§17§.Material_Damage_Multipliers,§17§.Material_Velocity_Multipliers);
         §>Z§.§"-§(§17§.Item_Resources_Sounds);
         §3g§.§4#§(§17§.Item_Shapes);
         §0!5§.§4f§(§?!X§.Backgrounds);
         §"!_§ = new Dictionary();
         §&" § = new Array();
         for each(_loc3_ in §17§.Items.Item)
         {
            §&" §.push(_loc3_.@id);
            §9%§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §'W§(§17§.SoundChannels);
      }
      
      public static function §9%§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §"!_§[param1.toLowerCase()] = new §]!>§(param1,param2,§+!s§.§>!O§(param3),§>Z§.§,">§(param4),!!param5 ? §3g§.§7!U§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §"!F§(param1:String) : §]!>§
      {
         var _loc2_:§]!>§ = §"!_§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §9!P§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §1C§() : Array
      {
         return §&" §;
      }
      
      public static function §3!j§(param1:String) : Array
      {
         var _loc3_:§]!>§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §"!_§)
         {
            if(_loc3_.§=!_§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§!F§;
            }
         }
         return _loc2_;
      }
      
      public static function § !P§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §'W§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §9!P§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §9!P§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §9!P§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §5!U§.§2R§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §%e§(param1:String) : Boolean
      {
         var _loc2_:§]!>§ = §"!F§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §+!Z§).mValues[§+!Z§.§-!#§] == §+!Z§.§>$§;
         }
         return true;
      }
   }
}
