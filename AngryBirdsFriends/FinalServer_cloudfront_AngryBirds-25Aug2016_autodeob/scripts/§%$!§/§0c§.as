package §%$!§
{
   import §#v§.§#!?§;
   import §#v§.§2"+§;
   import §+#m§.§%D§;
   import §+#m§.§=#S§;
   import §`#C§.§3Z§;
   
   public class §0c§ extends §2#§
   {
       
      
      protected var §#o§:§3Z§;
      
      protected var §#6§:Vector.<String>;
      
      public function §0c§(param1:§#!?§, param2:§3Z§)
      {
         this.§#6§ = new Vector.<String>();
         this.§#o§ = param2;
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
               this.§#6§.push(§+$$§(param1));
               return;
            }
         }
         super.initializeFile(param1);
      }
      
      protected function initializeLevelLuaFile(param1:String, param2:String) : void
      {
         var _loc3_:§2"+§ = null;
         if(!mLevelManager.getLevelForId(param1))
         {
            _loc3_ = §2"+§.§="H§(§+$$§(param2));
            _loc3_.name = param1;
            mLevelManager.addLevel(param1,_loc3_);
         }
      }
      
      public function get §-#g§() : int
      {
         return this.§#6§.length;
      }
      
      public function §=S§(param1:int) : String
      {
         if(param1 >= 0 && param1 < this.§#6§.length)
         {
            return this.§#6§[param1];
         }
         return null;
      }
      
      public function §^!=§() : String
      {
         return §+$$§("damagefactors.lua","core");
      }
      
      public function §3"R§() : String
      {
         return §+$$§("materials.lua","core");
      }
      
      override protected function addSpriteSheet(param1:§=#S§) : void
      {
         var _loc3_:§%D§ = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.§+$0§)
         {
            _loc3_ = param1.§!#<§(_loc2_);
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
