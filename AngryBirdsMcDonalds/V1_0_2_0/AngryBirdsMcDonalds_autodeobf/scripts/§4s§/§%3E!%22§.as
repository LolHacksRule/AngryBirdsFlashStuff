package §4s§
{
   import § !m§.§6h§;
   import §=<§.§1+§;
   import §]6§.§<"§;
   import flash.utils.Dictionary;
   
   public class §>!"§
   {
      
      public static var §=Z§:XML;
      
      public static var §='§:XML;
      
      public static var §17§:Dictionary = new Dictionary();
      
      public static var §;!+§:Array;
       
      
      public function §>!"§()
      {
         super();
      }
      
      public static function §<!U§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §=Z§ = param1;
         §='§ = param2;
         §>!m§.§!!9§(§=Z§.Item_Materials,§=Z§.Material_Damage_Multipliers,§=Z§.Material_Velocity_Multipliers);
         §9!'§.§6y§(§=Z§.Item_Resources_Sounds);
         §<S§.§"M§(§=Z§.Item_Shapes);
         §<"§.§?5§(§='§.Backgrounds);
         §17§ = new Dictionary();
         §;!+§ = new Array();
         for each(_loc3_ in §=Z§.Items.Item)
         {
            §;!+§.push(_loc3_.@id);
            §>!a§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §8!+§(§=Z§.SoundChannels);
      }
      
      public static function §>!a§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §17§[param1.toLowerCase()] = new §?!O§(param1,param2,§>!m§.§`;§(param3),§9!'§.§5S§(param4),!!param5 ? §<S§.§3!!§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §??§(param1:String) : §?!O§
      {
         var _loc2_:§?!O§ = §17§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §1+§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §7#§() : Array
      {
         return §;!+§;
      }
      
      public static function §^<§(param1:String) : Array
      {
         var _loc3_:§?!O§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §17§)
         {
            if(_loc3_.§^2§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§6!?§;
            }
         }
         return _loc2_;
      }
      
      public static function §9!d§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §8!+§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §1+§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §1+§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §1+§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §6h§.§9o§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §3!-§(param1:String) : Boolean
      {
         var _loc2_:§?!O§ = §??§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §0R§).§?!!§[§0R§.§7!4§] == §0R§.§7!&§;
         }
         return true;
      }
   }
}
