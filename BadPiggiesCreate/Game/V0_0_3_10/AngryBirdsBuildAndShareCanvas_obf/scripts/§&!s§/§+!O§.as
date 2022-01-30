package §&!s§
{
   import §'!s§.§;2§;
   import §5^§.§ !x§;
   import §9!G§.§]!e§;
   import flash.utils.Dictionary;
   
   public class §+!O§
   {
      
      public static var §>!d§:XML;
      
      public static var §-" §:XML;
      
      public static var §`F§:Dictionary = new Dictionary();
      
      public static var §+g§:Array;
       
      
      public function §+!O§()
      {
         super();
      }
      
      public static function §6!&§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §>!d§ = param1;
         §-" § = param2;
         §,c§.§#D§(§>!d§.Item_Materials,§>!d§.Material_Damage_Multipliers,§>!d§.Material_Velocity_Multipliers);
         §true §.§9!#§(§>!d§.Item_Resources_Sounds);
         §["4§.§6"0§(§>!d§.Item_Shapes);
         §;2§.§2a§(§-" §.Backgrounds);
         §`F§ = new Dictionary();
         §+g§ = new Array();
         for each(_loc3_ in §>!d§.Items.Item)
         {
            §+g§.push(_loc3_.@id);
            §!!S§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §1"§(§>!d§.SoundChannels);
      }
      
      public static function §!!S§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §`F§[param1.toLowerCase()] = new §1!S§(param1,param2,§,c§.§#?§(param3),§true §.§null §(param4),!!param5 ? §["4§.§>!!§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §?!b§(param1:String) : §1!S§
      {
         var _loc2_:§1!S§ = §`F§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §]!e§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §#@§() : Array
      {
         return §+g§;
      }
      
      public static function §&w§(param1:String) : Array
      {
         var _loc3_:§1!S§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §`F§)
         {
            if(_loc3_.§%"9§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§'!l§;
            }
         }
         return _loc2_;
      }
      
      public static function §&>§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §1"§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §]!e§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §]!e§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §]!e§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            § !x§.§'^§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §-!G§(param1:String) : Boolean
      {
         var _loc2_:§1!S§ = §?!b§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §=!E§).§-G§[§=!E§.§0! §] == §=!E§.§0!n§;
         }
         return true;
      }
   }
}
