package §_-B7§
{
   import §_-5A§.§_-Lu§;
   import §_-5x§.§_-8p§;
   import §_-ZG§.§_-Ne§;
   import §_-ZG§.§_-eW§;
   import flash.utils.Dictionary;
   
   public class §_-cO§
   {
      
      public static var §_-Sq§:XML;
      
      public static var §_-5G§:XML;
      
      public static var §_-rp§:Dictionary;
      
      public static var §_-N1§:Array;
       
      
      public function §_-cO§()
      {
         super();
      }
      
      public static function §_-ua§(param1:Class, param2:Class) : void
      {
         var _loc3_:XML = null;
         §_-Sq§ = §_-eW§.§_-Qf§(param1);
         §_-5G§ = §_-eW§.§_-Qf§(param2);
         §_-2s§.§_-ra§(§_-Sq§.Item_Materials,§_-Sq§.Material_Damage_Multipliers,§_-Sq§.Material_Velocity_Multipliers);
         §_-9O§.§_-4L§(§_-Sq§.Item_Resources_Sounds);
         §_-Wr§.§_-0H§(§_-Sq§.Item_Shapes);
         §_-Lu§.§_-uU§(§_-5G§.Backgrounds);
         §_-rp§ = new Dictionary();
         §_-N1§ = new Array();
         for each(_loc3_ in §_-Sq§.Items.Item)
         {
            §_-N1§.push(_loc3_.@id);
            §_-0F§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost);
         }
         §_-te§(§_-Sq§.SoundChannels);
      }
      
      public static function §_-0F§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number) : void
      {
         §_-rp§[param1.toLowerCase()] = new §_-G§(param1,param2,§_-2s§.§_-Br§(param3),§_-9O§.§_-XG§(param4),§_-Wr§.§_-pN§(param5),param6,param7,param8,param9,param10);
      }
      
      public static function §_-9y§(param1:String) : §_-G§
      {
         var _loc2_:§_-G§ = §_-rp§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-Ne§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-sf§() : Array
      {
         return §_-N1§;
      }
      
      public static function §_-Od§(param1:String) : Array
      {
         var _loc3_:§_-G§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-rp§)
         {
            if(_loc3_.§_-9J§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-Pd§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-tI§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-te§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-Ne§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-8p§.§_-qQ§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-E-§(param1:String) : Boolean
      {
         var _loc2_:§_-G§ = §_-9y§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-7Y§).§_-pO§[§_-7Y§.§_-kX§] == §_-7Y§.§_-Pm§;
         }
         return true;
      }
   }
}
