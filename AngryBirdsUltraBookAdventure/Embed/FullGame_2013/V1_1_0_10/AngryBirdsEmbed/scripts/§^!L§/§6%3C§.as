package §^!L§
{
   import §#X§.§,!F§;
   import §2!,§.§@!2§;
   import §3a§.§7!+§;
   import flash.utils.Dictionary;
   
   public class §6<§
   {
      
      public static var §2D§:XML;
      
      public static var §?0§:XML;
      
      public static var §+q§:Dictionary = new Dictionary();
      
      public static var §7#§:Array;
       
      
      public function §6<§()
      {
         super();
      }
      
      public static function §?!"§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §2D§ = param1;
         §?0§ = param2;
         §9f§.§3$§(§2D§.Item_Materials,§2D§.Material_Damage_Multipliers,§2D§.Material_Velocity_Multipliers);
         §&X§.§^E§(§2D§.Item_Resources_Sounds);
         §#"§.§#!!§(§2D§.Item_Shapes);
         §@!2§.§'y§(§?0§.Backgrounds);
         §+q§ = new Dictionary();
         §7#§ = new Array();
         for each(_loc3_ in §2D§.Items.Item)
         {
            §7#§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §]z§(§2D§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §+q§[param1.toLowerCase()] = new each(param1,param2,§9f§.§0!+§(param3),§&X§.§]!=§(param4),!!param5 ? §#"§.§3@§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §6H§(param1:String) : each
      {
         var _loc2_:each = §+q§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §7!+§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §>!@§() : Array
      {
         return §7#§;
      }
      
      public static function §<?§(param1:String) : Array
      {
         var _loc3_:each = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §+q§)
         {
            if(_loc3_.§8H§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§1>§;
            }
         }
         return _loc2_;
      }
      
      public static function §3[§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §]z§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §7!+§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §7!+§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §7!+§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §,!F§.§@o§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §3U§(param1:String) : Boolean
      {
         var _loc2_:each = §6H§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §5b§).mValues[§5b§.§'!1§] == §5b§.§-!G§;
         }
         return true;
      }
   }
}
