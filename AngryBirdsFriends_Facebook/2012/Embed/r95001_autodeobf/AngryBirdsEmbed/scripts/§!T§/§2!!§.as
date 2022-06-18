package §!T§
{
   import § I§.§,!?§;
   import §1!?§.§7_§;
   import §9H§.§@M§;
   import flash.utils.Dictionary;
   
   public class §2!!§
   {
      
      public static var §8a§:XML;
      
      public static var §&g§:XML;
      
      public static var §2J§:Dictionary = new Dictionary();
      
      public static var §8l§:Array;
       
      
      public function §2!!§()
      {
         super();
      }
      
      public static function §6!&§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §8a§ = param1;
         §&g§ = param2;
         §>G§.§`z§(§8a§.Item_Materials,§8a§.Material_Damage_Multipliers,§8a§.Material_Velocity_Multipliers);
         §#^§.§&z§(§8a§.Item_Resources_Sounds);
         §==§.§'f§(§8a§.Item_Shapes);
         §,!?§.§>8§(§&g§.Backgrounds);
         §2J§ = new Dictionary();
         §8l§ = new Array();
         for each(_loc3_ in §8a§.Items.Item)
         {
            §8l§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §%M§(§8a§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §2J§[param1.toLowerCase()] = new §9n§(param1,param2,§>G§.§=g§(param3),§#^§.§+d§(param4),!!param5 ? §==§.§7b§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §2V§(param1:String) : §9n§
      {
         var _loc2_:§9n§ = §2J§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §@M§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function § !+§() : Array
      {
         return §8l§;
      }
      
      public static function §?#§(param1:String) : Array
      {
         var _loc3_:§9n§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §2J§)
         {
            if(_loc3_.§?f§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§"]§;
            }
         }
         return _loc2_;
      }
      
      public static function §,!"§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §%M§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §@M§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §@M§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §@M§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §7_§.§#I§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §=Y§(param1:String) : Boolean
      {
         var _loc2_:§9n§ = §2V§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §^^§).§+&§[§^^§.§<!A§] == §^^§.§3i§;
         }
         return true;
      }
   }
}
