package §?!6§
{
   import § !r§.§`![§;
   import §1?§.§+!§;
   import §]Z§.§7!n§;
   import flash.utils.Dictionary;
   
   public class §1!!§
   {
      
      public static var §6d§:XML;
      
      public static var §9!#§:XML;
      
      public static var §?n§:Dictionary = new Dictionary();
      
      public static var §81§:Array;
       
      
      public function §1!!§()
      {
         super();
      }
      
      public static function §@!u§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §6d§ = param1;
         §9!#§ = param2;
         §'-§.§-q§(§6d§.Item_Materials,§6d§.Material_Damage_Multipliers,§6d§.Material_Velocity_Multipliers);
         §%h§.§;&§(§6d§.Item_Resources_Sounds);
         §3>§.§+!m§(§6d§.Item_Shapes);
         §7!n§.§0!Y§(§9!#§.Backgrounds);
         §?n§ = new Dictionary();
         §81§ = new Array();
         for each(_loc3_ in §6d§.Items.Item)
         {
            §81§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §8!l§(§6d§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §?n§[param1.toLowerCase()] = new §]!@§(param1,param2,§'-§.include(param3),§%h§.§@s§(param4),!!param5 ? §3>§.§?p§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §#P§(param1:String) : §]!@§
      {
         var _loc2_:§]!@§ = §?n§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §`![§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §`Y§() : Array
      {
         return §81§;
      }
      
      public static function §=!4§(param1:String) : Array
      {
         var _loc3_:§]!@§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §?n§)
         {
            if(_loc3_.§+D§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§>p§;
            }
         }
         return _loc2_;
      }
      
      public static function §;!@§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §8!l§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §`![§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §`![§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §`![§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §+!§.§#n§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §-! §(param1:String) : Boolean
      {
         var _loc2_:§]!@§ = §#P§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §`4§).§6!8§[§`4§.§+9§] == §`4§.§4A§;
         }
         return true;
      }
   }
}
