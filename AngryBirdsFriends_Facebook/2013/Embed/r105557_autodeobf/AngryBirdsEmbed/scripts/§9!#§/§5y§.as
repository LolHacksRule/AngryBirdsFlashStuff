package §9!#§
{
   import §8T§.§@o§;
   import §;!;§.§7F§;
   import §?!8§.§2>§;
   import flash.utils.Dictionary;
   
   public class §5y§
   {
      
      public static var §=v§:XML;
      
      public static var §^t§:XML;
      
      public static var §"6§:Dictionary = new Dictionary();
      
      public static var § use§:Array;
       
      
      public function §5y§()
      {
         super();
      }
      
      public static function §`n§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §=v§ = param1;
         §^t§ = param2;
         §`!9§.§0!,§(§=v§.Item_Materials,§=v§.Material_Damage_Multipliers,§=v§.Material_Velocity_Multipliers);
         §;!,§.§+p§(§=v§.Item_Resources_Sounds);
         §]F§.§'=§(§=v§.Item_Shapes);
         §7F§.§#O§(§^t§.Backgrounds);
         §"6§ = new Dictionary();
         § use§ = new Array();
         for each(_loc3_ in §=v§.Items.Item)
         {
            § use§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §^!G§(§=v§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §"6§[param1.toLowerCase()] = new §4!6§(param1,param2,§`!9§.§4!#§(param3),§;!,§.§+;§(param4),!!param5 ? §]F§.§9!6§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §6!%§(param1:String) : §4!6§
      {
         var _loc2_:§4!6§ = §"6§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §2>§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §#!C§() : Array
      {
         return § use§;
      }
      
      public static function §8l§(param1:String) : Array
      {
         var _loc3_:§4!6§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §"6§)
         {
            if(_loc3_.§5p§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§"!!§;
            }
         }
         return _loc2_;
      }
      
      public static function §[!L§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §^!G§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §2>§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §2>§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §2>§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §@o§.§1+§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §%!7§(param1:String) : Boolean
      {
         var _loc2_:§4!6§ = §6!%§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §-!'§).mValues[§-!'§.§2s§] == §-!'§.§6^§;
         }
         return true;
      }
   }
}
