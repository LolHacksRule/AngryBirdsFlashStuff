package §_-TV§
{
   import §_-Ob§.§_-4y§;
   import §_-VH§.§_-X6§;
   import §_-aA§.§_-I0§;
   import flash.utils.Dictionary;
   
   public class §_-gb§
   {
      
      public static var §_-pR§:XML;
      
      public static var §_-C1§:XML;
      
      public static var §_-uU§:Dictionary = new Dictionary();
      
      public static var §_-R9§:Array;
       
      
      public function §_-gb§()
      {
         super();
      }
      
      public static function §_-MD§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §_-pR§ = param1;
         §_-C1§ = param2;
         §_-ZH§.§_-AC§(§_-pR§.Item_Materials,§_-pR§.Material_Damage_Multipliers,§_-pR§.Material_Velocity_Multipliers);
         §_-0-Y§.§_-K5§(§_-pR§.Item_Resources_Sounds);
         §_-JQ§.§_-6z§(§_-pR§.Item_Shapes);
         §_-4y§.§_-IB§(§_-C1§.Backgrounds);
         §_-uU§ = new Dictionary();
         §_-R9§ = new Array();
         for each(_loc3_ in §_-pR§.Items.Item)
         {
            §_-R9§.push(_loc3_.@id);
            §_-2Q§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §_-Ri§(§_-pR§.SoundChannels);
      }
      
      public static function §_-2Q§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §_-uU§[param1.toLowerCase()] = new §_-Or§(param1,param2,§_-ZH§.§_-mo§(param3),§_-0-Y§.§_-fS§(param4),!!param5 ? §_-JQ§.§_-NS§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §_-iR§(param1:String) : §_-Or§
      {
         var _loc2_:§_-Or§ = §_-uU§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-I0§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-Q9§() : Array
      {
         return §_-R9§;
      }
      
      public static function §_-AA§(param1:String) : Array
      {
         var _loc3_:§_-Or§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-uU§)
         {
            if(_loc3_.§_-GN§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-05§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-z3§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-Ri§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-I0§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-X6§.§_-mq§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-C0§(param1:String) : Boolean
      {
         var _loc2_:§_-Or§ = §_-iR§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-m0§).§_-a6§[§_-m0§.§_-Dl§] == §_-m0§.§_-2g§;
         }
         return true;
      }
   }
}
