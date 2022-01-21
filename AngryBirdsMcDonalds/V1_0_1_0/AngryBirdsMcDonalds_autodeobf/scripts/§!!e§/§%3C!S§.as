package §!!e§
{
   import §#N§.§-!J§;
   import §-!#§.§5!6§;
   import §`!W§.§2v§;
   import flash.utils.Dictionary;
   
   public class §<!S§
   {
      
      public static var §=h§:XML;
      
      public static var §0!!§:XML;
      
      public static var §]_§:Dictionary = new Dictionary();
      
      public static var §%!M§:Array;
       
      
      public function §<!S§()
      {
         super();
      }
      
      public static function §20§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §=h§ = param1;
         §0!!§ = param2;
         §8A§.§,!A§(§=h§.Item_Materials,§=h§.Material_Damage_Multipliers,§=h§.Material_Velocity_Multipliers);
         §,§.§=x§(§=h§.Item_Resources_Sounds);
         §!`§.§=n§(§=h§.Item_Shapes);
         §-!J§.§#Q§(§0!!§.Backgrounds);
         §]_§ = new Dictionary();
         §%!M§ = new Array();
         for each(_loc3_ in §=h§.Items.Item)
         {
            §%!M§.push(_loc3_.@id);
            §4;§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §23§(§=h§.SoundChannels);
      }
      
      public static function §4;§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §]_§[param1.toLowerCase()] = new §`!S§(param1,param2,§8A§.§8!2§(param3),§,§.§@!A§(param4),!!param5 ? §!`§.§;!&§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §<!l§(param1:String) : §`!S§
      {
         var _loc2_:§`!S§ = §]_§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §2v§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §>!8§() : Array
      {
         return §%!M§;
      }
      
      public static function §3$§(param1:String) : Array
      {
         var _loc3_:§`!S§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §]_§)
         {
            if(_loc3_.§]Z§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§@!i§;
            }
         }
         return _loc2_;
      }
      
      public static function §#6§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §23§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §2v§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §2v§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §2v§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §5!6§.§<!&§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §82§(param1:String) : Boolean
      {
         var _loc2_:§`!S§ = §<!l§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §,!§).§implements§[§,!§.§^!7§] == §,!§.§@!0§;
         }
         return true;
      }
   }
}
