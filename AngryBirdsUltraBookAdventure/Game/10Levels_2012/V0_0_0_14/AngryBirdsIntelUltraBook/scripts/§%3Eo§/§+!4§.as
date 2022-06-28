package §>o§
{
   import §+!r§.§@!a§;
   import §1!T§.§6!H§;
   import §6z§.§[g§;
   import flash.utils.Dictionary;
   
   public class §+!4§
   {
      
      public static var §0!3§:XML;
      
      public static var §3!]§:XML;
      
      public static var §0!i§:Dictionary = new Dictionary();
      
      public static var §@!2§:Array;
       
      
      public function §+!4§()
      {
         super();
      }
      
      public static function §`!5§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §0!3§ = param1;
         §3!]§ = param2;
         §+E§.§ -§(§0!3§.Item_Materials,§0!3§.Material_Damage_Multipliers,§0!3§.Material_Velocity_Multipliers);
         §4!m§.§7J§(§0!3§.Item_Resources_Sounds);
         §%6§.§3@§(§0!3§.Item_Shapes);
         §@!a§.§+T§(§3!]§.Backgrounds);
         §0!i§ = new Dictionary();
         §@!2§ = new Array();
         for each(_loc3_ in §0!3§.Items.Item)
         {
            §@!2§.push(_loc3_.@id);
            §9!x§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §#!?§(§0!3§.SoundChannels);
      }
      
      public static function §9!x§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §0!i§[param1.toLowerCase()] = new §8!4§(param1,param2,§+E§.§#?§(param3),§4!m§.§3!n§(param4),!!param5 ? §%6§.§>1§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function § !`§(param1:String) : §8!4§
      {
         var _loc2_:§8!4§ = §0!i§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §[g§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §,!o§() : Array
      {
         return §@!2§;
      }
      
      public static function §@!K§(param1:String) : Array
      {
         var _loc3_:§8!4§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §0!i§)
         {
            if(_loc3_.§5H§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§@!p§;
            }
         }
         return _loc2_;
      }
      
      public static function §+!K§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §#!?§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §[g§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §[g§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §[g§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §6!H§.§^!s§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §'D§(param1:String) : Boolean
      {
         var _loc2_:§8!4§ = § !`§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §"!e§).§-!j§[§"!e§.§-R§] == §"!e§.§[v§;
         }
         return true;
      }
   }
}
