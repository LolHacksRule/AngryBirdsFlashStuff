package §!r§
{
   import §+!9§.§6!N§;
   import §-!Q§.§,!7§;
   import §>^§.§!6§;
   import flash.utils.Dictionary;
   
   public class §3!!§
   {
      
      public static var §5!e§:XML;
      
      public static var §'!G§:XML;
      
      public static var §[!L§:Dictionary = new Dictionary();
      
      public static var §!!F§:Array;
       
      
      public function §3!!§()
      {
         super();
      }
      
      public static function §'y§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §5!e§ = param1;
         §'!G§ = param2;
         §<e§.§[!&§(§5!e§.Item_Materials,§5!e§.Material_Damage_Multipliers,§5!e§.Material_Velocity_Multipliers);
         §<!5§.§+!Y§(§5!e§.Item_Resources_Sounds);
         §%!9§.§5!i§(§5!e§.Item_Shapes);
         §6!N§.§+1§(§'!G§.Backgrounds);
         §[!L§ = new Dictionary();
         §!!F§ = new Array();
         for each(_loc3_ in §5!e§.Items.Item)
         {
            §!!F§.push(_loc3_.@id);
            §&!7§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §2!"§(§5!e§.SoundChannels);
      }
      
      public static function §&!7§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §[!L§[param1.toLowerCase()] = new §=?§(param1,param2,§<e§.§]!c§(param3),§<!5§.§%W§(param4),!!param5 ? §%!9§.§'!3§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §^!-§(param1:String) : §=?§
      {
         var _loc2_:§=?§ = §[!L§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §!6§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §=[§() : Array
      {
         return §!!F§;
      }
      
      public static function §4t§(param1:String) : Array
      {
         var _loc3_:§=?§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §[!L§)
         {
            if(_loc3_.§if §.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§>p§;
            }
         }
         return _loc2_;
      }
      
      public static function §3!O§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §2!"§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §!6§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §!6§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §!6§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §,!7§.§<!-§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §&T§(param1:String) : Boolean
      {
         var _loc2_:§=?§ = §^!-§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §9!,§).mValues[§9!,§.§7!$§] == §9!,§.§;a§;
         }
         return true;
      }
   }
}
