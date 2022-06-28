package §!c§
{
   import §%$§.§3V§;
   import §2!<§.§?!?§;
   import §2§.§0!<§;
   import flash.utils.Dictionary;
   
   public class §`K§
   {
      
      public static var §3n§:XML;
      
      public static var §3!5§:XML;
      
      public static var §7!H§:Dictionary = new Dictionary();
      
      public static var §]N§:Array;
       
      
      public function §`K§()
      {
         super();
      }
      
      public static function §>!%§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §3n§ = param1;
         §3!5§ = param2;
         §<L§.§#l§(§3n§.Item_Materials,§3n§.Material_Damage_Multipliers,§3n§.Material_Velocity_Multipliers);
         §'4§.§?u§(§3n§.Item_Resources_Sounds);
         §5!+§.§[!3§(§3n§.Item_Shapes);
         §3V§.§2=§(§3!5§.Backgrounds);
         §7!H§ = new Dictionary();
         §]N§ = new Array();
         for each(_loc3_ in §3n§.Items.Item)
         {
            §]N§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §!!!§(§3n§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §7!H§[param1.toLowerCase()] = new §2E§(param1,param2,§<L§.§;a§(param3),§'4§.§%C§(param4),!!param5 ? §5!+§.§@!H§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §!P§(param1:String) : §2E§
      {
         var _loc2_:§2E§ = §7!H§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §0!<§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §]B§() : Array
      {
         return §]N§;
      }
      
      public static function §#!C§(param1:String) : Array
      {
         var _loc3_:§2E§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §7!H§)
         {
            if(_loc3_.§';§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§+i§;
            }
         }
         return _loc2_;
      }
      
      public static function §04§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §!!!§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §0!<§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §0!<§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §0!<§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §?!?§.§&P§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §,q§(param1:String) : Boolean
      {
         var _loc2_:§2E§ = §!P§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §4F§).§7g§[§4F§.§@]§] == §4F§.§7i§;
         }
         return true;
      }
   }
}
