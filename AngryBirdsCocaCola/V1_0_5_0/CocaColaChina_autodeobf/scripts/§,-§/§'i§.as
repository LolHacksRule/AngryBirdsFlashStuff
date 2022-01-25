package §,-§
{
   import §!w§.§1c§;
   import §<!!§.§-"§;
   import §=L§.§@E§;
   import flash.utils.Dictionary;
   
   public class §'i§
   {
      
      public static var § 5§:XML;
      
      public static var §3! §:XML;
      
      public static var §@!X§:Dictionary = new Dictionary();
      
      public static var §5D§:Array;
       
      
      public function §'i§()
      {
         super();
      }
      
      public static function §3^§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         § 5§ = param1;
         §3! § = param2;
         §0S§.§^o§(§ 5§.Item_Materials,§ 5§.Material_Damage_Multipliers,§ 5§.Material_Velocity_Multipliers);
         §'c§.§>!T§(§ 5§.Item_Resources_Sounds);
         §?!M§.§!!5§(§ 5§.Item_Shapes);
         §1c§.§,$§(§3! §.Backgrounds);
         §@!X§ = new Dictionary();
         §5D§ = new Array();
         for each(_loc3_ in § 5§.Items.Item)
         {
            §5D§.push(_loc3_.@id);
            §2[§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §&!N§(§ 5§.SoundChannels);
      }
      
      public static function §2[§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §@!X§[param1.toLowerCase()] = new §7i§(param1,param2,§0S§.§]?§(param3),§'c§.§+! §(param4),!!param5 ? §?!M§.§57§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §6!R§(param1:String) : §7i§
      {
         var _loc2_:§7i§ = §@!X§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §-"§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §?!6§() : Array
      {
         return §5D§;
      }
      
      public static function §9^§(param1:String) : Array
      {
         var _loc3_:§7i§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §@!X§)
         {
            if(_loc3_.§8!+§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§3a§;
            }
         }
         return _loc2_;
      }
      
      public static function §,k§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §&!N§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §-"§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §-"§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §-"§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §@E§.§8!-§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §]h§(param1:String) : Boolean
      {
         var _loc2_:§7i§ = §6!R§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as § q§).mValues[§ q§.§+R§] == § q§.§-2§;
         }
         return true;
      }
   }
}
