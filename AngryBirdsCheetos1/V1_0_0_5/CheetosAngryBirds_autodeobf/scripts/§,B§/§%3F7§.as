package §,B§
{
   import §&N§.§@,§;
   import §2!6§.§%!$§;
   import §3]§.§8[§;
   import flash.utils.Dictionary;
   
   public class §?7§
   {
      
      public static var §&!5§:XML;
      
      public static var §4&§:XML;
      
      public static var §%!&§:Dictionary = new Dictionary();
      
      public static var § !V§:Array;
       
      
      public function §?7§()
      {
         super();
      }
      
      public static function §"F§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §&!5§ = param1;
         §4&§ = param2;
         §?!X§.§8?§(§&!5§.Item_Materials,§&!5§.Material_Damage_Multipliers,§&!5§.Material_Velocity_Multipliers);
         §^6§.§>!X§(§&!5§.Item_Resources_Sounds);
         §^!J§.§'c§(§&!5§.Item_Shapes);
         §8[§.§<F§(§4&§.Backgrounds);
         §%!&§ = new Dictionary();
         § !V§ = new Array();
         for each(_loc3_ in §&!5§.Items.Item)
         {
            § !V§.push(_loc3_.@id);
            §!M§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §6K§(§&!5§.SoundChannels);
      }
      
      public static function §!M§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §%!&§[param1.toLowerCase()] = new §<!2§(param1,param2,§?!X§.§<L§(param3),§^6§.§4]§(param4),!!param5 ? §^!J§.§^@§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §`1§(param1:String) : §<!2§
      {
         var _loc2_:§<!2§ = §%!&§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §@,§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §;@§() : Array
      {
         return § !V§;
      }
      
      public static function §^!G§(param1:String) : Array
      {
         var _loc3_:§<!2§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §%!&§)
         {
            if(_loc3_.§finally§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§,!§;
            }
         }
         return _loc2_;
      }
      
      public static function §5!Y§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §6K§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §@,§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §@,§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §@,§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §%!$§.§0!?§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §9!§(param1:String) : Boolean
      {
         var _loc2_:§<!2§ = §`1§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §9x§).§#!+§[§9x§.§-f§] == §9x§.§"!Q§;
         }
         return true;
      }
   }
}
