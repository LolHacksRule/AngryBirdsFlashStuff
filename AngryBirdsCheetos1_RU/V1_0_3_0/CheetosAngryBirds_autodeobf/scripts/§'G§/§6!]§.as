package §'G§
{
   import §+!E§.§>!E§;
   import §7!7§.§return§;
   import §7!P§.§-3§;
   import flash.utils.Dictionary;
   
   public class §6!]§
   {
      
      public static var §<!1§:XML;
      
      public static var §3!'§:XML;
      
      public static var §!x§:Dictionary = new Dictionary();
      
      public static var §!<§:Array;
       
      
      public function §6!]§()
      {
         super();
      }
      
      public static function §#!§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §<!1§ = param1;
         §3!'§ = param2;
         §0a§.§8!5§(§<!1§.Item_Materials,§<!1§.Material_Damage_Multipliers,§<!1§.Material_Velocity_Multipliers);
         §#!J§.§2!+§(§<!1§.Item_Resources_Sounds);
         §?!`§.§<z§(§<!1§.Item_Shapes);
         §>!E§.§8J§(§3!'§.Backgrounds);
         §!x§ = new Dictionary();
         §!<§ = new Array();
         for each(_loc3_ in §<!1§.Items.Item)
         {
            §!<§.push(_loc3_.@id);
            §?5§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §=+§(§<!1§.SoundChannels);
      }
      
      public static function §?5§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §!x§[param1.toLowerCase()] = new §1n§(param1,param2,§0a§.§5&§(param3),§#!J§.§6'§(param4),!!param5 ? §?!`§.§8+§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §'!Q§(param1:String) : §1n§
      {
         var _loc2_:§1n§ = §!x§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §-3§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §[w§() : Array
      {
         return §!<§;
      }
      
      public static function §]H§(param1:String) : Array
      {
         var _loc3_:§1n§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §!x§)
         {
            if(_loc3_.§1!Q§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§@!]§;
            }
         }
         return _loc2_;
      }
      
      public static function §8$§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §=+§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §-3§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §-3§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §-3§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §return§.§<%§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §97§(param1:String) : Boolean
      {
         var _loc2_:§1n§ = §'!Q§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §?[§).§<e§[§?[§.§^7§] == §?[§.§0!S§;
         }
         return true;
      }
   }
}
