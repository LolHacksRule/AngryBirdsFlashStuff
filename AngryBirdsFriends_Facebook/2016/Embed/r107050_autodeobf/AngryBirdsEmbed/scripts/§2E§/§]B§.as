package §2E§
{
   import §'6§.§?!L§;
   import §+[§.§%G§;
   import §1!K§.§==§;
   import flash.utils.Dictionary;
   
   public class §]B§
   {
      
      public static var §'!8§:XML;
      
      public static var §=T§:XML;
      
      public static var § else§:Dictionary = new Dictionary();
      
      public static var §9f§:Array;
       
      
      public function §]B§()
      {
         super();
      }
      
      public static function §^=§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         §'!8§ = param1;
         §=T§ = param2;
         §8i§.§1i§(§'!8§.Item_Materials,§'!8§.Material_Damage_Multipliers,§'!8§.Material_Velocity_Multipliers);
         §;q§.§%i§(§'!8§.Item_Resources_Sounds);
         §]!H§.§'j§(§'!8§.Item_Shapes);
         §==§.§&j§(§=T§.Backgrounds);
         § else§ = new Dictionary();
         §9f§ = new Array();
         for each(_loc3_ in §'!8§.Items.Item)
         {
            §9f§.push(_loc3_.@id);
            addItem(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §;,§(§'!8§.SoundChannels);
      }
      
      public static function addItem(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         § else§[param1.toLowerCase()] = new §%-§(param1,param2,§8i§.§<h§(param3),§;q§.§!!§(param4),!!param5 ? §]!H§.§@Y§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §1l§(param1:String) : §%-§
      {
         var _loc2_:§%-§ = § else§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         §?!L§.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §9j§() : Array
      {
         return §9f§;
      }
      
      public static function §#N§(param1:String) : Array
      {
         var _loc3_:§%-§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in § else§)
         {
            if(_loc3_.§5v§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§4h§;
            }
         }
         return _loc2_;
      }
      
      public static function §4!§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §;,§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               §?!L§.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               §?!L§.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               §?!L§.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            §%G§.§>,§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §&!@§(param1:String) : Boolean
      {
         var _loc2_:§%-§ = §1l§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as §5!8§).mValues[§5!8§.§4!4§] == §5!8§.§&-§;
         }
         return true;
      }
   }
}
