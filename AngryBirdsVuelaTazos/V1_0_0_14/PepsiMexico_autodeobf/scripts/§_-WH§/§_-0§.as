package §_-WH§
{
   import §_-0y§.§_-N4§;
   import §_-6n§.§_-5z§;
   import §_-Eo§.§_-EX§;
   import §_-Eo§.§_-R4§;
   import flash.utils.Dictionary;
   
   public class §_-0§
   {
      
      public static var §_-qS§:XML;
      
      public static var §_-HI§:XML;
      
      public static var §_-pf§:Dictionary;
      
      public static var §_-Pf§:Array;
       
      
      public function §_-0§()
      {
         super();
      }
      
      public static function §_-1w§(param1:Class, param2:Class) : void
      {
         var _loc3_:XML = null;
         §_-qS§ = §_-EX§.§_-e9§(param1);
         §_-HI§ = §_-EX§.§_-e9§(param2);
         §_-Nm§.§_-Ga§(§_-qS§.Item_Materials,§_-qS§.Material_Damage_Multipliers,§_-qS§.Material_Velocity_Multipliers);
         §_-0n§.§_-Fq§(§_-qS§.Item_Resources_Sounds);
         §_-TV§.§_-N3§(§_-qS§.Item_Shapes);
         §_-N4§.§_-Vp§(§_-HI§.Backgrounds);
         §_-pf§ = new Dictionary();
         §_-Pf§ = new Array();
         for each(_loc3_ in §_-qS§.Items.Item)
         {
            §_-Pf§.push(_loc3_.@id);
            §_-mn§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost);
         }
         §_-M9§(§_-qS§.SoundChannels);
      }
      
      public static function §_-mn§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number) : void
      {
         §_-pf§[param1.toLowerCase()] = new §_-r5§(param1,param2,§_-Nm§.§_-Qs§(param3),§_-0n§.§_-0g§(param4),§_-TV§.§_-im§(param5),param6,param7,param8,param9,param10);
      }
      
      public static function §_-vN§(param1:String) : §_-r5§
      {
         var _loc2_:§_-r5§ = §_-pf§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §_-R4§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §_-fp§() : Array
      {
         return §_-Pf§;
      }
      
      public static function §_-Xq§(param1:String) : Array
      {
         var _loc3_:§_-r5§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §_-pf§)
         {
            if(_loc3_.§_-8c§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§_-FK§;
            }
         }
         return _loc2_;
      }
      
      public static function §_-5f§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §_-M9§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §_-R4§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §_-5z§.§_-9b§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §_-c3§(param1:String) : Boolean
      {
         var _loc2_:§_-r5§ = §_-vN§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §_-Yj§).§_-0i§[§_-Yj§.§_-av§] == §_-Yj§.§_-ta§;
         }
         return true;
      }
   }
}
