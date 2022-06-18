package §&C§
{
   import § N§.§]M§;
   import §!$§.§!!O§;
   import §1!"§.§3!>§;
   import flash.utils.Dictionary;
   
   public class §[b§
   {
      
      public static var §68§:XML;
      
      public static var §?s§:XML;
      
      public static var §<G§:Dictionary = new Dictionary();
      
      public static var §%B§:Array;
       
      
      public function §[b§()
      {
         super();
      }
      
      public static function §,Z§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §68§ = param1;
         §?s§ = param2;
         §`!+§.§7"§(§68§.Item_Materials,§68§.Material_Damage_Multipliers,§68§.Material_Velocity_Multipliers);
         §]!T§.§4h§(§68§.Item_Resources_Sounds);
         §7k§.§4,§(§68§.Item_Shapes);
         §3!>§.§`!B§(§?s§.Backgrounds);
         §<G§ = new Dictionary();
         §%B§ = new Array();
         for each(_loc3_ in §68§.Items.Item)
         {
            §%B§.push(_loc3_.@id);
            §0!^§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §`z§(§68§.SoundChannels);
      }
      
      public static function §0!^§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §<G§[param1.toLowerCase()] = new §3!!§(param1,param2,§`!+§.§=T§(param3),§]!T§.§2!6§(param4),!!param5 ? §7k§.§1_§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §9R§(param1:String) : §3!!§
      {
         var _loc2_:§3!!§ = §<G§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §]M§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §;q§() : Array
      {
         return §%B§;
      }
      
      public static function §8!L§(param1:String) : Array
      {
         var _loc3_:§3!!§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §<G§)
         {
            if(_loc3_.§^!§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§6O§;
            }
         }
         return _loc2_;
      }
      
      public static function §%i§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §`z§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §]M§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §]M§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §]M§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §!!O§.§7!b§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §#!H§(param1:String) : Boolean
      {
         var _loc2_:§3!!§ = §9R§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §`=§).mValues[§`=§.§2!M§] == §`=§.§`!&§;
         }
         return true;
      }
   }
}
