package §<!<§
{
   import §'N§.§^]§;
   import §3v§.§1a§;
   import §6"§.§8!9§;
   import flash.utils.Dictionary;
   
   public class §6t§
   {
      
      public static var §>l§:XML;
      
      public static var §2=§:XML;
      
      public static var §%!;§:Dictionary = new Dictionary();
      
      public static var §?s§:Array;
       
      
      public function §6t§()
      {
         super();
      }
      
      public static function §0t§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §>l§ = param1;
         §2=§ = param2;
         §6!@§.§"i§(§>l§.Item_Materials,§>l§.Material_Damage_Multipliers,§>l§.Material_Velocity_Multipliers);
         §!;§.§#o§(§>l§.Item_Resources_Sounds);
         §[!5§.§3!%§(§>l§.Item_Shapes);
         §8!9§.§+C§(§2=§.Backgrounds);
         §%!;§ = new Dictionary();
         §?s§ = new Array();
         for each(_loc3_ in §>l§.Items.Item)
         {
            §?s§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §8t§(§>l§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §%!;§[param1.toLowerCase()] = new §6e§(param1,param2,§6!@§.§^o§(param3),§!;§.§2p§(param4),!!param5 ? §[!5§.§3!A§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §5,§(param1:String) : §6e§
      {
         var _loc2_:§6e§ = §%!;§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §1a§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §-y§() : Array
      {
         return §?s§;
      }
      
      public static function §^! §(param1:String) : Array
      {
         var _loc3_:§6e§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §%!;§)
         {
            if(_loc3_.§;0§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§=p§;
            }
         }
         return _loc2_;
      }
      
      public static function §2!'§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §8t§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §1a§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §1a§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §1a§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §^]§.§#r§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §6!?§(param1:String) : Boolean
      {
         var _loc2_:§6e§ = §5,§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §>2§).§+!!§[§>2§.§,N§] == §>2§.§"I§;
         }
         return true;
      }
   }
}
