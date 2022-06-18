package §5!$§
{
   import §%t§.§@!%§;
   import §1E§.§2^§;
   import §@-§.§-N§;
   import flash.utils.Dictionary;
   
   public class §"!I§
   {
      
      public static var §,!N§:XML;
      
      public static var §>,§:XML;
      
      public static var §0!R§:Dictionary = new Dictionary();
      
      public static var §-!<§:Array;
       
      
      public function §"!I§()
      {
         super();
      }
      
      public static function §@n§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §,!N§ = param1;
         §>,§ = param2;
         §^o§.§ P§(§,!N§.Item_Materials,§,!N§.Material_Damage_Multipliers,§,!N§.Material_Velocity_Multipliers);
         §2N§.§ for§(§,!N§.Item_Resources_Sounds);
         §#[§.§&!]§(§,!N§.Item_Shapes);
         §-N§.§+!R§(§>,§.Backgrounds);
         §0!R§ = new Dictionary();
         §-!<§ = new Array();
         for each(_loc3_ in §,!N§.Items.Item)
         {
            §-!<§.push(_loc3_.@id);
            § !=§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §;h§(§,!N§.SoundChannels);
      }
      
      public static function § !=§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §0!R§[param1.toLowerCase()] = new §!!H§(param1,param2,§^o§.§`h§(param3),§2N§.§[[§(param4),!!param5 ? §#[§.§4!0§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §&E§(param1:String) : §!!H§
      {
         var _loc2_:§!!H§ = §0!R§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §@!%§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §[d§() : Array
      {
         return §-!<§;
      }
      
      public static function §9!<§(param1:String) : Array
      {
         var _loc3_:§!!H§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §0!R§)
         {
            if(_loc3_.§&!,§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§+!J§;
            }
         }
         return _loc2_;
      }
      
      public static function §<!G§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §;h§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §@!%§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §@!%§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §@!%§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §2^§.§5!Q§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §with§(param1:String) : Boolean
      {
         var _loc2_:§!!H§ = §&E§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §@$§).§`!7§[§@$§.§%P§] == §@$§.§"!&§;
         }
         return true;
      }
   }
}
