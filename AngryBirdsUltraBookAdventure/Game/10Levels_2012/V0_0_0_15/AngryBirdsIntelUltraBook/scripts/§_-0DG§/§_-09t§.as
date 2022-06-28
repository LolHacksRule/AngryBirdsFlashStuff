package §_-0DG§
{
   import §_-0BH§.§_-FK§;
   import §_-4g§.§_-pX§;
   import §_-9T§.§_-xG§;
   import flash.utils.Dictionary;
   
   public class §_-09t§
   {
      
      public static var §_-nY§:XML;
      
      public static var §_-WR§:XML;
      
      public static var §_-057§:Dictionary = new Dictionary();
      
      public static var §_-jS§:Array;
       
      
      public function §_-09t§()
      {
         super();
      }
      
      public static function §_-0-C§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §_-nY§ = param1;
         §_-WR§ = param2;
         §_-oD§.§_-0BI§(§_-nY§.Item_Materials,§_-nY§.Material_Damage_Multipliers,§_-nY§.Material_Velocity_Multipliers);
         §_-DR§.§_-lI§(§_-nY§.Item_Resources_Sounds);
         §_-xr§.§_-07q§(§_-nY§.Item_Shapes);
         §_-xG§.§_-il§(§_-WR§.Backgrounds);
         §_-057§ = new Dictionary();
         §_-jS§ = new Array();
         for each(_loc3_ in §_-nY§.Items.Item)
         {
            §_-jS§.push(_loc3_.@id);
            §_-aM§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §_-7g§(§_-nY§.SoundChannels);
      }
      
      public static function §_-aM§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §_-057§[param1.toLowerCase()] = new §_-0-A§(param1,param2,§_-oD§.§_-sd§(param3),§_-DR§.§_-dY§(param4),!!param5 ? §_-xr§.§_-0AK§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §_-yf§(param1:String) : §_-0-A§
      {
         var _loc2_:§_-0-A§ = §_-057§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-FK§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-19§() : Array
      {
         return §_-jS§;
      }
      
      public static function §_-Tl§(param1:String) : Array
      {
         var _loc3_:§_-0-A§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-057§)
         {
            if(_loc3_.§_-4k§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-o2§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-8J§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-7g§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-FK§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-FK§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-FK§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-pX§.§_-UJ§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-LD§(param1:String) : Boolean
      {
         var _loc2_:§_-0-A§ = §_-yf§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-au§).§_-zN§[§_-au§.§_-dp§] == §_-au§.§_-cU§;
         }
         return true;
      }
   }
}
