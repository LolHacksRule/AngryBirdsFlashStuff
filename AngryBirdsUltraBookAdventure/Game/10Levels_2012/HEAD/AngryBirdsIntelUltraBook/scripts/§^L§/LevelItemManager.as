package §^L§
{
   import §'N§.Log;
   import §3!j§.SoundEngine;
   import §[a§.LevelThemeBackgroundManager;
   import flash.utils.Dictionary;
   
   public class LevelItemManager
   {
      
      public static var mItemDataTable:XML;
      
      public static var §!!e§:XML;
      
      public static var § !]§:Dictionary = new Dictionary();
      
      public static var §5!i§:Array;
       
      
      public function LevelItemManager()
      {
         super();
      }
      
      public static function §&a§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         mItemDataTable = param1;
         §!!e§ = param2;
         LevelItemMaterialManager.§>P§(mItemDataTable.Item_Materials,mItemDataTable.Material_Damage_Multipliers,mItemDataTable.Material_Velocity_Multipliers);
         LevelItemSoundResourceManager.§^>§(mItemDataTable.Item_Resources_Sounds);
         LevelItemShapeManager.§switch§(mItemDataTable.Item_Shapes);
         LevelThemeBackgroundManager.§@@§(§!!e§.Backgrounds);
         § !]§ = new Dictionary();
         §5!i§ = new Array();
         for each(_loc3_ in mItemDataTable.Items.Item)
         {
            §5!i§.push(_loc3_.@id);
            §"!&§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §"S§(mItemDataTable.SoundChannels);
      }
      
      public static function §"!&§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         § !]§[param1.toLowerCase()] = new §0!J§(param1,param2,LevelItemMaterialManager.§&y§(param3),LevelItemSoundResourceManager.§5p§(param4),Boolean(param5) ? LevelItemShapeManager.§'!,§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §><§(param1:String) : §0!J§
      {
         var _loc2_:§0!J§ = § !]§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         Log.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §#!E§() : Array
      {
         return §5!i§;
      }
      
      public static function §5!0§(param1:String) : Array
      {
         var _loc3_:§0!J§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in § !]§)
         {
            if(_loc3_.§`5§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§4!W§;
            }
         }
         return _loc2_;
      }
      
      public static function §4y§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §"S§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1.Channel)
         {
            if(_loc2_.attribute("name").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() name is missing: ");
            }
            if(_loc2_.attribute("maxSound").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() maxSound is missing: " + _loc2_.@name);
            }
            if(_loc2_.attribute("volume").length() <= 0)
            {
               Log.log("WARNING, LevelItems->loadSoundChannels() volume is missing: " + _loc2_.@name);
            }
            SoundEngine.§"!"§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §,d§(param1:String) : Boolean
      {
         var _loc2_:§0!J§ = §><§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as LevelItemMaterial).§%j§[LevelItemMaterial.§?!3§] == LevelItemMaterial.§>Z§;
         }
         return true;
      }
   }
}
