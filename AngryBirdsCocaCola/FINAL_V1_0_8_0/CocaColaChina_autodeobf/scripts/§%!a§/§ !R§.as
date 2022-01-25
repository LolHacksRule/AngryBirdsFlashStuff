package §%!a§
{
   import §+x§.§-6§;
   import §1!9§.§!9§;
   import §^=§.§8!6§;
   import flash.utils.Dictionary;
   
   public class § !R§
   {
      
      public static var §+4§:XML;
      
      public static var §'Q§:XML;
      
      public static var §+z§:Dictionary = new Dictionary();
      
      public static var §&!<§:Array;
       
      
      public function § !R§()
      {
         super();
      }
      
      public static function §0%§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §+4§ = param1;
         §'Q§ = param2;
         §-@§.§=! §(§+4§.Item_Materials,§+4§.Material_Damage_Multipliers,§+4§.Material_Velocity_Multipliers);
         §@I§.§]!]§(§+4§.Item_Resources_Sounds);
         §continue§.§4!R§(§+4§.Item_Shapes);
         §!9§.§`!B§(§'Q§.Backgrounds);
         §+z§ = new Dictionary();
         §&!<§ = new Array();
         for each(_loc3_ in §+4§.Items.Item)
         {
            §&!<§.push(_loc3_.@id);
            §9o§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §[r§(§+4§.SoundChannels);
      }
      
      public static function §9o§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §+z§[param1.toLowerCase()] = new §?!9§(param1,param2,§-@§.§0W§(param3),§@I§.§2m§(param4),!!param5 ? §continue§.§2!`§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §^L§(param1:String) : §?!9§
      {
         var _loc2_:§?!9§ = §+z§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §8!6§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §#q§() : Array
      {
         return §&!<§;
      }
      
      public static function §"q§(param1:String) : Array
      {
         var _loc3_:§?!9§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §+z§)
         {
            if(_loc3_.§5!J§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§=^§;
            }
         }
         return _loc2_;
      }
      
      public static function § 1§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §[r§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §8!6§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §8!6§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §8!6§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §-6§.§;!J§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §^!L§(param1:String) : Boolean
      {
         var _loc2_:§?!9§ = §^L§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as § !§).mValues[§ !§.§#w§] == § !§.§6W§;
         }
         return true;
      }
   }
}
