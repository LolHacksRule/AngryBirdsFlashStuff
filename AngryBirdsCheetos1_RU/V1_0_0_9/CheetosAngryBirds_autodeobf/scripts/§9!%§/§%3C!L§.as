package §9!%§
{
   import §'>§.§>!M§;
   import §-!6§.§>I§;
   import §5!G§.§31§;
   import flash.utils.Dictionary;
   
   public class §<!L§
   {
      
      public static var §'G§:XML;
      
      public static var §^!Q§:XML;
      
      public static var §!!X§:Dictionary = new Dictionary();
      
      public static var §^P§:Array;
       
      
      public function §<!L§()
      {
         super();
      }
      
      public static function §=<§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §'G§ = param1;
         §^!Q§ = param2;
         §"!O§.§^!-§(§'G§.Item_Materials,§'G§.Material_Damage_Multipliers,§'G§.Material_Velocity_Multipliers);
         §]t§.§]=§(§'G§.Item_Resources_Sounds);
         §&P§.§use§(§'G§.Item_Shapes);
         §>!M§.§`c§(§^!Q§.Backgrounds);
         §!!X§ = new Dictionary();
         §^P§ = new Array();
         for each(_loc3_ in §'G§.Items.Item)
         {
            §^P§.push(_loc3_.@id);
            §`!`§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §?!Q§(§'G§.SoundChannels);
      }
      
      public static function §`!`§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §!!X§[param1.toLowerCase()] = new §-D§(param1,param2,§"!O§.§9,§(param3),§]t§.§#m§(param4),!!param5 ? §&P§.§^9§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §]z§(param1:String) : §-D§
      {
         var _loc2_:§-D§ = §!!X§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §>I§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §7!"§() : Array
      {
         return §^P§;
      }
      
      public static function §#!§(param1:String) : Array
      {
         var _loc3_:§-D§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §!!X§)
         {
            if(_loc3_.§&Y§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§<Y§;
            }
         }
         return _loc2_;
      }
      
      public static function §`!X§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §?!Q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §>I§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §>I§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §>I§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §31§.§&!P§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §!@§(param1:String) : Boolean
      {
         var _loc2_:§-D§ = §]z§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §[!M§).§^R§[§[!M§.§0K§] == §[!M§.§4!!§;
         }
         return true;
      }
   }
}
