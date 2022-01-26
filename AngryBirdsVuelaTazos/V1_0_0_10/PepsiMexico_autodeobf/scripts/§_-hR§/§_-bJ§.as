package §_-hR§
{
   import §_-FZ§.§_-2Q§;
   import §_-oZ§.§_-JH§;
   import §_-ot§.§_-TP§;
   import §_-ot§.§_-o6§;
   import flash.utils.Dictionary;
   
   public class §_-bJ§
   {
      
      public static var §_-bB§:XML;
      
      public static var §_-EM§:XML;
      
      public static var §_-Oe§:Dictionary;
      
      public static var §_-Pw§:Array;
       
      
      public function §_-bJ§()
      {
         super();
      }
      
      public static function §_-BU§(param1:Class, param2:Class) : void
      {
         var _loc3_:XML = null;
         §_-bB§ = §_-TP§.§_-bz§(param1);
         §_-EM§ = §_-TP§.§_-bz§(param2);
         §_-RG§.§_-0I§(§_-bB§.Item_Materials,§_-bB§.Material_Damage_Multipliers,§_-bB§.Material_Velocity_Multipliers);
         §_-JG§.§_-Qr§(§_-bB§.Item_Resources_Sounds);
         §_-YU§.§_-FP§(§_-bB§.Item_Shapes);
         §_-2Q§.§_-BF§(§_-EM§.Backgrounds);
         §_-Oe§ = new Dictionary();
         §_-Pw§ = new Array();
         for each(_loc3_ in §_-bB§.Items.Item)
         {
            §_-Pw§.push(_loc3_.@id);
            §_-Ap§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost);
         }
         §_-gk§(§_-bB§.SoundChannels);
      }
      
      public static function §_-Ap§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number) : void
      {
         §_-Oe§[param1.toLowerCase()] = new §_-RJ§(param1,param2,§_-RG§.§_-tO§(param3),§_-JG§.§_-O5§(param4),§_-YU§.§_-lk§(param5),param6,param7,param8,param9,param10);
      }
      
      public static function §_-hL§(param1:String) : §_-RJ§
      {
         var _loc2_:§_-RJ§ = §_-Oe§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-o6§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-iR§() : Array
      {
         return §_-Pw§;
      }
      
      public static function §_-Cd§(param1:String) : Array
      {
         var _loc3_:§_-RJ§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-Oe§)
         {
            if(_loc3_.§_-7g§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-TR§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-f1§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-gk§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-o6§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-o6§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-o6§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-JH§.§_-IT§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-st§(param1:String) : Boolean
      {
         var _loc2_:§_-RJ§ = §_-hL§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-X9§).§_-76§[§_-X9§.§_-bx§] == §_-X9§.§_-bF§;
         }
         return true;
      }
   }
}
