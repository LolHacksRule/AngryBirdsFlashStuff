package §>#Y§
{
   import §-!j§.§,"!§;
   import §?o§.§ !B§;
   import §?o§.§4#?§;
   import §[!&§.§""B§;
   import §[!&§.§`#D§;
   
   public class §^!A§ extends §"1§
   {
       
      
      protected var §+#D§:§,"!§;
      
      protected var §@D§:Vector.<String>;
      
      public function §^!A§(param1:§4#?§, param2:§,"!§)
      {
         this.§@D§ = new Vector.<String>();
         this.§+#D§ = param2;
         super(param1);
      }
      
      override protected function initializeFile(param1:String) : void
      {
         var _loc4_:String = null;
         var _loc2_:Array = param1.match(/^levels\/(.*)\.lua$/i);
         if(_loc2_)
         {
            _loc4_ = _loc2_[1].toLowerCase();
            this.initializeLevelLuaFile(_loc4_,param1);
            return;
         }
         var _loc3_:Array = param1.match(/^blocks_(.*)\.lua$/i);
         if(_loc3_)
         {
            if(param1.indexOf("levelgoals") < 0 && param1.indexOf("bosses") < 0)
            {
               this.§@D§.push(§+2§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§ !B§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = § !B§.§"";§(§+2§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
         }
      }
      
      public function get §&2§() : int
      {
         return this.§@D§.length;
      }
      
      public function §3"@§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§@D§.length)
         {
            return this.§@D§[param1];
         }
         return null;
      }
      
      public function §!h§() : String
      {
         return §+2§("damagefactors.lua","core");
      }
      
      public function §;"C§() : String
      {
         return §+2§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§`#D§) : void
      {
         var _loc3_:§""B§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§;"X§)
         {
            _loc3_ = param1.§7"P§(_loc2_);
            if(_loc3_.name.indexOf("TEXTURE_") == 0)
            {
               _loc3_.name = "INGAME_" + _loc3_.name;
            }
            _loc2_++;
         }
         super.addSpriteSheet(param1);
      }
   }
}
