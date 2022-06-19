package §_-X4§
{
   import §_-E5§.§_-Wo§;
   import §_-o§.§_-a0§;
   import §_-r6§.§_-Oy§;
   import flash.utils.Dictionary;
   
   public class §_-rI§
   {
      
      public static var §_-I-§:XML;
      
      public static var §_-Ja§:XML;
      
      public static var §_-3P§:Dictionary = new Dictionary();
      
      public static var §_-W0§:Array;
       
      
      public function §_-rI§()
      {
         super();
      }
      
      public static function §_-9u§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §_-I-§ = param1;
         §_-Ja§ = param2;
         §_-VQ§.§_-vv§(§_-I-§.Item_Materials,§_-I-§.Material_Damage_Multipliers,§_-I-§.Material_Velocity_Multipliers);
         §_-XP§.§_-hR§(§_-I-§.Item_Resources_Sounds);
         §_-CT§.§_-Jj§(§_-I-§.Item_Shapes);
         §_-a0§.§_-00i§(§_-Ja§.Backgrounds);
         §_-3P§ = new Dictionary();
         §_-W0§ = new Array();
         for each(_loc3_ in §_-I-§.Items.Item)
         {
            §_-W0§.push(_loc3_.@id);
            §_-pd§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §_-y-§(§_-I-§.SoundChannels);
      }
      
      public static function §_-pd§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §_-3P§[param1.toLowerCase()] = new §_-EY§(param1,param2,§_-VQ§.§_-UC§(param3),§_-XP§.§_-c9§(param4),!!param5 ? §_-CT§.§_-ao§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §_-0l§(param1:String) : §_-EY§
      {
         var _loc2_:§_-EY§ = §_-3P§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-Oy§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-3§() : Array
      {
         return §_-W0§;
      }
      
      public static function §_-Lm§(param1:String) : Array
      {
         var _loc3_:§_-EY§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-3P§)
         {
            if(_loc3_.§_-ob§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-k-§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-4S§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-y-§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-Oy§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-Wo§.§_-FT§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-QS§(param1:String) : Boolean
      {
         var _loc2_:§_-EY§ = §_-0l§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-Fs§).§_-zO§[§_-Fs§.§_-mP§] == §_-Fs§.§_-LE§;
         }
         return true;
      }
   }
}
