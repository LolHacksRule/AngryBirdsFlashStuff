package §8!I§
{
   import §1!K§.§>!<§;
   import §2!Q§.§'[§;
   import §@!%§.§2!]§;
   import flash.utils.Dictionary;
   
   public class §=]§
   {
      
      public static var §[!X§:XML;
      
      public static var §]k§:XML;
      
      public static var §-!`§:Dictionary = new Dictionary();
      
      public static var §"S§:Array;
       
      
      public function §=]§()
      {
         super();
      }
      
      public static function §%S§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §[!X§ = param1;
         §]k§ = param2;
         §?!&§.§true§(§[!X§.Item_Materials,§[!X§.Material_Damage_Multipliers,§[!X§.Material_Velocity_Multipliers);
         §-!D§.§+x§(§[!X§.Item_Resources_Sounds);
         §%0§.§'!-§(§[!X§.Item_Shapes);
         §2!]§.§;x§(§]k§.Backgrounds);
         §-!`§ = new Dictionary();
         §"S§ = new Array();
         for each(_loc3_ in §[!X§.Items.Item)
         {
            §"S§.push(_loc3_.@id);
            §for§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §%!;§(§[!X§.SoundChannels);
      }
      
      public static function §for§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §-!`§[param1.toLowerCase()] = new §,6§(param1,param2,§?!&§.§"!5§(param3),§-!D§.§4K§(param4),!!param5 ? §%0§.§'m§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §^]§(param1:String) : §,6§
      {
         var _loc2_:§,6§ = §-!`§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §>!<§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §5E§() : Array
      {
         return §"S§;
      }
      
      public static function §>N§(param1:String) : Array
      {
         var _loc3_:§,6§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §-!`§)
         {
            if(_loc3_.§=q§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§%!1§;
            }
         }
         return _loc2_;
      }
      
      public static function §=!Z§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §%!;§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §>!<§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §>!<§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §>!<§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §'[§.§`V§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §,!c§(param1:String) : Boolean
      {
         var _loc2_:§,6§ = §^]§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §1!_§).§@4§[§1!_§.§6!2§] == §1!_§.§%!?§;
         }
         return true;
      }
   }
}
