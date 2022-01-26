package §_-H2§
{
   import §_-2V§.§_-iY§;
   import §_-RG§.§_-HT§;
   import §_-RG§.§_-gL§;
   import §_-am§.§_-XJ§;
   import flash.utils.Dictionary;
   
   public class §_-Z§
   {
      
      public static var §_-NN§:XML;
      
      public static var §_-q-§:XML;
      
      public static var §_-X5§:Dictionary;
      
      public static var §_-4T§:Array;
       
      
      public function §_-Z§()
      {
         super();
      }
      
      public static function §_-rN§(param1:Class, param2:Class) : void
      {
         var _loc3_:XML = null;
         §_-NN§ = §_-gL§.§_-Bp§(param1);
         §_-q-§ = §_-gL§.§_-Bp§(param2);
         §_-I1§.§_-At§(§_-NN§.Item_Materials,§_-NN§.Material_Damage_Multipliers,§_-NN§.Material_Velocity_Multipliers);
         §_-ui§.§_-ai§(§_-NN§.Item_Resources_Sounds);
         §_-Z4§.§_-2t§(§_-NN§.Item_Shapes);
         §_-iY§.§_-Gg§(§_-q-§.Backgrounds);
         §_-X5§ = new Dictionary();
         §_-4T§ = new Array();
         for each(_loc3_ in §_-NN§.Items.Item)
         {
            §_-4T§.push(_loc3_.@id);
            §_-CZ§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost);
         }
         §_-t§(§_-NN§.SoundChannels);
      }
      
      public static function §_-CZ§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number) : void
      {
         §_-X5§[param1.toLowerCase()] = new §_-Wq§(param1,param2,§_-I1§.§_-6z§(param3),§_-ui§.§_-CC§(param4),§_-Z4§.§_-6L§(param5),param6,param7,param8,param9,param10);
      }
      
      public static function §_-5d§(param1:String) : §_-Wq§
      {
         var _loc2_:§_-Wq§ = §_-X5§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-HT§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-1j§() : Array
      {
         return §_-4T§;
      }
      
      public static function §_-mz§(param1:String) : Array
      {
         var _loc3_:§_-Wq§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-X5§)
         {
            if(_loc3_.§_-f8§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-s7§;
            }
         }
         return _loc2_;
      }
      
      public static function §if §() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-t§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-HT§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-HT§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-HT§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-XJ§.§_-d9§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-u1§(param1:String) : Boolean
      {
         var _loc2_:§_-Wq§ = §_-5d§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-pd§).§_-Up§[§_-pd§.§_-B2§] == §_-pd§.§_-dU§;
         }
         return true;
      }
   }
}
