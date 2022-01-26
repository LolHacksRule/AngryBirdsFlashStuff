package §?!H§
{
   import §!4§.§=!Z§;
   import §;C§.§5!O§;
   import §]!J§.§`!^§;
   import flash.utils.Dictionary;
   
   public class §!h§
   {
      
      public static var §1#§:XML;
      
      public static var §6n§:XML;
      
      public static var §-8§:Dictionary = new Dictionary();
      
      public static var §&!1§:Array;
       
      
      public function §!h§()
      {
         super();
      }
      
      public static function §!r§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §1#§ = param1;
         §6n§ = param2;
         §5!^§.§8!J§(§1#§.Item_Materials,§1#§.Material_Damage_Multipliers,§1#§.Material_Velocity_Multipliers);
         §2i§.§0+§(§1#§.Item_Resources_Sounds);
         § c§.§?v§(§1#§.Item_Shapes);
         §`!^§.§[F§(§6n§.Backgrounds);
         §-8§ = new Dictionary();
         §&!1§ = new Array();
         for each(_loc3_ in §1#§.Items.Item)
         {
            §&!1§.push(_loc3_.@id);
            §^! §(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §`!Z§(§1#§.SoundChannels);
      }
      
      public static function §^! §(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §-8§[param1.toLowerCase()] = new §]!H§(param1,param2,§5!^§.§,5§(param3),§2i§.§-%§(param4),!!param5 ? § c§.§<!7§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §2M§(param1:String) : §]!H§
      {
         var _loc2_:§]!H§ = §-8§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §=!Z§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §`b§() : Array
      {
         return §&!1§;
      }
      
      public static function §=t§(param1:String) : Array
      {
         var _loc3_:§]!H§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §-8§)
         {
            if(_loc3_.§&r§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§]!W§;
            }
         }
         return _loc2_;
      }
      
      public static function §9+§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §`!Z§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §=!Z§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §=!Z§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §=!Z§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §5!O§.§>n§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §<r§(param1:String) : Boolean
      {
         var _loc2_:§]!H§ = §2M§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §+e§).§@!5§[§+e§.§0V§] == §+e§.§!5§;
         }
         return true;
      }
   }
}
