package §^-§
{
   import §%i§.§#`§;
   import §0i§.§]_§;
   import §2!@§.§;!Z§;
   import flash.utils.Dictionary;
   
   public class §;!f§
   {
      
      public static var §,+§:XML;
      
      public static var §-=§:XML;
      
      public static var §'t§:Dictionary = new Dictionary();
      
      public static var §5!V§:Array;
       
      
      public function §;!f§()
      {
         super();
      }
      
      public static function §;!X§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §,+§ = param1;
         §-=§ = param2;
         §^K§.§7F§(§,+§.Item_Materials,§,+§.Material_Damage_Multipliers,§,+§.Material_Velocity_Multipliers);
         §&s§.§^!B§(§,+§.Item_Resources_Sounds);
         §,4§.§'!X§(§,+§.Item_Shapes);
         §;!Z§.§;!J§(§-=§.Backgrounds);
         §'t§ = new Dictionary();
         §5!V§ = new Array();
         for each(_loc3_ in §,+§.Items.Item)
         {
            §5!V§.push(_loc3_.@id);
            §'n§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §8&§(§,+§.SoundChannels);
      }
      
      public static function §'n§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §'t§[param1.toLowerCase()] = new §4!`§(param1,param2,§^K§.§ !<§(param3),§&s§.§5d§(param4),!!param5 ? §,4§.§<!D§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §]!L§(param1:String) : §4!`§
      {
         var _loc2_:§4!`§ = §'t§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §]_§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §#K§() : Array
      {
         return §5!V§;
      }
      
      public static function §@g§(param1:String) : Array
      {
         var _loc3_:§4!`§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §'t§)
         {
            if(_loc3_.§6n§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§]D§;
            }
         }
         return _loc2_;
      }
      
      public static function §7!@§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §8&§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §]_§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §]_§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §]_§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §#`§.§@z§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function native(param1:String) : Boolean
      {
         var _loc2_:§4!`§ = §]!L§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §#!3§).§]w§[§#!3§.§<J§] == §#!3§.§>I§;
         }
         return true;
      }
   }
}
