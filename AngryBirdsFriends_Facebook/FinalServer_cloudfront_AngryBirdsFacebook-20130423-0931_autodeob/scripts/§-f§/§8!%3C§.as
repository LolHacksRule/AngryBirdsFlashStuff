package §-f§
{
   import §+!c§.§;!=§;
   import §8m§.§@"M§;
   import §`1§.§4";§;
   import flash.utils.Dictionary;
   
   public class §8!<§
   {
      
      public static var §1!y§:XML;
      
      public static var §&a§:XML;
      
      public static var §+?§:Dictionary = new Dictionary();
      
      public static var §<t§:Array;
       
      
      public function §8!<§()
      {
         super();
      }
      
      public static function §`!I§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §1!y§ = param1;
         §&a§ = param2;
         §3!!§.§"!"§(§1!y§.Item_Materials,§1!y§.Material_Damage_Multipliers,§1!y§.Material_Velocity_Multipliers);
         §>"$§.§1z§(§1!y§.Item_Resources_Sounds);
         §?"6§.§&l§(§1!y§.Item_Shapes);
         §4";§.§=!T§(§&a§.Backgrounds);
         §+?§ = new Dictionary();
         §<t§ = new Array();
         for each(_loc3_ in §1!y§.Items.Item)
         {
            §<t§.push(_loc3_.@id);
            §0" §(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §!"Q§(§1!y§.SoundChannels);
      }
      
      public static function §0" §(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §+?§[param1.toLowerCase()] = new §9L§(param1,param2,§3!!§.§%!S§(param3),§>"$§.§<!%§(param4),!!param5 ? §?"6§.§&"A§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §3"[§(param1:String) : §9L§
      {
         var _loc2_:§9L§ = §+?§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §;!=§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §-!Z§() : Array
      {
         return §<t§;
      }
      
      public static function §>e§(param1:String) : Array
      {
         var _loc3_:§9L§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §+?§)
         {
            if(_loc3_.§;"V§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§@x§;
            }
         }
         return _loc2_;
      }
      
      public static function §-!c§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §!"Q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §;!=§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §;!=§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §;!=§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §@"M§.§set §(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §2i§(param1:String) : Boolean
      {
         var _loc2_:§9L§ = §3"[§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §@!M§).mValues[§@!M§.§>"3§] == §@!M§.§?K§;
         }
         return true;
      }
   }
}
