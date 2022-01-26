package §2!"§
{
   import §'m§.§^S§;
   import §>Z§.§2;§;
   import §^!1§.§6v§;
   import flash.utils.Dictionary;
   
   public class §4!%§
   {
      
      public static var §[Z§:XML;
      
      public static var §`,§:XML;
      
      public static var §0V§:Dictionary = new Dictionary();
      
      public static var §%3§:Array;
       
      
      public function §4!%§()
      {
         super();
      }
      
      public static function §^!4§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §[Z§ = param1;
         §`,§ = param2;
         § else§.§ i§(§[Z§.Item_Materials,§[Z§.Material_Damage_Multipliers,§[Z§.Material_Velocity_Multipliers);
         §"b§.§>!&§(§[Z§.Item_Resources_Sounds);
         §=_§.§?^§(§[Z§.Item_Shapes);
         §6v§.§[!,§(§`,§.Backgrounds);
         §0V§ = new Dictionary();
         §%3§ = new Array();
         for each(_loc3_ in §[Z§.Items.Item)
         {
            §%3§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §-D§(§[Z§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §0V§[param1.toLowerCase()] = new § !A§(param1,param2,§ else§.§?`§(param3),§"b§.§2p§(param4),!!param5 ? §=_§.§28§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §`!+§(param1:String) : § !A§
      {
         var _loc2_:§ !A§ = §0V§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §^S§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function § A§() : Array
      {
         return §%3§;
      }
      
      public static function §"4§(param1:String) : Array
      {
         var _loc3_:§ !A§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §0V§)
         {
            if(_loc3_.§5E§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§5o§;
            }
         }
         return _loc2_;
      }
      
      public static function §6l§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §-D§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §^S§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §^S§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §^S§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §2;§.§^=§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §7!G§(param1:String) : Boolean
      {
         var _loc2_:§ !A§ = §`!+§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as § ^§).§^!D§[§ ^§.§=T§] == § ^§.§;h§;
         }
         return true;
      }
   }
}
