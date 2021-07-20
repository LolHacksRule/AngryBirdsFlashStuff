package §=%§
{
   import §!!t§.§+!9§;
   import §>s§.§+m§;
   import §[x§.§%3§;
   import flash.utils.Dictionary;
   
   public class §>"-§
   {
      
      public static var §3" §:XML;
      
      public static var §21§:XML;
      
      public static var §!!&§:Dictionary = new Dictionary();
      
      public static var §5!d§:Array;
       
      
      public function §>"-§()
      {
         super();
      }
      
      public static function §2"K§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §3" § = param1;
         §21§ = param2;
         §<!>§.§2",§(§3" §.Item_Materials,§3" §.Material_Damage_Multipliers,§3" §.Material_Velocity_Multipliers);
         §4!]§.§7"#§(§3" §.Item_Resources_Sounds);
         §[J§.§<n§(§3" §.Item_Shapes);
         §+!9§.§[M§(§21§.Backgrounds);
         §!!&§ = new Dictionary();
         §5!d§ = new Array();
         for each(_loc3_ in §3" §.Items.Item)
         {
            §5!d§.push(_loc3_.@id);
            §^!e§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §8"9§(§3" §.SoundChannels);
      }
      
      public static function §^!e§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §!!&§[param1.toLowerCase()] = new §]"%§(param1,param2,§<!>§.§0!w§(param3),§4!]§.§8T§(param4),!!param5 ? §[J§.§<L§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §0@§(param1:String) : §]"%§
      {
         var _loc2_:§]"%§ = §!!&§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §%3§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §@I§() : Array
      {
         return §5!d§;
      }
      
      public static function §var§(param1:String) : Array
      {
         var _loc3_:§]"%§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §!!&§)
         {
            if(_loc3_.§;!g§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§=-§;
            }
         }
         return _loc2_;
      }
      
      public static function §;R§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §8"9§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §%3§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §%3§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §%3§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §+m§.§9!g§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §7!S§(param1:String) : Boolean
      {
         var _loc2_:§]"%§ = §0@§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §=!C§).mValues[§=!C§.§,N§] == §=!C§.§"J§;
         }
         return true;
      }
   }
}
