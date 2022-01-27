package §+!N§
{
   import §-!5§.§5s§;
   import §[N§.§9k§;
   import §`!&§.§]! §;
   import flash.utils.Dictionary;
   
   public class §1[§
   {
      
      public static var §use§:XML;
      
      public static var §9§:XML;
      
      public static var §4C§:Dictionary = new Dictionary();
      
      public static var §@,§:Array;
       
      
      public function §1[§()
      {
         super();
      }
      
      public static function §+;§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §use§ = param1;
         §9§ = param2;
         §;K§.§`!-§(§use§.Item_Materials,§use§.Material_Damage_Multipliers,§use§.Material_Velocity_Multipliers);
         §=!-§.§7b§(§use§.Item_Resources_Sounds);
         §7!§.§%V§(§use§.Item_Shapes);
         §]! §.§9+§(§9§.Backgrounds);
         §4C§ = new Dictionary();
         §@,§ = new Array();
         for each(_loc3_ in §use§.Items.Item)
         {
            §@,§.push(_loc3_.@id);
            §<$§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §?5§(§use§.SoundChannels);
      }
      
      public static function §<$§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §4C§[param1.toLowerCase()] = new §!9§(param1,param2,§;K§.§<!M§(param3),§=!-§.§'>§(param4),!!param5 ? §7!§.§?x§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §[Y§(param1:String) : §!9§
      {
         var _loc2_:§!9§ = §4C§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §5s§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §'b§() : Array
      {
         return §@,§;
      }
      
      public static function §;;§(param1:String) : Array
      {
         var _loc3_:§!9§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §4C§)
         {
            if(_loc3_.§9y§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§9E§;
            }
         }
         return _loc2_;
      }
      
      public static function §<3§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §?5§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §5s§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §5s§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §5s§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §9k§.§?!F§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §%R§(param1:String) : Boolean
      {
         var _loc2_:§!9§ = §[Y§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §[8§).§9u§[§[8§.§<!0§] == §[8§.§!F§;
         }
         return true;
      }
   }
}
