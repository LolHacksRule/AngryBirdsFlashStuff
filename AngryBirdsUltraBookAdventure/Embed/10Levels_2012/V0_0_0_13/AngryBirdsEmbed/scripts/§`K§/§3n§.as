package §`K§
{
   import §%$§.§3V§;
   import §0!<§.§#y§;
   import §?!?§.§3!E§;
   import flash.utils.Dictionary;
   
   public class §3n§
   {
      
      public static var §3!5§:XML;
      
      public static var §]N§:XML;
      
      public static var §2x§:Dictionary = new Dictionary();
      
      public static var §!P§:Array;
       
      
      public function §3n§()
      {
         super();
      }
      
      public static function §>!%§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §3!5§ = param1;
         §]N§ = param2;
         §?x§.§-§(§3!5§.Item_Materials,§3!5§.Material_Damage_Multipliers,§3!5§.Material_Velocity_Multipliers);
         §-!1§.§[!6§(§3!5§.Item_Resources_Sounds);
         §54§.§>j§(§3!5§.Item_Shapes);
         §3V§.§2=§(§]N§.Backgrounds);
         §2x§ = new Dictionary();
         §!P§ = new Array();
         for each(_loc3_ in §3!5§.Items.Item)
         {
            §!P§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §,q§(§3!5§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §2x§[param1.toLowerCase()] = new §+i§(param1,param2,§?x§.§2E§(param3),§-!1§.§8M§(param4),!!param5 ? §54§.§'4§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §]B§(param1:String) : §+i§
      {
         var _loc2_:§+i§ = §2x§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §#y§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §#!C§() : Array
      {
         return §!P§;
      }
      
      public static function §04§(param1:String) : Array
      {
         var _loc3_:§+i§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §2x§)
         {
            if(_loc3_.§,m§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§'!,§;
            }
         }
         return _loc2_;
      }
      
      public static function §!!!§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §,q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §#y§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §#y§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §#y§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §3!E§.§5!%§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §4F§(param1:String) : Boolean
      {
         var _loc2_:§+i§ = §]B§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §7g§).§-a§[§7g§.§7i§] == §7g§.§0!!§;
         }
         return true;
      }
   }
}
