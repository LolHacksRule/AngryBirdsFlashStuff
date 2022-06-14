package §%Q§
{
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §<u§.§8,§;
   import flash.utils.Dictionary;
   
   public class §6G§
   {
      
      public static var §!i§:XML;
      
      public static var §?c§:XML;
      
      public static var §&!Z§:Dictionary = new Dictionary();
      
      public static var §8!3§:Array;
       
      
      public function §6G§()
      {
         super();
      }
      
      public static function §%!e§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §!i§ = param1;
         §?c§ = param2;
         §>"3§.§',§(§!i§.Item_Materials,§!i§.Material_Damage_Multipliers,§!i§.Material_Velocity_Multipliers);
         §<g§.§0$§(§!i§.Item_Resources_Sounds);
         §+!o§.§;!3§(§!i§.Item_Shapes);
         §8,§.§4n§(§?c§.Backgrounds);
         §&!Z§ = new Dictionary();
         §8!3§ = new Array();
         for each(_loc3_ in §!i§.Items.Item)
         {
            §8!3§.push(_loc3_.@id);
            §+!v§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §28§(§!i§.SoundChannels);
      }
      
      public static function §+!v§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §&!Z§[param1.toLowerCase()] = new §4u§(param1,param2,§>"3§.§2%§(param3),§<g§.§8p§(param4),!!param5 ? §+!o§.§4"1§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §1!P§(param1:String) : §4u§
      {
         var _loc2_:§4u§ = §&!Z§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §+!k§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §=!b§() : Array
      {
         return §8!3§;
      }
      
      public static function §<K§(param1:String) : Array
      {
         var _loc3_:§4u§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §&!Z§)
         {
            if(_loc3_.§[C§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§2!>§;
            }
         }
         return _loc2_;
      }
      
      public static function §'k§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §28§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §+!k§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §+!k§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §+!k§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §>!E§.§0I§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §->§(param1:String) : Boolean
      {
         var _loc2_:§4u§ = §1!P§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §9!n§).mValues[§9!n§.§+t§] == §9!n§.§'f§;
         }
         return true;
      }
   }
}
