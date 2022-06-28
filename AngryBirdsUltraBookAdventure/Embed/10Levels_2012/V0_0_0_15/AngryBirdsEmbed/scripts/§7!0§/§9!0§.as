package §7!0§
{
   import §+!"§.§5!<§;
   import §5!%§.§%p§;
   import §@D§.§6I§;
   import flash.utils.Dictionary;
   
   public class §9!0§
   {
      
      public static var §4!8§:XML;
      
      public static var §]!4§:XML;
      
      public static var §3! §:Dictionary = new Dictionary();
      
      public static var §#Y§:Array;
       
      
      public function §9!0§()
      {
         super();
      }
      
      public static function §2!F§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §4!8§ = param1;
         §]!4§ = param2;
         §=c§.§^&§(§4!8§.Item_Materials,§4!8§.Material_Damage_Multipliers,§4!8§.Material_Velocity_Multipliers);
         §;%§.§,]§(§4!8§.Item_Resources_Sounds);
         §]!5§.§;J§(§4!8§.Item_Shapes);
         §%p§.§ use§(§]!4§.Backgrounds);
         §3! § = new Dictionary();
         §#Y§ = new Array();
         for each(_loc3_ in §4!8§.Items.Item)
         {
            §#Y§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §52§(§4!8§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §3! §[param1.toLowerCase()] = new §9!;§(param1,param2,§=c§.§9!"§(param3),§;%§.§3N§(param4),!!param5 ? §]!5§.§ r§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §&!<§(param1:String) : §9!;§
      {
         var _loc2_:§9!;§ = §3! §[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §5!<§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §]!H§() : Array
      {
         return §#Y§;
      }
      
      public static function §[!8§(param1:String) : Array
      {
         var _loc3_:§9!;§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §3! §)
         {
            if(_loc3_.§5x§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§2Z§;
            }
         }
         return _loc2_;
      }
      
      public static function §5`§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §52§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §5!<§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §5!<§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §5!<§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §6I§.§"!'§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §9#§(param1:String) : Boolean
      {
         var _loc2_:§9!;§ = §&!<§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §^!%§).§+!5§[§^!%§.§ 8§] == §^!%§.§@`§;
         }
         return true;
      }
   }
}
