package §`=§
{
   import §+y§.§3V§;
   import §,!O§.§?9§;
   import §@V§.§`!5§;
   import flash.utils.Dictionary;
   
   public class §"R§
   {
      
      public static var §[f§:XML;
      
      public static var §,!G§:XML;
      
      public static var §=!L§:Dictionary = new Dictionary();
      
      public static var §<e§:Array;
       
      
      public function §"R§()
      {
         super();
      }
      
      public static function §0Y§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §[f§ = param1;
         §,!G§ = param2;
         §,S§.§-1§(§[f§.Item_Materials,§[f§.Material_Damage_Multipliers,§[f§.Material_Velocity_Multipliers);
         §6!Q§.§ m§(§[f§.Item_Resources_Sounds);
         §7!K§.§76§(§[f§.Item_Shapes);
         §?9§.§`§(§,!G§.Backgrounds);
         §=!L§ = new Dictionary();
         §<e§ = new Array();
         for each(_loc3_ in §[f§.Items.Item)
         {
            §<e§.push(_loc3_.@id);
            §5Y§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §4$§(§[f§.SoundChannels);
      }
      
      public static function §5Y§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §=!L§[param1.toLowerCase()] = new §%!'§(param1,param2,§,S§.§+5§(param3),§6!Q§.§]R§(param4),!!param5 ? §7!K§.§8§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §^!'§(param1:String) : §%!'§
      {
         var _loc2_:§%!'§ = §=!L§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §`!5§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function § in§() : Array
      {
         return §<e§;
      }
      
      public static function §^F§(param1:String) : Array
      {
         var _loc3_:§%!'§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §=!L§)
         {
            if(_loc3_.§94§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§8!I§;
            }
         }
         return _loc2_;
      }
      
      public static function §]]§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §4$§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §`!5§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §3V§.§?L§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §;A§(param1:String) : Boolean
      {
         var _loc2_:§%!'§ = §^!'§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §`P§).§`!2§[§`P§.§!i§] == §`P§.§@e§;
         }
         return true;
      }
   }
}
