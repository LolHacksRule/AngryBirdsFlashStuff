package §0E§
{
   import §"1§.§3'§;
   import §%T§.§>p§;
   import §,!1§.§]e§;
   import flash.utils.Dictionary;
   
   public class §"b§
   {
      
      public static var §9,§:XML;
      
      public static var §?&§:XML;
      
      public static var §8A§:Dictionary = new Dictionary();
      
      public static var §+r§:Array;
       
      
      public function §"b§()
      {
         super();
      }
      
      public static function §@0§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §9,§ = param1;
         §?&§ = param2;
         §2!D§.§'g§(§9,§.Item_Materials,§9,§.Material_Damage_Multipliers,§9,§.Material_Velocity_Multipliers);
         §%k§.§@!;§(§9,§.Item_Resources_Sounds);
         §0o§.§-!4§(§9,§.Item_Shapes);
         §>p§.§+>§(§?&§.Backgrounds);
         §8A§ = new Dictionary();
         §+r§ = new Array();
         for each(_loc3_ in §9,§.Items.Item)
         {
            §+r§.push(_loc3_.@id);
            §6!?§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §>R§(§9,§.SoundChannels);
      }
      
      public static function §6!?§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §8A§[param1.toLowerCase()] = new §'+§(param1,param2,§2!D§.§#!@§(param3),§%k§.§8!N§(param4),!!param5 ? §0o§.§ K§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §[M§(param1:String) : §'+§
      {
         var _loc2_:§'+§ = §8A§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §3'§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §?t§() : Array
      {
         return §+r§;
      }
      
      public static function § ?§(param1:String) : Array
      {
         var _loc3_:§'+§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §8A§)
         {
            if(_loc3_.§,t§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§8!J§;
            }
         }
         return _loc2_;
      }
      
      public static function §"!2§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §>R§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §3'§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §3'§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §3'§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §]e§.§#x§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §9!8§(param1:String) : Boolean
      {
         var _loc2_:§'+§ = §[M§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §,@§).§`E§[§,@§.§=!$§] == §,@§.§+! §;
         }
         return true;
      }
   }
}
