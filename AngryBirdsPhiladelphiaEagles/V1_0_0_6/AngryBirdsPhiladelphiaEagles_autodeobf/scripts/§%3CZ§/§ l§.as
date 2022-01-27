package §<Z§
{
   import §#!0§.§#-§;
   import §3!O§.§5q§;
   import §^?§.§[9§;
   import flash.utils.Dictionary;
   
   public class § l§
   {
      
      public static var §[!6§:XML;
      
      public static var §-!O§:XML;
      
      public static var §with§:Dictionary = new Dictionary();
      
      public static var §4u§:Array;
       
      
      public function § l§()
      {
         super();
      }
      
      public static function §+B§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §[!6§ = param1;
         §-!O§ = param2;
         §5V§.§%;§(§[!6§.Item_Materials,§[!6§.Material_Damage_Multipliers,§[!6§.Material_Velocity_Multipliers);
         §8!$§.§'B§(§[!6§.Item_Resources_Sounds);
         §]l§.§`$§(§[!6§.Item_Shapes);
         §[9§.§0g§(§-!O§.Backgrounds);
         §with§ = new Dictionary();
         §4u§ = new Array();
         for each(_loc3_ in §[!6§.Items.Item)
         {
            §4u§.push(_loc3_.@id);
            §4!7§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §%!0§(§[!6§.SoundChannels);
      }
      
      public static function §4!7§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §with§[param1.toLowerCase()] = new §^!C§(param1,param2,§5V§.§=t§(param3),§8!$§.§ !P§(param4),!!param5 ? §]l§.§!j§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §"<§(param1:String) : §^!C§
      {
         var _loc2_:§^!C§ = §with§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §5q§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §7C§() : Array
      {
         return §4u§;
      }
      
      public static function §!N§(param1:String) : Array
      {
         var _loc3_:§^!C§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §with§)
         {
            if(_loc3_.§6!N§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§]q§;
            }
         }
         return _loc2_;
      }
      
      public static function §return§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §%!0§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §5q§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §5q§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §5q§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §#-§.§[R§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §0!D§(param1:String) : Boolean
      {
         var _loc2_:§^!C§ = §"<§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §>!!§).§&'§[§>!!§.§6_§] == §>!!§.§;^§;
         }
         return true;
      }
   }
}
