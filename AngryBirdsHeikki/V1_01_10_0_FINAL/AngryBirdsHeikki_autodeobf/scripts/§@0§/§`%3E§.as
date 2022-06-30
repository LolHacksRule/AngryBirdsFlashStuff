package §@0§
{
   import §+"§.§'! §;
   import §@R§.§4,§;
   import §^!0§.§&M§;
   import flash.utils.Dictionary;
   
   public class §`>§
   {
      
      public static var §'a§:XML;
      
      public static var §8'§:XML;
      
      public static var §],§:Dictionary = new Dictionary();
      
      public static var §4!^§:Array;
       
      
      public function §`>§()
      {
         super();
      }
      
      public static function §"A§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §'a§ = param1;
         §8'§ = param2;
         §7!^§.§%`§(§'a§.Item_Materials,§'a§.Material_Damage_Multipliers,§'a§.Material_Velocity_Multipliers);
         §,!$§.§'A§(§'a§.Item_Resources_Sounds);
         §]F§.§^!R§(§'a§.Item_Shapes);
         §'! §.§0!T§(§8'§.Backgrounds);
         §],§ = new Dictionary();
         §4!^§ = new Array();
         for each(_loc3_ in §'a§.Items.Item)
         {
            §4!^§.push(_loc3_.@id);
            §%P§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §9!W§(§'a§.SoundChannels);
      }
      
      public static function §%P§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §],§[param1.toLowerCase()] = new § $§(param1,param2,§7!^§.§9E§(param3),§,!$§.§"n§(param4),!!param5 ? §]F§.§7!P§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §<!>§(param1:String) : § $§
      {
         var _loc2_:§ $§ = §],§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §4,§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §9O§() : Array
      {
         return §4!^§;
      }
      
      public static function §1V§(param1:String) : Array
      {
         var _loc3_:§ $§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §],§)
         {
            if(_loc3_.§>! §.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§>R§;
            }
         }
         return _loc2_;
      }
      
      public static function §&H§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §9!W§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §4,§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §4,§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §4,§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §&M§.§1!V§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §&t§(param1:String) : Boolean
      {
         var _loc2_:§ $§ = §<!>§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §56§).§2!@§[§56§.§=!W§] == §56§.§&f§;
         }
         return true;
      }
   }
}
