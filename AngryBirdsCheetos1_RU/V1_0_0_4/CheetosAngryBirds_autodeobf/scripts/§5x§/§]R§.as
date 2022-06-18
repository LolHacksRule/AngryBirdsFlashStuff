package §5x§
{
   import §#K§.§,3§;
   import §-!_§.§?!!§;
   import §^!&§.§;C§;
   import flash.utils.Dictionary;
   
   public class §]R§
   {
      
      public static var §;P§:XML;
      
      public static var §@Z§:XML;
      
      public static var §]=§:Dictionary = new Dictionary();
      
      public static var § B§:Array;
       
      
      public function §]R§()
      {
         super();
      }
      
      public static function §[!W§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §;P§ = param1;
         §@Z§ = param2;
         §try§.§1!Q§(§;P§.Item_Materials,§;P§.Material_Damage_Multipliers,§;P§.Material_Velocity_Multipliers);
         §%D§.§-f§(§;P§.Item_Resources_Sounds);
         §0W§.§3S§(§;P§.Item_Shapes);
         §?!!§.§,!X§(§@Z§.Backgrounds);
         §]=§ = new Dictionary();
         § B§ = new Array();
         for each(_loc3_ in §;P§.Items.Item)
         {
            § B§.push(_loc3_.@id);
            §8!_§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §72§(§;P§.SoundChannels);
      }
      
      public static function §8!_§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §]=§[param1.toLowerCase()] = new §6T§(param1,param2,§try§.§9=§(param3),§%D§.§1;§(param4),!!param5 ? §0W§.§,!S§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §;!H§(param1:String) : §6T§
      {
         var _loc2_:§6T§ = §]=§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §;C§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function § r§() : Array
      {
         return § B§;
      }
      
      public static function §+d§(param1:String) : Array
      {
         var _loc3_:§6T§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §]=§)
         {
            if(_loc3_.§4!Z§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§9@§;
            }
         }
         return _loc2_;
      }
      
      public static function §'!E§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §72§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §;C§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §;C§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §;C§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §,3§.§1!W§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §2!M§(param1:String) : Boolean
      {
         var _loc2_:§6T§ = §;!H§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §<!8§).§?!W§[§<!8§.§ o§] == §<!8§.§?!N§;
         }
         return true;
      }
   }
}
