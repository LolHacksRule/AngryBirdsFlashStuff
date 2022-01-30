package §%!<§
{
   import §!g§.§,q§;
   import §4u§.§<!L§;
   import §6`§.§?!7§;
   import flash.utils.Dictionary;
   
   public class §7V§
   {
      
      public static var §=!O§:XML;
      
      public static var §9!>§:XML;
      
      public static var §%`§:Dictionary = new Dictionary();
      
      public static var §28§:Array;
       
      
      public function §7V§()
      {
         super();
      }
      
      public static function §,-§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §=!O§ = param1;
         §9!>§ = param2;
         § &§.§0P§(§=!O§.Item_Materials,§=!O§.Material_Damage_Multipliers,§=!O§.Material_Velocity_Multipliers);
         §]g§.§#!B§(§=!O§.Item_Resources_Sounds);
         §,!R§.§-R§(§=!O§.Item_Shapes);
         §,q§.§<H§(§9!>§.Backgrounds);
         §%`§ = new Dictionary();
         §28§ = new Array();
         for each(_loc3_ in §=!O§.Items.Item)
         {
            §28§.push(_loc3_.@id);
            §?"-§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §;L§(§=!O§.SoundChannels);
      }
      
      public static function §?"-§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §%`§[param1.toLowerCase()] = new §,6§(param1,param2,§ &§.§^R§(param3),§]g§.§8"%§(param4),!!param5 ? §,!R§.§9,§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §"!E§(param1:String) : §,6§
      {
         var _loc2_:§,6§ = §%`§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §<!L§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §@B§() : Array
      {
         return §28§;
      }
      
      public static function §["0§(param1:String) : Array
      {
         var _loc3_:§,6§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §%`§)
         {
            if(_loc3_.§4!4§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§6u§;
            }
         }
         return _loc2_;
      }
      
      public static function §;-§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §;L§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §<!L§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §<!L§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §<!L§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §?!7§.§!!l§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function § e§(param1:String) : Boolean
      {
         var _loc2_:§,6§ = §"!E§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as § !6§).§??§[§ !6§.§[d§] == § !6§.§20§;
         }
         return true;
      }
   }
}
