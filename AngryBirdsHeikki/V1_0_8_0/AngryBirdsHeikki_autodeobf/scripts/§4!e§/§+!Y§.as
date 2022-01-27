package §4!e§
{
   import § !3§.§!X§;
   import §#;§.§42§;
   import §1!+§.§1![§;
   import flash.utils.Dictionary;
   
   public class §+!Y§
   {
      
      public static var §86§:XML;
      
      public static var §'![§:XML;
      
      public static var §@!^§:Dictionary = new Dictionary();
      
      public static var §2!%§:Array;
       
      
      public function §+!Y§()
      {
         super();
      }
      
      public static function §>C§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §86§ = param1;
         §'![§ = param2;
         §2q§.§%!]§(§86§.Item_Materials,§86§.Material_Damage_Multipliers,§86§.Material_Velocity_Multipliers);
         §;E§.§,§(§86§.Item_Resources_Sounds);
         §extends§.§"!&§(§86§.Item_Shapes);
         §1![§.§3A§(§'![§.Backgrounds);
         §@!^§ = new Dictionary();
         §2!%§ = new Array();
         for each(_loc3_ in §86§.Items.Item)
         {
            §2!%§.push(_loc3_.@id);
            §0B§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §]T§(§86§.SoundChannels);
      }
      
      public static function §0B§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §@!^§[param1.toLowerCase()] = new §-a§(param1,param2,§2q§.§^J§(param3),§;E§.§"!@§(param4),!!param5 ? §extends§.§81§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §#o§(param1:String) : §-a§
      {
         var _loc2_:§-a§ = §@!^§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §!X§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §#T§() : Array
      {
         return §2!%§;
      }
      
      public static function §@@§(param1:String) : Array
      {
         var _loc3_:§-a§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@!^§)
         {
            if(_loc3_.§5!W§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§@c§;
            }
         }
         return _loc2_;
      }
      
      public static function §6!%§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §]T§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §!X§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §!X§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §!X§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §42§.§-!+§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §"s§(param1:String) : Boolean
      {
         var _loc2_:§-a§ = §#o§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as § !'§).§`!^§[§ !'§.§ !J§] == § !'§.§?d§;
         }
         return true;
      }
   }
}
