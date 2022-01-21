package §?!'§
{
   import §8<§.§<!7§;
   import §]k§.§[!L§;
   import §^!K§.§ !$§;
   import flash.utils.Dictionary;
   
   public class §[!S§
   {
      
      public static var §?b§:XML;
      
      public static var §0S§:XML;
      
      public static var §"!<§:Dictionary = new Dictionary();
      
      public static var §-k§:Array;
       
      
      public function §[!S§()
      {
         super();
      }
      
      public static function §6j§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §?b§ = param1;
         §0S§ = param2;
         §!!N§.§[=§(§?b§.Item_Materials,§?b§.Material_Damage_Multipliers,§?b§.Material_Velocity_Multipliers);
         §^!;§.§7!V§(§?b§.Item_Resources_Sounds);
         §5Z§.§%2§(§?b§.Item_Shapes);
         §[!L§.§;A§(§0S§.Backgrounds);
         §"!<§ = new Dictionary();
         §-k§ = new Array();
         for each(_loc3_ in §?b§.Items.Item)
         {
            §-k§.push(_loc3_.@id);
            §2!R§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §]!9§(§?b§.SoundChannels);
      }
      
      public static function §2!R§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §"!<§[param1.toLowerCase()] = new §0!g§(param1,param2,§!!N§.§ !i§(param3),§^!;§.§=!m§(param4),!!param5 ? §5Z§.§,_§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §;Z§(param1:String) : §0!g§
      {
         var _loc2_:§0!g§ = §"!<§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §<!7§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §75§() : Array
      {
         return §-k§;
      }
      
      public static function §]$§(param1:String) : Array
      {
         var _loc3_:§0!g§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §"!<§)
         {
            if(_loc3_.§6+§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§%!O§;
            }
         }
         return _loc2_;
      }
      
      public static function §4!#§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §]!9§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §<!7§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §<!7§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §<!7§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            § !$§.§1"§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §;!8§(param1:String) : Boolean
      {
         var _loc2_:§0!g§ = §;Z§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as § 8§).§#!B§[§ 8§.§-!R§] == § 8§.§=<§;
         }
         return true;
      }
   }
}
