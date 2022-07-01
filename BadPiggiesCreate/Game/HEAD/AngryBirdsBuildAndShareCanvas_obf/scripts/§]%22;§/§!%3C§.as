package §]";§
{
   import §#";§.§0"#§;
   import §6]§.§,"0§;
   import flash.utils.Dictionary;
   import §switch§.§47§;
   
   public class §!<§
   {
      
      public static var §4!I§:XML;
      
      public static var §,-§:XML;
      
      public static var §[z§:Dictionary = new Dictionary();
      
      public static var §?![§:Array;
       
      
      public function §!<§()
      {
         super();
      }
      
      public static function §#R§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §4!I§ = param1;
         §,-§ = param2;
         §"q§.§9!p§(§4!I§.Item_Materials,§4!I§.Material_Damage_Multipliers,§4!I§.Material_Velocity_Multipliers);
         §+!$§.§9!i§(§4!I§.Item_Resources_Sounds);
         §`!o§.§2"0§(§4!I§.Item_Shapes);
         §47§.§!A§(§,-§.Backgrounds);
         §[z§ = new Dictionary();
         §?![§ = new Array();
         for each(_loc3_ in §4!I§.Items.Item)
         {
            §?![§.push(_loc3_.@id);
            §,!D§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §@H§(§4!I§.SoundChannels);
      }
      
      public static function §,!D§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §[z§[param1.toLowerCase()] = new §4!p§(param1,param2,§"q§.§6x§(param3),§+!$§.§>Z§(param4),!!param5 ? §`!o§.§0! §(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §[!@§(param1:String) : §4!p§
      {
         var _loc2_:§4!p§ = §[z§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §,"0§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §6p§() : Array
      {
         return §?![§;
      }
      
      public static function §'g§(param1:String) : Array
      {
         var _loc3_:§4!p§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §[z§)
         {
            if(_loc3_.§=!S§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§+!A§;
            }
         }
         return _loc2_;
      }
      
      public static function § case§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §@H§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §,"0§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §,"0§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §,"0§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §0"#§.§4!m§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §!^§(param1:String) : Boolean
      {
         var _loc2_:§4!p§ = §[!@§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §0A§).mValues[§0A§.§!"3§] == §0A§.§7"=§;
         }
         return true;
      }
   }
}
