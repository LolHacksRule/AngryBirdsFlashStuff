package §-d§
{
   import §"x§.§-8§;
   import §5!c§.§9'§;
   import §@^§.§"i§;
   import flash.utils.Dictionary;
   
   public class §%d§
   {
      
      public static var §-p§:XML;
      
      public static var §0W§:XML;
      
      public static var §6!§:Dictionary = new Dictionary();
      
      public static var §>O§:Array;
       
      
      public function §%d§()
      {
         super();
      }
      
      public static function §-#§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §-p§ = param1;
         §0W§ = param2;
         §?!G§.§7!t§(§-p§.Item_Materials,§-p§.Material_Damage_Multipliers,§-p§.Material_Velocity_Multipliers);
         §3!#§.§-v§(§-p§.Item_Resources_Sounds);
         §[B§.§0!%§(§-p§.Item_Shapes);
         §"i§.§0!4§(§0W§.Backgrounds);
         §6!§ = new Dictionary();
         §>O§ = new Array();
         for each(_loc3_ in §-p§.Items.Item)
         {
            §>O§.push(_loc3_.@id);
            §?!J§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §7!'§(§-p§.SoundChannels);
      }
      
      public static function §?!J§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §6!§[param1.toLowerCase()] = new §>r§(param1,param2,§?!G§.§<!L§(param3),§3!#§.§?!F§(param4),!!param5 ? §[B§.§8X§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §4!^§(param1:String) : §>r§
      {
         var _loc2_:§>r§ = §6!§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §-8§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §,!#§() : Array
      {
         return §>O§;
      }
      
      public static function §[e§(param1:String) : Array
      {
         var _loc3_:§>r§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §6!§)
         {
            if(_loc3_.§0!R§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§^r§;
            }
         }
         return _loc2_;
      }
      
      public static function §?!f§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §7!'§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §-8§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §-8§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §-8§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §9'§.§+!S§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §["§(param1:String) : Boolean
      {
         var _loc2_:§>r§ = §4!^§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §3!F§).§>!x§[§3!F§.§]!,§] == §3!F§.§!!k§;
         }
         return true;
      }
   }
}
