package §default§
{
   import § !G§.§ #§;
   import §+3§.§ 7§;
   import §`!K§.§!!>§;
   import flash.utils.Dictionary;
   
   public class §%<§
   {
      
      public static var §`S§:XML;
      
      public static var §+u§:XML;
      
      public static var §%o§:Dictionary = new Dictionary();
      
      public static var §0!]§:Array;
       
      
      public function §%<§()
      {
         super();
      }
      
      public static function §;!E§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §`S§ = param1;
         §+u§ = param2;
         §9C§.§`!S§(§`S§.Item_Materials,§`S§.Material_Damage_Multipliers,§`S§.Material_Velocity_Multipliers);
         §9!#§.§>Q§(§`S§.Item_Resources_Sounds);
         §9;§.§07§(§`S§.Item_Shapes);
         § 7§.§][§(§+u§.Backgrounds);
         §%o§ = new Dictionary();
         §0!]§ = new Array();
         for each(_loc3_ in §`S§.Items.Item)
         {
            §0!]§.push(_loc3_.@id);
            §&r§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §,V§(§`S§.SoundChannels);
      }
      
      public static function §&r§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §%o§[param1.toLowerCase()] = new §-r§(param1,param2,§9C§.§%!L§(param3),§9!#§.§4!R§(param4),!!param5 ? §9;§.§<!"§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §<<§(param1:String) : §-r§
      {
         var _loc2_:§-r§ = §%o§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         § #§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §=+§() : Array
      {
         return §0!]§;
      }
      
      public static function §<j§(param1:String) : Array
      {
         var _loc3_:§-r§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §%o§)
         {
            if(_loc3_.§,N§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§2!1§;
            }
         }
         return _loc2_;
      }
      
      public static function §!!+§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §,V§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               § #§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               § #§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               § #§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §!!>§.§6!K§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §4j§(param1:String) : Boolean
      {
         var _loc2_:§-r§ = §<<§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §-g§).§+b§[§-g§.§ !H§] == §-g§.§3'§;
         }
         return true;
      }
   }
}
