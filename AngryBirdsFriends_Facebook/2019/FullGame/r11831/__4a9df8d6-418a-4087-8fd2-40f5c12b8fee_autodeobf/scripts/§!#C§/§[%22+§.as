package §!#C§
{
   import §,"v§.§;"n§;
   import §,"v§.§[!I§;
   import §;$<§.§%#w§;
   import §;$<§.§^9§;
   import §?$<§.§]#A§;
   
   public class §["+§ extends §^!z§
   {
       
      
      protected var §!#J§:§]#A§;
      
      protected var §`Q§:Vector.<String>;
      
      public function §["+§(param1:§;"n§, param2:§]#A§)
      {
         this.§`Q§ = new Vector.<String>();
         this.§!#J§ = param2;
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
               this.§`Q§.push(§;-§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§[!I§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §[!I§.§>"=§(§;-§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
         }
      }
      
      public function get §5#O§() : int
      {
         return this.§`Q§.length;
      }
      
      public function §%"_§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§`Q§.length)
         {
            return this.§`Q§[param1];
         }
         return null;
      }
      
      public function §`!1§() : String
      {
         return §;-§("damagefactors.lua","core");
      }
      
      public function §1"]§() : String
      {
         return §;-§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§%#w§) : void
      {
         var _loc3_:§^9§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§]"a§)
         {
            _loc3_ = param1.§""s§(_loc2_);
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
