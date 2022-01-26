package §4N§
{
   import §3O§.§@6§;
   import §;!E§.§!c§;
   import §;8§.§3f§;
   import flash.utils.Dictionary;
   
   public class §&!@§
   {
      
      public static var §6S§:XML;
      
      public static var § X§:XML;
      
      public static var §1I§:Dictionary = new Dictionary();
      
      public static var §6!+§:Array;
       
      
      public function §&!@§()
      {
         super();
      }
      
      public static function §'7§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §6S§ = param1;
         § X§ = param2;
         §;!2§.§=r§(§6S§.Item_Materials,§6S§.Material_Damage_Multipliers,§6S§.Material_Velocity_Multipliers);
         §+!0§.§+T§(§6S§.Item_Resources_Sounds);
         §switch§.§>!,§(§6S§.Item_Shapes);
         §!c§.§4e§(§ X§.Backgrounds);
         §1I§ = new Dictionary();
         §6!+§ = new Array();
         for each(_loc3_ in §6S§.Items.Item)
         {
            §6!+§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §&d§(§6S§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §1I§[param1.toLowerCase()] = new §9o§(param1,param2,§;!2§.§`x§(param3),§+!0§.§ c§(param4),!!param5 ? §switch§.§0V§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §9B§(param1:String) : §9o§
      {
         var _loc2_:§9o§ = §1I§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §3f§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §]r§() : Array
      {
         return §6!+§;
      }
      
      public static function §9s§(param1:String) : Array
      {
         var _loc3_:§9o§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §1I§)
         {
            if(_loc3_.§<s§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§57§;
            }
         }
         return _loc2_;
      }
      
      public static function §6!!§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §&d§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §3f§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §3f§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §3f§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §@6§.§'!&§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §8x§(param1:String) : Boolean
      {
         var _loc2_:§9o§ = §9B§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §`!%§).§&!=§[§`!%§.§9n§] == §`!%§.§function§;
         }
         return true;
      }
   }
}
