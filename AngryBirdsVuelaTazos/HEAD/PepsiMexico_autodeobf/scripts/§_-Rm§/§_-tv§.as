package §_-Rm§
{
   import §_-4K§.§_-Av§;
   import §_-gM§.§_-yj§;
   import §_-h3§.§_-EL§;
   import flash.utils.Dictionary;
   
   public class §_-tv§
   {
      
      public static var §_-y1§:XML;
      
      public static var §_-Wq§:XML;
      
      public static var §_-dD§:Dictionary = new Dictionary();
      
      public static var §_-KO§:Array;
       
      
      public function §_-tv§()
      {
         super();
      }
      
      public static function §_-KQ§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §_-y1§ = param1;
         §_-Wq§ = param2;
         §_-ZV§.§_-rA§(§_-y1§.Item_Materials,§_-y1§.Material_Damage_Multipliers,§_-y1§.Material_Velocity_Multipliers);
         §_-UU§.§_-St§(§_-y1§.Item_Resources_Sounds);
         §_-BC§.§_-rt§(§_-y1§.Item_Shapes);
         §_-EL§.§_-hC§(§_-Wq§.Backgrounds);
         §_-dD§ = new Dictionary();
         §_-KO§ = new Array();
         for each(_loc3_ in §_-y1§.Items.Item)
         {
            §_-KO§.push(_loc3_.@id);
            §_-1t§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §_-5q§(§_-y1§.SoundChannels);
      }
      
      public static function §_-1t§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §_-dD§[param1.toLowerCase()] = new §_-kO§(param1,param2,§_-ZV§.§_-ms§(param3),§_-UU§.§_-sZ§(param4),!!param5 ? §_-BC§.§_-6e§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §get §(param1:String) : §_-kO§
      {
         var _loc2_:§_-kO§ = §_-dD§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-yj§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-L2§() : Array
      {
         return §_-KO§;
      }
      
      public static function §_-af§(param1:String) : Array
      {
         var _loc3_:§_-kO§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-dD§)
         {
            if(_loc3_.§_-xV§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-ep§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-uN§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-5q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-yj§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-yj§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-yj§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-Av§.§_-Zy§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-JX§(param1:String) : Boolean
      {
         var _loc2_:§_-kO§ = §get §(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-bY§).§_-m8§[§_-bY§.§_-s5§] == §_-bY§.§_-Hl§;
         }
         return true;
      }
   }
}
