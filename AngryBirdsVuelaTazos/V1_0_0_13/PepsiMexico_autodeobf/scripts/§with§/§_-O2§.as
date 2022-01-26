package §with§
{
   import § get§.§_-pD§;
   import §_-1Z§.§_-VN§;
   import §_-ex§.§_-MA§;
   import §_-ex§.§_-mR§;
   import flash.utils.Dictionary;
   
   public class §_-O2§
   {
      
      public static var §_-aC§:XML;
      
      public static var §_-9m§:XML;
      
      public static var §_-7u§:Dictionary;
      
      public static var §_-3p§:Array;
       
      
      public function §_-O2§()
      {
         super();
      }
      
      public static function §_-gY§(param1:Class, param2:Class) : void
      {
         var _loc3_:XML = null;
         §_-aC§ = §_-MA§.§_-lC§(param1);
         §_-9m§ = §_-MA§.§_-lC§(param2);
         §_-A2§.§_-JO§(§_-aC§.Item_Materials,§_-aC§.Material_Damage_Multipliers,§_-aC§.Material_Velocity_Multipliers);
         §_-uJ§.§_-b1§(§_-aC§.Item_Resources_Sounds);
         §_-9R§.§_-Ai§(§_-aC§.Item_Shapes);
         §_-VN§.§_-ad§(§_-9m§.Backgrounds);
         §_-7u§ = new Dictionary();
         §_-3p§ = new Array();
         for each(_loc3_ in §_-aC§.Items.Item)
         {
            §_-3p§.push(_loc3_.@id);
            §_-rO§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost);
         }
         §_-r-§(§_-aC§.SoundChannels);
      }
      
      public static function §_-rO§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number) : void
      {
         §_-7u§[param1.toLowerCase()] = new §_-y7§(param1,param2,§_-A2§.§_-9b§(param3),§_-uJ§.§_-91§(param4),§_-9R§.§do§(param5),param6,param7,param8,param9,param10);
      }
      
      public static function §_-k§(param1:String) : §_-y7§
      {
         var _loc2_:§_-y7§ = §_-7u§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-mR§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-Lx§() : Array
      {
         return §_-3p§;
      }
      
      public static function §_-Qe§(param1:String) : Array
      {
         var _loc3_:§_-y7§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-7u§)
         {
            if(_loc3_.§_-cM§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§true §;
            }
         }
         return _loc2_;
      }
      
      public static function §_-ga§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-r-§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-mR§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-mR§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-mR§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-pD§.§_-xr§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-sM§(param1:String) : Boolean
      {
         var _loc2_:§_-y7§ = §_-k§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-pC§).§_-lS§[§_-pC§.§_-RP§] == §_-pC§.§_-lg§;
         }
         return true;
      }
   }
}
