package §package§
{
   import §!!0§.SoundEngine;
   import §<u§.Log;
   import §>=§.LevelThemeBackgroundManager;
   import flash.utils.Dictionary;
   
   public class LevelItemManager
   {
      
      public static var mItemDataTable:XML;
      
      public static var §,w§:XML;
      
      public static var §]6§:Dictionary = new Dictionary();
      
      public static var §+U§:Array;
       
      
      public function LevelItemManager()
      {
         super();
      }
      
      public static function § !i§(param1:XML, param2:XML) : void
      {
         var _loc3_:XML = null;
         mItemDataTable = param1;
         §,w§ = param2;
         LevelItemMaterialManager.§5y§(mItemDataTable.Item_Materials,mItemDataTable.Material_Damage_Multipliers,mItemDataTable.Material_Velocity_Multipliers);
         LevelItemSoundResourceManager.§>E§(mItemDataTable.Item_Resources_Sounds);
         LevelItemShapeManager.§5!'§(mItemDataTable.Item_Shapes);
         LevelThemeBackgroundManager.§[B§(§,w§.Backgrounds);
         §]6§ = new Dictionary();
         §+U§ = new Array();
         for each(_loc3_ in mItemDataTable.Items.Item)
         {
            §+U§.push(_loc3_.@id);
            §1q§(_loc3_.@id,_loc3_.@type,_loc3_.@material,_loc3_.@sounds,_loc3_.@shape,_loc3_.@score,_loc3_.@category,_loc3_.@iconScale,_loc3_.@health,_loc3_.@cost,String(_loc3_.@front).toLowerCase() == "true",_loc3_.@particleJSONId,int(_loc3_.@particleVariationCount));
         }
         §else §(mItemDataTable.SoundChannels);
      }
      
      public static function §1q§(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Number, param7:String, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:String = "", param13:int = 1) : void
      {
         §]6§[param1.toLowerCase()] = new §2Y§(param1,param2,LevelItemMaterialManager.§#!8§(param3),LevelItemSoundResourceManager.§7!6§(param4),Boolean(param5) ? LevelItemShapeManager.§1]§(param5) : null,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public static function §-`§(param1:String) : §2Y§
      {
         var _loc2_:§2Y§ = §]6§[param1.toLowerCase()];
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         Log.log("WARNING: LevelItem -> getItem request has no return value, this item does not exist: " + param1);
         return null;
      }
      
      public static function §2L§() : Array
      {
         return §+U§;
      }
      
      public static function § if§(param1:String) : Array
      {
         var _loc3_:§2Y§ = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in §]6§)
         {
            if(_loc3_.§[L§.toUpperCase() == param1.toUpperCase())
            {
               _loc2_[_loc2_.length] = _loc3_.§ I§;
            }
         }
         return _loc2_;
      }
      
      public static function §;i§() : String
      {
         var _loc1_:Array = new Array("BIRD_RED","BIRD_YELLOW");
         var _loc2_:Number = Math.random();
         var _loc3_:int = _loc2_ * _loc1_.length as Number;
         return _loc1_[_loc3_ as int] as String;
      }
      
      public static function §else §(param1:XMLList) : void
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
            SoundEngine.§ Q§(_loc2_.@name,_loc2_.@maxSound,_loc2_.@volume);
         }
      }
      
      public static function §1,§(param1:String) : Boolean
      {
         var _loc2_:§2Y§ = §-`§(param1);
         if(_loc2_)
         {
            return (_loc2_.material as LevelItemMaterial).§>q§[LevelItemMaterial.§+o§] == LevelItemMaterial.§>s§;
         }
         return true;
      }
   }
}
