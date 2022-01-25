package §^p§
{
   import §'!G§.§1C§;
   import §7I§.§<!0§;
   import §`! §.§1!#§;
   import flash.utils.Dictionary;
   
   public class §[!P§
   {
      
      public static var §"!C§:XML;
      
      public static var §#!%§:XML;
      
      public static var §1!M§:Dictionary = new Dictionary();
      
      public static var §@i§:Array;
       
      
      public function §[!P§()
      {
         super();
      }
      
      public static function §>,§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §"!C§ = param1;
         §#!%§ = param2;
         § ]§.§;!#§(§"!C§.Item_Materials,§"!C§.Material_Damage_Multipliers,§"!C§.Material_Velocity_Multipliers);
         §#!R§.§=![§(§"!C§.Item_Resources_Sounds);
         §<!>§.§6U§(§"!C§.Item_Shapes);
         §1!#§.§"!6§(§#!%§.Backgrounds);
         §1!M§ = new Dictionary();
         §@i§ = new Array();
         for each(_loc3_ in §"!C§.Items.Item)
         {
            §@i§.push(_loc3_.@id);
            §34§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §0g§(§"!C§.SoundChannels);
      }
      
      public static function §34§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §1!M§[param1.toLowerCase()] = new §'!D§(param1,param2,§ ]§.§>w§(param3),§#!R§.§5!c§(param4),!!param5 ? §<!>§.§;N§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §!I§(param1:String) : §'!D§
      {
         var _loc2_:§'!D§ = §1!M§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §1C§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §#r§() : Array
      {
         return §@i§;
      }
      
      public static function §72§(param1:String) : Array
      {
         var _loc3_:§'!D§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §1!M§)
         {
            if(_loc3_.§9p§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§1T§;
            }
         }
         return _loc2_;
      }
      
      public static function §-9§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §0g§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §1C§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §1C§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §1C§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §<!0§.§"!#§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §&=§(param1:String) : Boolean
      {
         var _loc2_:§'!D§ = §!I§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §=!3§).mValues[§=!3§.§;<§] == §=!3§.§4! §;
         }
         return true;
      }
   }
}
