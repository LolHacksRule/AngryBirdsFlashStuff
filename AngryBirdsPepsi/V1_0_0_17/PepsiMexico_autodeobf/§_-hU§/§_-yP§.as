package §_-HU§
{
   import §_-2m§.§_-lr§;
   import §_-e3§.§_-54§;
   import §_-e3§.§_-JN§;
   import §_-rQ§.§_-Ou§;
   import flash.utils.Dictionary;
   
   public class §_-yP§
   {
      
      public static var §_-K-§:XML;
      
      public static var §_-xQ§:XML;
      
      public static var §_-yZ§:Dictionary;
      
      public static var §_-tF§:Array;
       
      
      public function §_-yP§()
      {
         super();
      }
      
      public static function §_-Zd§(param1:Class, param2:Class) : void
      {
         var _loc3_:XML = null;
         §_-K-§ = §_-JN§.§_-Yd§(param1);
         §_-xQ§ = §_-JN§.§_-Yd§(param2);
         §_-Fm§.§ else§(§_-K-§.Item_Materials,§_-K-§.Material_Damage_Multipliers,§_-K-§.Material_Velocity_Multipliers);
         §_-9d§.§_-rV§(§_-K-§.Item_Resources_Sounds);
         §_-6K§.§_-vb§(§_-K-§.Item_Shapes);
         §_-lr§.§_-X3§(§_-xQ§.Backgrounds);
         §_-yZ§ = new Dictionary();
         §_-tF§ = new Array();
         for each(_loc3_ in §_-K-§.Items.Item)
         {
            §_-tF§.push(_loc3_.@id);
            §_-0m§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost);
         }
         §_-HW§(§_-K-§.SoundChannels);
      }
      
      public static function §_-0m§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number) : void
      {
         §_-yZ§[param1.toLowerCase()] = new §_-Pq§(param1,param2,§_-Fm§.§_-6x§(param3),§_-9d§.§_-yN§(param4),§_-6K§.§_-9B§(param5),param6,param7,param8,param9,param10);
      }
      
      public static function §_-nU§(param1:String) : §_-Pq§
      {
         var _loc2_:§_-Pq§ = §_-yZ§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-54§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-7Y§() : Array
      {
         return §_-tF§;
      }
      
      public static function §_-hX§(param1:String) : Array
      {
         var _loc3_:§_-Pq§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-yZ§)
         {
            if(_loc3_.§_-nE§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-L1§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-Ow§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-HW§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-54§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-54§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-54§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-Ou§.§_-Rz§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-ab§(param1:String) : Boolean
      {
         var _loc2_:§_-Pq§ = §_-nU§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-gs§).§_-qb§[§_-gs§.§_-9b§] == §_-gs§.§_-AZ§;
         }
         return true;
      }
   }
}
