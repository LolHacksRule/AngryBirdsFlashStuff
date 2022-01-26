package §_-p5§
{
   import §_-U0§.§_-tF§;
   import §_-cb§.§_-0B§;
   import §_-gL§.§_-UR§;
   import flash.utils.Dictionary;
   
   public class §_-lM§
   {
      
      public static var §_-sK§:XML;
      
      public static var §_-Ut§:XML;
      
      public static var §_-l0§:Dictionary = new Dictionary();
      
      public static var §_-Fu§:Array;
       
      
      public function §_-lM§()
      {
         super();
      }
      
      public static function §_-54§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §_-sK§ = param1;
         §_-Ut§ = param2;
         §_-rf§.§_-E4§(§_-sK§.Item_Materials,§_-sK§.Material_Damage_Multipliers,§_-sK§.Material_Velocity_Multipliers);
         §_-Vr§.§_-Kd§(§_-sK§.Item_Resources_Sounds);
         §_-Ro§.§_-nG§(§_-sK§.Item_Shapes);
         §_-UR§.§_-kC§(§_-Ut§.Backgrounds);
         §_-l0§ = new Dictionary();
         §_-Fu§ = new Array();
         for each(_loc3_ in §_-sK§.Items.Item)
         {
            §_-Fu§.push(_loc3_.@id);
            §_-bQ§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true");
         }
         §_-VZ§(§_-sK§.SoundChannels);
      }
      
      public static function §_-bQ§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean) : void
      {
         §_-l0§[param1.toLowerCase()] = new §_-Sv§(param1,param2,§_-rf§.§_-X5§(param3),§_-Vr§.§_-VG§(param4),!!param5 ? §_-Ro§.§_-H8§(param5) : null,param6,param7,param8,param9,param10,param11);
      }
      
      public static function §_-0-i§(param1:String) : §_-Sv§
      {
         var _loc2_:§_-Sv§ = §_-l0§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-tF§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-CQ§() : Array
      {
         return §_-Fu§;
      }
      
      public static function §_-0-H§(param1:String) : Array
      {
         var _loc3_:§_-Sv§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-l0§)
         {
            if(_loc3_.§_-Fc§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-G2§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-W4§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-VZ§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-tF§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-tF§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-tF§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-0B§.§_-2b§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-YG§(param1:String) : Boolean
      {
         var _loc2_:§_-Sv§ = §_-0-i§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-qt§).§_-sF§[§_-qt§.§_-sf§] == §_-qt§.§_-YF§;
         }
         return true;
      }
   }
}
